package dtos;

public class NoticeDTO {
	
	private int noticeId;
	private String displayContent;
	private String navigateURL;
	private String postedOn;
	private int noticeType;
	
	public NoticeDTO() {
		// TODO Auto-generated constructor stub
	}
	
	public NoticeDTO(String displayContent, String navigateURL, String postedOn) {
		super();
		this.displayContent = displayContent;
		this.navigateURL = navigateURL;
		this.postedOn = postedOn;
	}

	public int getNoticeId() {
		return noticeId;
	}
	public void setNoticeId(int noticeId) {
		this.noticeId = noticeId;
	}
	public String getDisplayContent() {
		return displayContent;
	}
	public void setDisplayContent(String displayContent) {
		this.displayContent = displayContent;
	}
	public String getNavigateURL() {
		return navigateURL;
	}
	public void setNavigateURL(String navigateURL) {
		this.navigateURL = navigateURL;
	}
	public String getPostedOn() {
		return postedOn;
	}
	public void setPostedOn(String postedOn) {
		this.postedOn = postedOn;
	}
	public int getNoticeType() {
		return noticeType;
	}
	public void setNoticeType(int noticeType) {
		this.noticeType = noticeType;
	}
	
	

}
