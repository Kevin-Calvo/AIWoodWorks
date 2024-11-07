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

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.AIWoodWorks.backend.thirdpartyservices.StableDiffusionService;

@RestController
@RequestMapping("/api/imagenes")
public class DesignController {

    @Autowired
    private StableDiffusionService stableDiffusionService;

    @PostMapping("/generate")
    public String generateImage(@RequestBody String prompt) {
        return stableDiffusionService.generateImage(prompt);
    }
}
