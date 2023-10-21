package dtos;

import java.util.HashMap;
import java.util.Map;

public class ParamDTO {

	private Object data;
	private Map<String,Object> params = null;
	
	public ParamDTO() {
		super();
		params = new HashMap<String, Object>();
	}

	public Object getData() {
		return data;
	}

	public void setData(Object data) {
		this.data = data;
	}

	public Map<String, Object> getParams() {
		return params;
	}

	public void setParams(Map<String, Object> params) {
		this.params = params;
	}
	
	
	
	
}
