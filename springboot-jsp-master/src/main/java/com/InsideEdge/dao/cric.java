package com.InsideEdge.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.InsideEdge.Pojo.odipojo;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.MongoClient;

import connectionFactory.ConnectionFactory;

public class cric {
	
	
	
	static
    MongoClient mongo = new MongoClient( "localhost" , 27017 );  
    
    @SuppressWarnings("deprecation")
   public static DB db = mongo.getDB("Desktop");  
	
	public ArrayList<odipojo> retreiveList() throws ClassNotFoundException, SQLException
    {
           ArrayList<odipojo> itemList1=new ArrayList<odipojo>();
           java.sql.Connection con=ConnectionFactory.getConnectionver1();
           String query = "SELECT * FROM odi";

          // create the java statement
          Statement st = con.createStatement();
          
          // execute the query, and get a java resultset
          ResultSet rs = st.executeQuery(query);
          
          // iterate through the java resultset
          while (rs.next())
          {
            String Country = rs.getString("Country");
            String M= rs.getString("M");
            String Won = rs.getString("Won");
            String Lost=rs.getString("Lost");
            String Tied=rs.getString("Tied");
            String NR=rs.getString("NR");
            
           itemList1.add(new odipojo(Country,M,Won,Lost,Tied,NR));
            // print the results
            System.out.printf("%s, %s, %s,%s,%s,%s\n", Country,M,Won,Lost,Tied,NR);
          }
          st.close();
           return itemList1;
    }


	public  ArrayList<odipojo> retreiveList1(){  
		  
		 ArrayList<odipojo> list=new ArrayList<odipojo>();
        
        @SuppressWarnings("resource")
        MongoClient mongo = new MongoClient( "localhost" , 27017 );  
        
        @SuppressWarnings("deprecation")
        DB db = mongo.getDB("Desktop");  
        
       /* DBCollection table = db.getCollection("flags.CricketFlags");  
        System.out.println("Data received successfully")*/
		 DBCollection table1 = db.getCollection("odiTeams");  
        DBCursor cursor = table1.find();
        while (cursor.hasNext()) {
        	
        	
        	//list.add(new odipojo((String)cursor.one().get("Country"),(String)cursor.one().get("M"),(String)cursor.one().get("Won"),(String)cursor.one().get("Lost"),(String)cursor.one().get("Tied"),(String)cursor.one().get("NR")));
        	String a=(String) cursor.next().get("Country");
        	System.out.println(a);
        	
        	   
        }
        
        System.out.println(list);

return list;
	
	}
	
	/*public ArrayList<playerpojo> retreiveList1() throws ClassNotFoundException, SQLException
{
       ArrayList<playerpojo> itemList2=new ArrayList<playerpojo>();
       java.sql.Connection con1=ConnectionFactory.getConnectionver2();
       String query = "SELECT * FROM player";

      // create the java statement
      Statement st2 = con1.createStatement();
      
      // execute the query, and get a java resultset
      ResultSet rs2 = st2.executeQuery(query);
      
      // iterate through the java resultset
      while (rs2.next())
      {
       
        String Players= rs2.getString("Players");
        String Runs = rs2.getString("Runs");
        String M=rs2.getString("M");
        String Inns=rs2.getString("Inns");
        String NO=rs2.getString("NO");
        String Highest=rs2.getString("Highest");
        
        String Hundreds=rs2.getString("Hundreds");
        String Fifties=rs2.getString("Fifties");
        
       itemList2.add(new playerpojo(Players,Runs,M,Inns,NO,Highest,Hundreds,Fifties));
        // print the results
        System.out.printf("%s, %s, %s,%s,%s,%s,%s,%s\n", Players,Runs,M,Inns,NO,Highest,Hundreds,Fifties);
      }
      st2.close();
       return itemList2;
}
public ArrayList<teampojo> retreiveList3() throws ClassNotFoundException, SQLException
{
       ArrayList<teampojo> itemList3=new ArrayList<teampojo>();
       java.sql.Connection con2=ConnectionFactory.getConnectionver3();
       String query = "SELECT * FROM oditeam";

      // create the java statement
      Statement st1 = con2.createStatement();
      
      // execute the query, and get a java resultset
      ResultSet rs1 = st1.executeQuery(query);
      
      // iterate through the java resultset
      while (rs1.next())
      {
       
        String Scores= rs1.getString("Scores");
        String Overs = rs1.getString("Overs");
        String Teams=rs1.getString("Teams");
        String Stadium=rs1.getString("Stadium");
        String Year=rs1.getString("Year");
        
        
       itemList3.add(new teampojo( Scores,Overs,Teams,Stadium,Year));
        // print the results
        System.out.printf("%s, %s, %s,%s,%s\n",Scores,Overs,Teams,Stadium,Year );
      }
      st1.close();
       return itemList3;
}*/

}

