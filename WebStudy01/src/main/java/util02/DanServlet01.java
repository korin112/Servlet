package util02;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DanServlet01
 */
@WebServlet("/DanServlet01")
public class DanServlet01 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DanServlet01() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset =utf-8"); 
		String str1 = req.getParameter("dan");
		PrintWriter out = response.getWriter();
		if (str1 == null) {
			out.println("노단입니다");
		} else {
		int j = Integer.parseInt(str1);
		out.println("<html><head><title>Plus</title></head><body>");
		for (int i = 1; i < 10; i++) {
			out.println(j + "x" + i + "=" + (j * i) + "<br></body></html>");
		}
		}
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
