package util03;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class secondservlet
 */
@WebServlet("/secondservlet")
public class secondservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public secondservlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String str1 = req.getParameter("num1");
		String str2 = req.getParameter("num2");
		String str3 = req.getParameter("num3");
		int a = Integer.parseInt(str1);
		int b = Integer.parseInt(str2);
		int c = Integer.parseInt(str3);
		out.println("<html><head><title>Plus</title></head><body>");
		int x1 = (int) (((-b) + Math.sqrt(Math.pow(b, 2) - (4 * a * c))) / (2 * a));
		int x2 = (int) (((-b) - Math.sqrt(Math.pow(b, 2) - (4 * a * c))) / (2 * a));
		out.println("X1 = " + x1 + "<br>" + "X2 = " + x2 + "</body></html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
