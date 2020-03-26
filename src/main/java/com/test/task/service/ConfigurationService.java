package com.test.task.service;

import com.test.task.model.Configuration;
import com.test.task.repository.ConfigurationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.util.ArrayList;
import java.util.List;

@Service
public class ConfigurationService {

    private ConfigurationRepository configurationRepository;

    @Autowired
    public ConfigurationService(ConfigurationRepository configurationRepository) {
        this.configurationRepository = configurationRepository;
    }

    public List<Configuration> findAll(){
        return configurationRepository.findAll();
    }
    public void addConfiguration(Configuration configuration){
        configurationRepository.save(configuration);
    }


}

