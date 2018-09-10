package com.InsideEdge.Pojo;



public class odipojo{
 

int final_id;
String Country;
String  M;
String  Won;
String  Lost;
String  Tied;
String  NR;


@Override
public String toString() {
	return "odipojo [final_id=" + final_id + ", Country=" + Country + ", M="
			+ M + ", Won=" + Won + ", Lost=" + Lost + ", Tied=" + Tied
			+ ", NR=" + NR + "]";
}


public odipojo(String country, String m, String won, String lost, String tied,
		String nR) {
	super();
	Country = country;
	M = m;
	Won = won;
	Lost = lost;
	Tied = tied;
	NR = nR;
}


public int getFinal_id() {
	return final_id;
}


public void setFinal_id(int final_id) {
	this.final_id = final_id;
}


public String getCountry() {
	return Country;
}


public void setCountry(String country) {
	Country = country;
}


public String getM() {
	return M;
}


public void setM(String m) {
	M = m;
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


public String getTied() {
	return Tied;
}


public void setTied(String tied) {
	Tied = tied;
}


public String getNR() {
	return NR;
}


public void setNR(String nR) {
	NR = nR;
}


public odipojo() {
}
}



