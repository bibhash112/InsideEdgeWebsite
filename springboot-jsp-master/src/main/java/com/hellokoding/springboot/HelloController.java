package com.hellokoding.springboot;

import java.io.IOException;
import java.sql.SQLException;

import org.json.JSONException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.InsideEdge.dao.*;


@Controller
public class HelloController {
    @RequestMapping(value="/home",method = RequestMethod.GET)
    public ModelAndView hello() throws IOException, JSONException {
    	ExternalLiveNews dao=new ExternalLiveNews();
        ModelAndView model = new ModelAndView();
        model.addObject("news", dao.getAllNews());
        
        ExternalLiveScore dao1=new ExternalLiveScore();
       
        /*model.addObject("users", dao1.getAllScore());*/
        
        model.setViewName("indexsample");
        return model;
        //return "hello";
    }
    
 @RequestMapping(value = "/show", method = RequestMethod.GET)
    public ModelAndView adminPage() throws IOException, JSONException {
    	ExternalLiveScore dao1=new ExternalLiveScore();
        ModelAndView model1 = new ModelAndView();
        model1.addObject("users", dao1.getAllScore());
        model1.setViewName("sample");
        return model1;

    }
    
 
 @RequestMapping(value = "/live", method = RequestMethod.GET)
 public ModelAndView homePage() throws IOException, JSONException {
 	ExternalLiveScore dao1=new ExternalLiveScore();
   
     //model1.addObject("users", dao1.getAllScore());*/
	 
	 ModelAndView model1 = new ModelAndView();
	 model1.addObject("teamScore", dao1.getAllScore());
	 
     model1.setViewName("LiveScoreSample");
    
     return model1;

 }
 
 
 @RequestMapping(value = "/odi", method = RequestMethod.GET)
 public ModelAndView odiPage() throws IOException, JSONException, ClassNotFoundException, SQLException {
	 cric dao1=new cric();
     ModelAndView model1 = new ModelAndView();
     model1.addObject("odi", dao1.retreiveList());
     model1.setViewName("SampleOdiPage");
     return model1;

 }
 
 
 
 
 
 
 
   /* @RequestMapping(value = "/show/TestNews", method = RequestMethod.GET)
   /public ModelAndView newsView() throws IOException, JSONException {
    	ExternalLiveNews dao=new ExternalLiveNews();
        ModelAndView model = new ModelAndView();
        model.addObject("news", dao.getAllNews());
        model.setViewName("hello");
        return model;

    }*/
    
}
