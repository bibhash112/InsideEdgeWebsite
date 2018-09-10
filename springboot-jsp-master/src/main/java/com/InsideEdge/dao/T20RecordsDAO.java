package com.InsideEdge.dao;

import java.util.ArrayList;

import com.InsideEdge.Pojo.T20TeamRecords;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.MongoClient;

public class T20RecordsDAO {
public ArrayList<T20TeamRecords> getT20Records() {
		
		
		@SuppressWarnings("resource")
		MongoClient mongo = new MongoClient( "localhost" , 27017 );  
		
		@SuppressWarnings("deprecation")
		DB db = mongo.getDB("Desktop");  
		ArrayList<T20TeamRecords> t20Records=new ArrayList<>();
		DBCollection table = db.getCollection("t20data");  
		System.out.println("Data received successfully");
		DBCursor cursor = table.find();
		while(cursor.hasNext()) {
			cursor.next();
			String teams=(String) cursor.curr().get("Teams");
			String matches=(String) cursor.curr().get("Matches");
			String won=(String) cursor.curr().get("Won");
			String lost=(String) cursor.curr().get("Lost");
			String noResult=(String) cursor.curr().get("NR");
			String percentage=(String) cursor.curr().get("PercentageWon");
			
			t20Records.add(new T20TeamRecords(teams, matches, won, lost, noResult, percentage, ExternalLiveScore.findFlagCode(teams)));
}
		return t20Records;

	}

}
