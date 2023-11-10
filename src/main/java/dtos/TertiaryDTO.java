package dtos;

public class TertiaryDTO {

	public int key;
	public String value;
	public Object extra;
	
	public TertiaryDTO() {
		// TODO Auto-generated constructor stub
	}
	
	public TertiaryDTO(int key, String value, Object extra) {
		super();
		this.key = key;
		this.value = value;
		this.extra = extra;
	}
	
	public int getKey() {
		return key;
	}
	public void setKey(int key) {
		this.key = key;
	}
	public String getValue() {
		return value;
	}
	public void setValue(String value) {
		this.value = value;
	}
	public Object getExtra() {
		return extra;
	}
	public void setExtra(Object extra) {
		this.extra = extra;
	}
	
	
}
