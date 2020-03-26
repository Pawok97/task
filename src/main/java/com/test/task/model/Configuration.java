package com.test.task.model;

import javax.persistence.*;
import java.util.List;

@Entity
@Table
public class Configuration {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    private Long id;
    private String labelField;
    @Enumerated(EnumType.STRING)
    private TypeField typeField;
    private String style;
    private String directory;

    public Configuration() {
    }

    public Configuration(String labelField, TypeField typeField, String style, String directory) {
        this.labelField = labelField;
        this.typeField = typeField;
        this.style = style;
        this. directory = directory;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getLabelField() {
        return labelField;
    }

    public void setLabelField(String labelField) {
        this.labelField = labelField;
    }

    public TypeField getTypeField() {
        return typeField;
    }

    public void setTypeField(TypeField typeField) {
        this.typeField = typeField;
    }

    public String getStyle() {
        return style;
    }

    public void setStyle(String style) {
        this.style = style;
    }

    public String getDirectory() {
        return directory;
    }

    public void setDirectory(String directory) {
        this.directory = directory;
    }
}
