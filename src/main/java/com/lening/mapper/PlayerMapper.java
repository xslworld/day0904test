package com.lening.mapper;

import com.lening.entity.Player;
import com.lening.utils.ResultVo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface PlayerMapper {
    List<Player> findAll();

    List<Player> findName(@Param("name") String name);

    Player findById(@Param("pid") Long pid);

    void addP(Player player);

    void  delP(@Param("pid") Long pid);
}
