package com.lening.controller;


import com.lening.entity.Player;
import com.lening.service.PlayerService;
import com.lening.utils.ResultVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@Controller
@RequestMapping("/player")
public class PlayerController {
    @Autowired
    private PlayerService playerService;

    @RequestMapping("/findAll")
    @ResponseBody
    public Object findAll() {
        List<Player> list = playerService.findAll();
        return list;
    }

    public List<Player> getname (String name){
        List<Player> list = playerService.findName(name);
        return list;
    }

    @RequestMapping("/addP")
    @ResponseBody
    public ResultVo addP(@RequestBody Player player) {
        if (getname(player.getName()).size()==0) {
            try {

                playerService.addP(player);

                return new ResultVo(true, "添加成功");




            } catch (Exception e) {
                e.printStackTrace();
                return new ResultVo(false, "添加失败");
            }
        }else{
            return new ResultVo(false,"用户名重复");
        }

        }



  @RequestMapping("/delP")
    @ResponseBody
    public ResultVo delP(@RequestBody Long[] ids){
        try {


               playerService.deleteP(ids);


            return  new ResultVo(true,"添加页面");
        }catch (Exception e){
            e.printStackTrace();
            return  new ResultVo(false,"删除失败");
        }
  }

  @RequestMapping("findById")
  @ResponseBody

  public  Player findById(Long pid){

        Player player =  playerService.findById(pid);
        return player;
  }

}
