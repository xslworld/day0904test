package com.lening.service.impl;

import com.lening.mapper.PlayerMapper;
import com.lening.entity.Player;
import com.lening.service.PlayerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PlayerServiceImpl implements PlayerService {
    @Autowired
    private PlayerMapper playerMapper;

    @Override
    public List<Player> findAll() {
       List<Player> list =  playerMapper.findAll();
        return list;
    }

    @Override
    public List<Player> findName(String name) {

        return playerMapper.findName(name);
    }

    @Override
    public Player findById(Long pid) {
        Player player1 = playerMapper.findById(pid);
        return player1;
    }

    @Override
    public void addP(Player player) {
     playerMapper.addP(player);
    }

    @Override
    public void deleteP(Long[] ids) {
     if (ids!=null&&ids.length>=1)
      for (long pid:ids)
     playerMapper.delP(pid);
    }


}
