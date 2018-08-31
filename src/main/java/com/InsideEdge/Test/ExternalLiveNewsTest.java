package com.InsideEdge.Test;

import static org.junit.Assert.*;

import java.io.IOException;

import org.json.JSONException;
import org.junit.Test;

import com.InsideEdge.Pojo.News;
import com.InsideEdge.dao.ExternalLiveNews;

public class ExternalLiveNewsTest {
	
	
    @Test
    public void getAllNewsTest() throws IOException, JSONException
    {
           String news,actualnews;
           news="\n Asia Cup: Kohli's Workload In Focus As Selectors Eye A Balanced Side \n";
           News abc=ExternalLiveNews.getAllNews().get(0);
        actualnews=abc.getTitle();
           assertEquals(news, actualnews);
    }


}
