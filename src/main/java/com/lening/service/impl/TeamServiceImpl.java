package com.lening.service.impl;

import com.lening.mapper.TeamMapper;
import com.lening.entity.Team;
import com.lening.service.TeamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TeamServiceImpl implements TeamService {

    @Autowired
     private TeamMapper teamMapper;

    @Override
    public List<Team> getT() {
        List<Team> list = teamMapper.getT();
        return list;
    }
}
