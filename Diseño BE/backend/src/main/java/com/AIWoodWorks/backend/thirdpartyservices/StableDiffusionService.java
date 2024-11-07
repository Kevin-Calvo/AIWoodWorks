package com.AIWoodWorks.backend.thirdpartyservices;

import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.concurrent.atomic.AtomicInteger;

import org.springframework.core.io.Resource;
import org.springframework.core.io.UrlResource;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.server.ResponseStatusException;

@Service
public class StableDiffusionService {

    private static final String API_KEY = "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";
    private final String apiUrl = "https://api-inference.huggingface.co/models/stabilityai/stable-diffusion-2";
    private final RestTemplate restTemplate;

    // Atomic counter to safely increment the image count in a multithreaded environment
    private static final AtomicInteger imageCounter = new AtomicInteger(1);

    public StableDiffusionService() {
        this.restTemplate = new RestTemplate();
    }

    public String generateImage(String prompt) {
        try {
            HttpHeaders headers = new HttpHeaders();
            headers.set("Authorization", "Bearer " + API_KEY);
            headers.set("Content-Type", "application/json");

            String requestBody = String.format("{\"inputs\":\"%s\"}", prompt);
            HttpEntity<String> entity = new HttpEntity<>(requestBody, headers);

            // Make the request and receive the response as a byte array
            ResponseEntity<byte[]> response = restTemplate.exchange(apiUrl, HttpMethod.POST, entity, byte[].class);

            // Check if the response was successful
            if (response.getStatusCode().is2xxSuccessful() && response.getBody() != null) {
                byte[] imageBytes = response.getBody();

                // Increment the counter and create a unique file path
                int currentCount = imageCounter.getAndIncrement();
                String imagePath = String.format("/app/designs/generated_image_%d.png", currentCount);

                // Ensure the directory exists
                Path directoryPath = Paths.get(imagePath).getParent();
                if (Files.notExists(directoryPath)) {
                    Files.createDirectories(directoryPath); // Create directories if they don't exist
                }

                // Save the image bytes to a PNG file
                try (FileOutputStream fos = new FileOutputStream(imagePath)) {
                    fos.write(imageBytes);
                }

                // Confirm the file path
                return "Image generated and saved at: " + imagePath;
            } else {
                System.err.println("Error from Hugging Face API: " + response.getStatusCode());
                return "Error " + response.getStatusCode() + ": Unable to generate image.";
            }
        } catch (IOException e) {
            e.printStackTrace();
            return "Error saving the image file: " + e.getMessage();
        } catch (Exception e) {
            e.printStackTrace();
            return "Unexpected error: " + e.getMessage();
        }
    }

    public Resource getImage(String imageName) {
        try {
            Path imagePath = Paths.get("/app/designs/" + imageName);
            if (!Files.exists(imagePath)) {
                throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Image not found");
            }
            return new UrlResource(imagePath.toUri());
        } catch (IOException e) {
            throw new ResponseStatusException(HttpStatus.INTERNAL_SERVER_ERROR, "Error retrieving image", e);
        }
    }
}
