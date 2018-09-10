package com.InsideEdge.dao;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import com.InsideEdge.Pojo.Matches;
import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.MongoClient;


public class ExternalLiveScore {
	
	
	
	 static
     MongoClient mongo = new MongoClient( "localhost" , 27017 );  
     
     @SuppressWarnings("deprecation")
    public static DB db = mongo.getDB("Desktop");  
     
     
     /*System.out.println("Data received successfully");
	*/
	
	
	
	/* private static String readAll(Reader rd) throws IOException {
		    StringBuilder sb = new StringBuilder();
		    int cp;
		    while ((cp = rd.read()) != -1) {
		      sb.append((char) cp);
		    }
		    return sb.toString();
		  }

		  public static JSONObject readJsonFromUrl(String url) throws IOException, JSONException {
		    InputStream is = new URL(url).openStream();
		    try {
		      BufferedReader rd = new BufferedReader(new InputStreamReader(is, Charset.forName("UTF-8")));
		      String jsonText = readAll(rd);
		      JSONObject json = new JSONObject(jsonText);
		      return json;
		    } finally {
		      is.close();
		    }
		  }*/
		  
		  public static ArrayList<Matches> getAllScore() throws IOException, JSONException  {
			  ArrayList<Matches> list=new ArrayList<>();
			 
			int id,flagcodeA,flagcodeB;
			    //JSONObject json = readJsonFromUrl("https://powerful-tor-13817.herokuapp.com/live");
				  try{
			    JSONObject json1 = ExternalUrlRead.readJsonFromUrl("https://powerful-tor-13817.herokuapp.com/live");
			    //JSONObject json2= new JSONObject(json1.getJSONArray("Latest News"));
			    //System.out.println(json2.getJSONObject(0).);
				  
				  
			    //String a=json1.toString();
			    //Object obj=parser.parse(a);
			    String s=json1.toString();
				  
				  for(int i=0;i<5;i++){
				  int  f=s.indexOf("{");
				  int l=s.indexOf("}");
				  int a=s.indexOf("'Team A':");
					 int b=s.indexOf("'Score B':");
					 int c=s.indexOf("'Score A':");
					 int d=s.indexOf("'Team B':");
					  System.out.println(a+" "+b);
					
					  String teama=s.substring(a+11,b-3);
					  
					  String scoreb=s.substring(b+12,c-3);
					  
					  String scorea=s.substring(c+12, d-3);
					  
					  String teamb=s.substring(d+11, l-1);
				  
				  
				  
				 /* System.out.println(teama1+"\n"+teamb1+"\n"+scorea1+"\n"+scoreb1);*/
				  
				  String x=(s.substring(f,l+1));
				 s=s.substring(l+1, s.length());
				 System.out.println(s);
				 id=i;
		          flagcodeA=findFlagCode(teama);
		          flagcodeB=findFlagCode(teamb);
		          Matches ob=new Matches(id,scorea,scoreb,teama,teamb,flagcodeA,flagcodeB);
		          list.add(ob);
		          System.out.println(ob);
				 
				  }
			    //System.out.println(json.getString("ID"));
			      /*JSONArray jsonarray1=json1.getJSONArray("Matches");*/
			      //System.out.println(jsonarray1);
			      
			     
			         
			       /*   teama = jsonObject.getString("Team A");
			          teamb= jsonObject.getString("Team B");
			          scorea=jsonObject.getString("Score A");
			          scoreb=jsonObject.getString("Score B");
			          id=index;
			          flagcodeA=findFlagCode(teama);
			          flagcodeB=findFlagCode(teamb);
			          Matches ob=new Matches(id,scorea,scoreb,teama,teamb,flagcodeA,flagcodeB);
			          list.add(ob);
			          System.out.println(ob);*/
			          
			      
				  }
				  catch(Exception e)
			      {
					  e.printStackTrace();
			    	  System.out.println("exception caught");
			    	  System.out.println("printing past scores");
			    	 
			    	  
			    	  String contents = new String(Files.readAllBytes(Paths.get("live.json"))); 
			    	  /*System.out.println("Contents (Java 7) : " + contents);*/

			    	  JSONObject jsonObj = new JSONObject(contents);
			    	  JSONArray jsonarray1=jsonObj.getJSONArray("Matches");
			    	  
			    	  for (int index = 0, total = 5; index < total; index++) {
			              final JSONObject jsonObject = jsonarray1.getJSONObject(index);
			             
			              String teama = jsonObject.getString("Team A");
			              String teamb= jsonObject.getString("Team B");
			              String scorea=jsonObject.getString("Score A");
			              String scoreb=jsonObject.getString("Score B");
				          id=index;
				          flagcodeA=findFlagCode(teama);
				          flagcodeB=findFlagCode(teamb);
				          Matches ob=new Matches(id,scorea,scoreb,teama,teamb,flagcodeA,flagcodeB);
				          list.add(ob);
				          System.out.println(ob);
			              
			          }
		  }
return list;

}
		  public static int findFlagCode(String team){  
			  
			  try{
              
            /*  @SuppressWarnings("resource")
              MongoClient mongo = new MongoClient( "localhost" , 27017 );  
              
              @SuppressWarnings("deprecation")
              DB db = mongo.getDB("Desktop");  
              
              DBCollection table = db.getCollection("flags.CricketFlags");  
              System.out.println("Data received successfully");*/
			  DBCollection table = db.getCollection("flags.CricketFlags");  
              DBCursor cursor = table.find(new BasicDBObject("team", team));
              System.out.println((int)cursor.one().get("code"));
              return (int)cursor.one().get("code");
			  }
			  catch(Exception e)
			  {
				  return 0;
			  }
			  

 }

}
