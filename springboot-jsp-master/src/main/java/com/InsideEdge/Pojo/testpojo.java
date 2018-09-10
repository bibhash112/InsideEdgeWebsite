package com.InsideEdge.Pojo;


public class testpojo{
   

int test_id;
String Country;
String  Tests;
String  Won;
String  Lost;
String  Drawn;
String  Tied;




public testpojo(String country, String tests, String won, String lost, String drawn, String tied) {
	super();
	Country = country;
	Tests = tests;
	Won = won;
	Lost = lost;
	Drawn = drawn;
	Tied = tied;
}




public testpojo(int test_id, String country, String tests, String won, String lost, String drawn, String tied) {

	this.test_id = test_id;
	Country = country;
	Tests = tests;
	Won = won;
	Lost = lost;
	Drawn = drawn;
	Tied = tied;
}




public int getTest_id() {
	return test_id;
}




public void setTest_id(int test_id) {
	this.test_id = test_id;
}




public String getCountry() {
	return Country;
}




public void setCountry(String country) {
	Country = country;
}




public String getTests() {
	return Tests;
}




public void setTests(String tests) {
	Tests = tests;
}




public String getWon() {
	return Won;
}




public void setWon(String won) {
	Won = won;
}




public String getLost() {
	return Lost;
}




public void setLost(String lost) {
	Lost = lost;
}




public String getDrawn() {
	return Drawn;
}




public void setDrawn(String drawn) {
	Drawn = drawn;
}




public String getTied() {
	return Tied;
}




public void setTied(String tied) {
	Tied = tied;
}




@Override
public String toString() {
	return "odipojo [test_id=" + test_id + ", Country=" + Country + ", Tests=" + Tests + ", Won=" + Won + ", Lost="
			+ Lost + ", Drawn=" + Drawn + ", Tied=" + Tied + "]";
}




public testpojo() {
}
}



