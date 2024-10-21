/*package com.AIWoodWorks.backend.service;

import com.AIWoodWorks.backend.model.Design;
import com.AIWoodWorks.backend.repository.DesignRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class DesignService {

    @Autowired
    private DesignRepository designRepository;

    // Método para guardar un diseño 
    public Design saveDesign(Design design) {
        return designRepository.save(design);
    }

    // Método para obtener un diseño por su ID
    public Optional<Design> getDesignById(String id) {
        return designRepository.findById(id);
    }

    // Método para obtener todos los diseños
    public Iterable<Design> getAllDesigns() {
        return designRepository.findAll();
    }
}
*/