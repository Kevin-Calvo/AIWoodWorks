package com.AIWoodWorks.backend.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import com.AIWoodWorks.backend.service.DesignService;
import com.AIWoodWorks.backend.model.Design;

@RestController
@RequestMapping("/designs")
public class DesignController {

    private final DesignService designService;

    public DesignController(DesignService designService) {
        this.designService = designService;
    }

    @PostMapping
    public ResponseEntity<String> createDesign(@RequestBody Design design) {
        designService.createDesign(design);
        return new ResponseEntity<>("Design created successfully", HttpStatus.CREATED);
    }

    @GetMapping("/{designId}")
    public ResponseEntity<Design> getDesignById(@PathVariable Long designId) {
        Design design = designService.getDesignById(designId);
        if (design != null) {
            return new ResponseEntity<>(design, HttpStatus.OK);
        }
        return new ResponseEntity<>(HttpStatus.NOT_FOUND);
    }
}
