package com.lening.service;

import com.lening.entity.Player;

import java.util.List;

public interface PlayerService {
    List<Player> findAll();

    List<Player> findName(String name);

    Player findById(Long pid);

    void addP(Player player);

    void  deleteP(Long[] ids);

}
