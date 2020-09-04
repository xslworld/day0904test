package com.lening.controller;


import com.lening.entity.School;
import com.lening.service.SchoolService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/school")
public class SchoolController {
    @Autowired
    private SchoolService schoolService;

    @RequestMapping("/getS")
    public  Object getS(){
        List<School> list = schoolService.getS();
        return list;
    }
}
