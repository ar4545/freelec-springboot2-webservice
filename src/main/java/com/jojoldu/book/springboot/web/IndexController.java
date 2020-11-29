package com.jojoldu.book.springboot.web;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.jojoldu.book.springboot.service.posts.PostsService;
import com.jojoldu.book.springboot.web.dto.PostsResponseDto;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RequiredArgsConstructor
@Controller
public class IndexController {
    private final PostsService postsService;

    @GetMapping("/")
    public String index(Model model) {
        model.addAttribute("post11", postsService.findAllDesc());
        /*
        return "index";
        */

        List<Map<String, Object>> bootList = new ArrayList();

        try {

            for(int i=0; i< 5; i++){
                Map<String, Object> reqMap = new HashMap();
                reqMap.put("id"           , "ID"			+i);
                reqMap.put("title"        , "this is Title"	+i);
                reqMap.put("author"       , "author"		+i);
                reqMap.put("modifiedDate" , "20201010"		+i);

                bootList.add(reqMap);
            }

            ObjectMapper objectMapper = new ObjectMapper();
            String ttt = objectMapper.writeValueAsString(bootList);

            model.addAttribute("post", ttt);

        } catch (Exception e){
            System.out.println(e.getMessage());

        }
        return "index";
    }

    @GetMapping("/posts/save")
    public String PostsSave(){
        return "posts-save";
    }

    @GetMapping("/posts/update/{id}")
    public String PostsUpdate(@PathVariable Long id, Model model){
        PostsResponseDto dto = postsService.findById(id);
        model.addAttribute("post", dto);
        System.out.println("############# : " + dto.getContent());
        return "posts-update";
    }

}