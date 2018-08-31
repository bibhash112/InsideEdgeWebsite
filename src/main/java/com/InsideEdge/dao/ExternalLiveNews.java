package com.InsideEdge.dao;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import com.InsideEdge.Pojo.Matches;
import com.InsideEdge.Pojo.News;

public class ExternalLiveNews {
	
	 public static ArrayList<News> getAllNews() throws IOException, JSONException  {
		  ArrayList<News> list=new ArrayList();
		  String title;
		int id;
		    //JSONObject json = readJsonFromUrl("https://powerful-tor-13817.herokuapp.com/live");
			  try{
		    JSONObject json1 = ExternalUrlRead.readJsonFromUrl("https://powerful-tor-13817.herokuapp.com/news");
		    //JSONObject json2= new JSONObject(json1.getJSONArray("Latest News"));
		    //System.out.println(json2.getJSONObject(0).);
			  
			  
		    //String a=json1.toString();
		    //Object obj=parser.parse(a);
		    
		    //System.out.println(json.getString("ID"));
		      JSONArray jsonarray1=json1.getJSONArray("Latest News");
		      //System.out.println(jsonarray1);
		      
		      for (int index = 0, total = 5; index < total; index++) {
		          final JSONObject jsonObject = jsonarray1.getJSONObject(index);
		         
		          
		          title=jsonObject.getString("Title");
		          id=index;
		          
		          News ob=new News(id,title);
		          list.add(ob);
		          System.out.println(ob);
		          
		      }
		      News flag=new News(-1000,"Live Data Received");
		      list.add(flag);
			  }
			  catch(Exception e)
		      {
		    	  System.out.println("exception caught");
		    	  System.out.println("printing past news");
		    	 
		    	  
		    	  String contents = new String(Files.readAllBytes(Paths.get("news.json"))); 
		    	  /*System.out.println("Contents (Java 7) : " + contents);*/

		    	  JSONObject jsonObj = new JSONObject(contents);
		    	  JSONArray jsonarray1=jsonObj.getJSONArray("Latest News");
		    	  String name1,name2;
		    	  for (int index = 0, total = 5; index < total; index++) {
		              final JSONObject jsonObject = jsonarray1.getJSONObject(index);
		             
		              title=jsonObject.getString("Title");
			          id=index;
			          
			          News ob=new News(id,title);
			          list.add(ob);
			          System.out.println(ob);
		              
		          }
		    	  News flag=new News(-999,"Failed to Connect Showing Past News, try Refreshing the Page or Restating the Server");
			      list.add(flag);
	  }
return list;

}

}
