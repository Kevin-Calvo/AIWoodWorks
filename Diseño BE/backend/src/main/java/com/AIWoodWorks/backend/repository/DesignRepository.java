package com.AIWoodWorks.backend.repository;

import com.AIWoodWorks.backend.model.Design;
import com.azure.spring.data.cosmos.repository.CosmosRepository;
import org.springframework.stereotype.Repository;

// Este repositorio manejará las operaciones de la base de datos Cosmos DB para la entidad Design
@Repository
public interface DesignRepository extends CosmosRepository<Design, String> {
    // Métodos save(), findById(), findAll() están disponibles de forma automática
}