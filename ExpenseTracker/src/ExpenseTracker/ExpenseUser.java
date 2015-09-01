package ExpenseTracker;

import java.util.Date;
import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;

public class ExpenseUser {
	public String userName, passWord, eMail;
	public String mobNumber;
	public String createdOn;
	
	public boolean compareUser(String name, String pswd)
	{
		if((this.userName.contains(name)) && (this.passWord.contains(pswd)))
		{
			return true;
		}
		return false;		
	}

//	@Override
//	public String toString() {
//		return "ExpenseUser [userName=" + userName + "]";
//	}
	
	@Override
	public String toString() {
		return "ExpenseUser [userName=" + userName + ", passWord=" + passWord
				+ ", eMail=" + eMail + ", mobNumber=" + mobNumber
				+ ", createdOn=" + createdOn + "]";
	}
	
	
	public void createUserfromRequest(HttpServletRequest request)
	{
		this.userName = request.getParameter("user");
		this.passWord = request.getParameter("password");
		this.eMail = request.getParameter("email");
		this.mobNumber = request.getParameter("mobno");
		this.createdOn = new SimpleDateFormat("dd-MM-yyyy").format(new Date());
	}


	
	
	
	

}
