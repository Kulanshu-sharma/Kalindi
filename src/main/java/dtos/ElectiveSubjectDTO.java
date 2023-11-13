package dtos;

public class ElectiveSubjectDTO {

	public int ge;
	public String geStr;
	public int vac;
	public String vacStr;
	public int aec;
	public String aecStr;
	public int sec;
	public String secStr;
	public int dsc;
	public String dscStr;
	public String userId;
	
	public ElectiveSubjectDTO() {
		// TODO Auto-generated constructor stub
	}
	
	public ElectiveSubjectDTO(String userId,int ge,int vac,int aec, int sec, int dsc){
		this.userId = userId;
		this.ge = ge;
		this.aec = aec;
		this.sec = sec;
		this.vac = vac;
	}
	
	public int getGe() {
		return ge;
	}
	public void setGe(int ge) {
		this.ge = ge;
	}
	public String getGeStr() {
		return geStr;
	}
	public void setGeStr(String geStr) {
		this.geStr = geStr;
	}
	public int getVac() {
		return vac;
	}
	public void setVac(int vac) {
		this.vac = vac;
	}
	public String getVacStr() {
		return vacStr;
	}
	public void setVacStr(String vacStr) {
		this.vacStr = vacStr;
	}
	public int getAec() {
		return aec;
	}
	public void setAec(int aec) {
		this.aec = aec;
	}
	public String getAecStr() {
		return aecStr;
	}
	public void setAecStr(String aecStr) {
		this.aecStr = aecStr;
	}
	public int getSec() {
		return sec;
	}
	public void setSec(int sec) {
		this.sec = sec;
	}
	public String getSecStr() {
		return secStr;
	}
	public void setSecStr(String secStr) {
		this.secStr = secStr;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public int getDsc() {
		return dsc;
	}
	public void setDsc(int dsc) {
		this.dsc = dsc;
	}
	public String getDscStr() {
		return dscStr;
	}
	public void setDscStr(String dscStr) {
		this.dscStr = dscStr;
	}	
	
	
}
