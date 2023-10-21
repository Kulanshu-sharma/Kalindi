package dtos;

public class ReplyDTO {

	private boolean errFlag = false;
	private String errMsg;
	private String msg;
	private Object data;
	
	public boolean isErrFlag() {
		return errFlag;
	}
	public void setErrFlag(boolean errFlag) {
		this.errFlag = errFlag;
	}
	public String getErrMsg() {
		return errMsg;
	}
	public void setErrMsg(String errMsg) {
		this.errMsg = errMsg;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public Object getData() {
		return data;
	}
	public void setData(Object data) {
		this.data = data;
	}
	
	
}
