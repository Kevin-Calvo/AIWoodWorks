package com.AIWoodWorks.backend.service;

import org.springframework.stereotype.Service;
import com.AIWoodWorks.backend.model.Design;
import com.AIWoodWorks.backend.repository.DesignRepository;

@Service
public class DesignService {

    private final DesignRepository designRepository;

    public DesignService(DesignRepository designRepository) {
        this.designRepository = designRepository;
    }

    public void createDesign(Design design) {
        designRepository.save(design);
    }

    public Design getDesignById(Long designId) {
        return designRepository.findById(designId);
    }
}
