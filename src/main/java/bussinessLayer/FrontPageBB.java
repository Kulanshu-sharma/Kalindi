package bussinessLayer;

import java.util.List;
import java.util.Map;

import dbConnection.DBOperations;
import dtos.*;
import jakarta.servlet.http.HttpServletRequest;

public class FrontPageBB {

	public static List<NoticeDTO> generalNotices;
	public static List<NoticeDTO> studentNotices;
	public static List<NoticeDTO> staffNotices;
	
	@SuppressWarnings("unchecked")
	public static void init(HttpServletRequest request) {
		ReplyDTO replyDTO = DBOperations.listOfNotices();
		if(!replyDTO.isErrFlag()) {
			Map<Integer,List<NoticeDTO>> dataMap = (Map<Integer, List<NoticeDTO>>) replyDTO.getData();
			generalNotices = dataMap.get(1);
			studentNotices = dataMap.get(2);
			staffNotices = dataMap.get(3);
		}
	}
}
