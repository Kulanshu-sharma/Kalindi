package bussinessLayer;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.json.JSONObject;

import dtos.Constants;

/**
 * Servlet implementation class KalindiServletKiosk
 */
public class KalindiServletKiosk extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public KalindiServletKiosk() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Great Work");
    	String s = "great work";
    	JSONObject data = new JSONObject();
    	int requestType = Integer.parseInt(request.getParameter("rqst"));
    	switch(requestType) {

    	case 1 :
    		//Testing Purpose...
    		try {
    			request.getSession().removeAttribute(Constants.USER_ID);
    			request.getSession().removeAttribute(Constants.PASSWORD);
    		} catch (Exception e) {
    			// TODO Auto-generated catch block
    			e.printStackTrace();
    		}
         break;
    	}
		// TODO Auto-generated method stub
    	response.setContentType("application/json");
    	response.setCharacterEncoding("UTF-8");
    	PrintWriter pw = response.getWriter();
    	//pw.write(s);
    	pw.write(data.toString());
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
