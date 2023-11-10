package bussinessLayer;

import java.util.List;

import dbConnection.DBOperations;
import dtos.ReplyDTO;
import dtos.TertiaryDTO;
import jakarta.servlet.http.HttpServletRequest;

public class FillSubjectChoicesBB {
	
	public static List<TertiaryDTO> subjectsList;
	
	@SuppressWarnings("unchecked")
	public static void init(HttpServletRequest request) {
		ReplyDTO replyDTO = DBOperations.listOfElectives();
		if(!replyDTO.isErrFlag()) {
			subjectsList = (List<TertiaryDTO>)replyDTO.getData();
		}
	}

}
