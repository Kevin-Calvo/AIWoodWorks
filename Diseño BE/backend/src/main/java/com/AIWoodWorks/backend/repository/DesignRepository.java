package com.AIWoodWorks.backend.repository;

import org.springframework.stereotype.Repository;

import com.AIWoodWorks.backend.model.Design;
import com.azure.spring.data.cosmos.repository.CosmosRepository;

// Este repositorio manejará las operaciones de la base de datos Cosmos DB para la entidad Design
@Repository
public interface DesignRepository extends CosmosRepository<Design, String> {
    // public void save(Design design) {}

    // public Usuario findById(int designId) {}
}