

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.BodyPart;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.Multipart;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMultipart;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.activation.DataHandler;
import java.util.Date;
import java.util.Properties;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class for Servlet: sendMail
 *
 */
 public class sendMail extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
   static final long serialVersionUID = 1L;
   Connection con;
   Statement st;
   private static final String SMTP_HOST_NAME = "smtp.gmail.com";
	private static final int SMTP_HOST_PORT =465;
	private static final String SMTP_AUTH_USER = "codepassionkmit";
	private static final String SMTP_AUTH_PWD = "kmitkmitkmit";

   
    /* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#HttpServlet()
	 */
	public sendMail() {
		super();
	} 
	
	/* (non-Javadoc)
	 * @see javax.servlet.Servlet#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
		super.destroy();
	}   	 	
	
	/* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
   
		try
		{	Person p= (Person) getServletContext().getAttribute("p");
		
			String empid=request.getParameter("empid");
			String status=request.getParameter("status");
			
			
			String[] details= p.getDetails(empid).split(",");
			
			String[] email={details[4],"tgmc.2011.kmit@gmail.com"};
			if(status.equals("g"))
			{

				postMail(email,"Assessment Report","Your performance has been very good. You've got a good feedback from your Supervisors. We're pleased to inform you that you'll be recieving a pay hike in the near future."+"\n With Regards ,\n HR Department","codepassionkmit@gmail.com");
			}
			else if(status.equals("b"))
			{
				postMail(email,"Assessment Report","Your performance has been below expectations. Kindly make sure that there is an improvement in your performance. Sorry to inform you, but according to company rules there will be a reduction in your pay."+"\n With Regards ,\n HR Department","codepassionkmit@gmail.com");
			}
response.setContentType("text/xml");
			
			response.getWriter().write("done,"+empid);
			
			response.getWriter().close();

	} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}   	  	  
	
	/* (non-Javadoc)
	 * @see javax.servlet.GenericServlet#init()
	 */
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		
		super.init();

		  try {
			  
			//init junk placed here
		  } catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	} 
	public void postMail(String recipients[], String subject, String message1,String from) throws MessagingException {
		Properties props = new Properties();
		props.put("mail.transport.protocol", "smtps");
		props.put("mail.smtps.host", SMTP_HOST_NAME);
		props.put("mail.smtps.auth", "true");
		props.put("mail.smtps.quitwait", "false");
		Session mailSession = Session.getDefaultInstance(props);		
		// mailSession.setDebug(true);
		Transport transport = mailSession.getTransport();

		MimeMessage message = new MimeMessage(mailSession);
		message.setSubject(subject);
		message.setContent(message1, "text/plain");
		//message.addFrom(new InternetAddress[]{new InternetAddress(from)});
		// message.addRecipient(Message.RecipientType.TO, new
		// InternetAddress());
		InternetAddress[] addressTo = new InternetAddress[recipients.length];
		for (int i = 0; i < recipients.length; i++) {
			addressTo[i] = new InternetAddress(recipients[i]);
		}
		message.setRecipients(Message.RecipientType.TO, addressTo);
		message.setSentDate(new Date());
		transport.connect(SMTP_HOST_NAME, SMTP_HOST_PORT, SMTP_AUTH_USER,SMTP_AUTH_PWD);
		
		message.saveChanges();
		 transport.sendMessage(message, addressTo);
		 System.out.println("Mail sent successfully");
		 
		//transport.close();	
		//rd=request.getRequestDispatcher("/Student.jsp");
		//rd.forward(request,response);
			
	}
 
}