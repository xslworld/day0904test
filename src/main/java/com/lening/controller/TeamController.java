package com.lening.controller;

import com.lening.entity.Team;
import com.lening.service.TeamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/team")
public class TeamController {

    @Autowired
    private TeamService teamService;


    @RequestMapping("/getT")
    public  Object  getT(){
        List<Team> list = teamService.getT();
        return list;
    }
}
