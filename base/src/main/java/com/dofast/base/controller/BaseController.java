package com.dofast.base.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value="/base")
public class BaseController {

    @RequestMapping("get")
    public String get(@RequestParam String id){
        return "hello,"+id+"!";
    }

}
