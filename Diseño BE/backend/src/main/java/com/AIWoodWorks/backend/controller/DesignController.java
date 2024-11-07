/*package com.AIWoodWorks.backend.controller;

import com.AIWoodWorks.backend.model.Design;
import com.AIWoodWorks.backend.service.DesignService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@RestController
@RequestMapping("/api/designs")
public class DesignController {

    @Autowired
    private DesignService designService;

    // Endpoint para guardar un diseño
    // No esta implementado

    // Endpoint para obtener un diseño por su ID
    @GetMapping("/{id}")
    public ResponseEntity<Design> getDesignById(@PathVariable String id) {
        Optional<Design> design = designService.getDesignById(id);
        return design.map(ResponseEntity::ok).orElseGet(() -> ResponseEntity.notFound().build());
    }

    // Endpoint para obtener todos los diseños
    @GetMapping
    public ResponseEntity<Iterable<Design>> getAllDesigns() {
        Iterable<Design> designs = designService.getAllDesigns();
        return ResponseEntity.ok(designs);
    }
}
*/

package com.AIWoodWorks.backend.controller;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.AIWoodWorks.backend.thirdpartyservices.StableDiffusionService;

@RestController
@RequestMapping("/api/imagenes")
@CrossOrigin(origins = "http://localhost:5173") // Permite CORS desde este origen
public class DesignController {

    @Autowired
    private StableDiffusionService stableDiffusionService;

    @PostMapping("/generate")
    public String generateImage(@RequestBody String prompt) {
        return stableDiffusionService.generateImage(prompt);
    }

    @GetMapping("/get/{imageName}")
    public ResponseEntity<Resource> getImage(@PathVariable String imageName) {
        Resource image = stableDiffusionService.getImage(imageName);
        String contentType = "application/octet-stream";
        try {
            contentType = Files.probeContentType(Paths.get(image.getURI()));
        } catch (IOException e) {
            // Log error and use default content type
        }

        return ResponseEntity.ok()
                .contentType(MediaType.parseMediaType(contentType))
                .header(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=\"" + image.getFilename() + "\"")
                .body(image);
    }
}
