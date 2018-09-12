package com.micro;

import java.util.ArrayList;

import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.MongoClient;

public class OdiDAO {
	public ArrayList<TeamRecords> getOdiRecords() {
		
		
		@SuppressWarnings("resource")
		MongoClient mongo = new MongoClient( "localhost" , 27017 );  
		
		@SuppressWarnings("deprecation")
		DB db = mongo.getDB("db");  
		ArrayList<TeamRecords> odiRecords=new ArrayList<>();
		DBCollection table = db.getCollection("odidata");  
		System.out.println("Data received successfully");
		DBCursor cursor = table.find();
		while(cursor.hasNext()) {
			cursor.next();
			String country=(String) cursor.curr().get("Country");
			String matches=(String) cursor.curr().get("M");
			String won=(String) cursor.curr().get("Won");
			String lost=(String) cursor.curr().get("Lost");
			String tied=(String) cursor.curr().get("Tied");
			String noResult=(String) cursor.curr().get("NR");
			odiRecords.add(new TeamRecords(country, matches, won, lost, tied, noResult));
}
		return odiRecords;

	}
}
