package com.test.task.Controller;

import com.test.task.model.Configuration;
import com.test.task.model.TypeField;
import com.test.task.service.ConfigurationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MainController {
    private ConfigurationService configurationService;

    @Autowired
    public MainController(ConfigurationService configurationService) {
        this.configurationService = configurationService;
    }

    @GetMapping
    public String welcome(Model model){
        model.addAttribute("array", configurationService.findAll());
        return "home";
    }
    @PostMapping
    public String welcome(@RequestParam String label,@RequestParam String select, @RequestParam String style, @RequestParam(required = false) String options){
        Configuration configuration = new Configuration(label, TypeField.valueOf(select.toUpperCase()), style, options);
        configurationService.addConfiguration(configuration);
        return "redirect:/";
    }

}
