package bussinessLayer;

import dbConnection.DBOperations;
import dtos.ParamDTO;
import dtos.ReplyDTO;
import dtos.SignupDTO;

public class Signup {

	
	public static ReplyDTO registration(SignupDTO signupDTO) {
		ParamDTO paramDTO = new ParamDTO();
		paramDTO.setData(signupDTO);
		ReplyDTO replyDTO = DBOperations.studentRegistration(paramDTO);
		return replyDTO;
	}
}
