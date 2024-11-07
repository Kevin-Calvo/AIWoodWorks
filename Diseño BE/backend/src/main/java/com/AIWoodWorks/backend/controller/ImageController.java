package com.AIWoodWorks.backend.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.AIWoodWorks.backend.thirdpartyservices.StableDiffusionService;

@RestController
@RequestMapping("/api/images")
public class ImageController {

    @Autowired
    private StableDiffusionService stableDiffusionService;

    @PostMapping("/generate")
    public String generateImage(@RequestBody String prompt) {
        return stableDiffusionService.generateImage(prompt);
    }
}
