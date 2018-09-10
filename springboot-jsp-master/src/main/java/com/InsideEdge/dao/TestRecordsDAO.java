package com.InsideEdge.dao;

import java.util.ArrayList;

import com.InsideEdge.Pojo.TeamRecords;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.MongoClient;

public class TestRecordsDAO {
public ArrayList<TeamRecords> getTestRecords() {
		
		
		@SuppressWarnings("resource")
		MongoClient mongo = new MongoClient( "localhost" , 27017 );  
		
		@SuppressWarnings("deprecation")
		DB db = mongo.getDB("Desktop");  
		ArrayList<TeamRecords> testRecords=new ArrayList<>();
		DBCollection table = db.getCollection("testdata");  
		System.out.println("Data received successfully");
		DBCursor cursor = table.find();
		while(cursor.hasNext()) {
			cursor.next();
			String country=(String) cursor.curr().get("Country");
			String matches=(String) cursor.curr().get("Tests");
			String won=(String) cursor.curr().get("Won");
			String lost=(String) cursor.curr().get("Lost");
			String tied=(String) cursor.curr().get("Drawn");
			String noResult=(String) cursor.curr().get("Tied");
			testRecords.add(new TeamRecords(country, matches, won, lost, tied, noResult,ExternalLiveScore.findFlagCode(country)));
}
		return testRecords;

	}

}
