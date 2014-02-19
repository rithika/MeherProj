

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

 public class Performance extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
   static final long serialVersionUID = 1L;
   
    
	public Performance() {
		super();
	}   	 	
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HR p=(HR) getServletContext().getAttribute("hr");
		HttpSession hs= request.getSession();
		String emps_perform="a";
		HashMap<String,Object> result_emps = new HashMap<String,Object>();
		int dept=1;
		while(dept<6){
			
		for(int i=1; i<=5; i++)
		{
			if(p.checkStatus("kmitd"+dept+"_e"+i, "DPART"+dept, 1) && p.checkStatus("kmitd"+dept+"_e"+i, "DPART"+dept, 2) && p.checkStatus("kmitd"+dept+"_e"+i, "DPART"+dept, 3)){
				emps_perform=emps_perform.concat(","+"kmitd"+dept+"_e"+i);
				result_emps.put("kmitd"+dept+"_e"+i, p.Par("kmitd"+dept+"_e"+i));
			}
		
		}
		hs.setAttribute("result_emplyees"+dept, result_emps);
		dept++;
		}
		
		//hs.setAttribute("emplyees_perform", emps_perform);
		
		request.getRequestDispatcher("Perform.jsp").forward(request, response);
		
		
		
	}   	  	    
}