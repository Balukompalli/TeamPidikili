package com.jsp.tp;

import java.util.HashMap;

public class BeanPojo {

    public BeanPojo() {
        // TODO Auto-generated constructor stub
    }

    private HashMap<String, Object> prop1;
    private String prop;

    public String getProp() {
        return prop;
    }

    public void setProp(String prop) {
        this.prop = prop;
    }

    public Object getProperty(String key) {
        return this.prop1.get(key);
    }

    public void setProperty(String key, Object value) {
        this.prop1.put(key, value);
    }
}
