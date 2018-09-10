package com.InsideEdge.Pojo;

public class T20TeamRecords {
	private String teams;
	private String matches;
	private String won;
	private String lost;
	private String noResult;
	private String percentageWon;
	private int flagcode;
	public T20TeamRecords(String teams, String matches, String won, String lost, String noResult, String percentageWon,
			int flagcode) {
		//super();
		this.teams = teams;
		this.matches = matches;
		this.won = won;
		this.lost = lost;
		this.noResult = noResult;
		this.percentageWon = percentageWon;
		this.flagcode = flagcode;
	}
	public String getTeams() {
		return teams;
	}
	public void setTeams(String teams) {
		this.teams = teams;
	}
	public String getMatches() {
		return matches;
	}
	public void setMatches(String matches) {
		this.matches = matches;
	}
	public String getWon() {
		return won;
	}
	public void setWon(String won) {
		this.won = won;
	}
	public String getLost() {
		return lost;
	}
	public void setLost(String lost) {
		this.lost = lost;
	}
	public String getNoResult() {
		return noResult;
	}
	public void setNoResult(String noResult) {
		this.noResult = noResult;
	}
	public String getPercentageWon() {
		return percentageWon;
	}
	public void setPercentageWon(String percentageWon) {
		this.percentageWon = percentageWon;
	}
	public int getFlagcode() {
		return flagcode;
	}
	public void setFlagcode(int flagcode) {
		this.flagcode = flagcode;
	}
	@Override
	public String toString() {
		return "T20TeamRecords [teams=" + teams + ", matches=" + matches + ", won=" + won + ", lost=" + lost
				+ ", noResult=" + noResult + ", percentageWon=" + percentageWon + ", flagcode=" + flagcode + "]";
	}
	
	

}
