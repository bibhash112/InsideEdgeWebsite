package com.InsideEdge.Pojo;

public class TeamRecords {
	private String country;
	private String matches;
	private String won;
	private String lost;
	private String tied;
	private String noResult;
	private int flagcode;
	public TeamRecords(String country, String matches, String won, String lost,
			String tied, String noResult, int flagcode) {
		super();
		this.country = country;
		this.matches = matches;
		this.won = won;
		this.lost = lost;
		this.tied = tied;
		this.noResult = noResult;
		this.flagcode = flagcode;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
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
	public String getTied() {
		return tied;
	}
	public void setTied(String tied) {
		this.tied = tied;
	}
	public String getNoResult() {
		return noResult;
	}
	public void setNoResult(String noResult) {
		this.noResult = noResult;
	}
	public int getFlagcode() {
		return flagcode;
	}
	public void setFlagcode(int flagcode) {
		this.flagcode = flagcode;
	}
	@Override
	public String toString() {
		return "TeamRecords [country=" + country + ", matches=" + matches
				+ ", won=" + won + ", lost=" + lost + ", tied=" + tied
				+ ", noResult=" + noResult + ", flagcode=" + flagcode + "]";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
	
	/*public TeamRecords(String country, String matches, String won, String lost,String tied, String noResult) {
		//super();
		this.country = country;
		this.matches = matches;
		this.won = won;
		this.lost = lost;
		this.tied=tied;
		this.noResult = noResult;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
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

	@Override
	public String toString() {
		return "TeamRecords [country=" + country + ", matches=" + matches + ", won=" + won + ", lost=" + lost
				+ ", tied=" + tied + ", noResult=" + noResult + "]";
	}

	public String getTied() {
		return tied;
	}

	public void setTied(String tied) {
		this.tied = tied;
	}
	
	
	

}
*/