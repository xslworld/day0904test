package com.lening.entity;


import lombok.Data;

import java.io.Serializable;

@Data
public class Team implements Serializable {
    private  Integer  tid;
    private  String tname;
    private  String area;

}
