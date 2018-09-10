package com.InsideEdge.dao;

import java.util.ArrayList;

import com.InsideEdge.Pojo.TeamRecords;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.MongoClient;

public class OdiRecordsDAO {
	public ArrayList<TeamRecords> getOdiRecords() {
		
		
		@SuppressWarnings("resource")
		MongoClient mongo = new MongoClient( "localhost" , 27017 );  
		
		@SuppressWarnings("deprecation")
		DB db = mongo.getDB("Desktop");  
		ArrayList<TeamRecords> odiRecords=new ArrayList<>();
		DBCollection table = db.getCollection("odiTeams");  
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
			odiRecords.add(new TeamRecords(country, matches, won, lost, tied, noResult,ExternalLiveScore.findFlagCode(country)));
}
		return odiRecords;

	}
}
