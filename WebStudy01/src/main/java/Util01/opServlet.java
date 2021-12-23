package Util01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class opServlet
 */
@WebServlet("/opServlet")
public class opServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public opServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(req,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset =utf-8"); 
		String val1 = req.getParameter("val1");
		String val2 = req.getParameter("val2");
		String oper = req.getParameter("operate");
		PrintWriter out = response.getWriter();
		int a = Integer.parseInt(val1);
		int b = Integer.parseInt(val2);
		String outstr = "<html><head><title>Operator</title></head><body>";
		outstr += "value1 :" + val1 + "<br>value2 :" + val2 + "<br>operator :" + oper + "<br>";
		if (oper.equals("+")) {
			outstr += "result :" + (a + b) + "</body></html>";
		} else if (oper.equals("-")) {
			outstr += "result :" + (a - b) + "</body></html>";
		} else if (oper.equals("*")) {
			outstr += "result :" + (a * b) + "</body></html>";
		} else if (oper.equals("/")) {
			outstr += "result :" + (a / b) + "</body></html>";
		}
		out.println(outstr);
	}

}
