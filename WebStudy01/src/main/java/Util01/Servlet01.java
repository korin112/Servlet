package Util01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Servlet01
 */
@WebServlet("/Servlet01")
public class Servlet01 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Servlet01() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset =utf-8"); // web browser에 한글 표시
		String str1 = req.getParameter("num1");
		String str2 = req.getParameter("num2");
		PrintWriter out = response.getWriter();
		if (str1 == null || str2 == null) {
			return;
		}
		int num1 = Integer.parseInt(str1);
		int num2 = Integer.parseInt(str2); // 클라이언트에서 입력한 데이터를 찍을 수 있게 받는거.

		int add = num1 * num2;
		String outstr = "<html><head><title>곱하기</title></head><body>" + num1 + "x" + num2 + "=" + add
				+ "</body></html>";
		out.println(outstr);
//		out.println("<html><head><title>곱하기</title></head>");
//		out.println("<body>");
//		out.println(num1+"*"+num2+"="+add);
//		out.println("</body></html>");
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
