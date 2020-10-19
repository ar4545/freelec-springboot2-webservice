package com.jojoldu.book.springboot.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


public class IndexController {

    @RequestMapping(value={"/", "index"})
    public String index(){
        return "index";
    }
}
