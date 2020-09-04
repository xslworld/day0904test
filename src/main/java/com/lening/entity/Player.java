package com.lening.entity;

import lombok.Data;

import java.io.Serializable;

@Data
public class Player implements Serializable {

    private  Integer  pid;
    private  String name;
    private  String age;
    private  String birthday;
    private  Integer sid;
    private  Integer tid;
    private  String sname;
    private  String  tname;
}
