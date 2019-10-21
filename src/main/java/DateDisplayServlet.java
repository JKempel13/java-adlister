import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/date")
public class DateDisplayServlet extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        response.setIntHeader("Refresh", 1);

        response.setContentType("text/html");
        PrintWriter pw = response.getWriter();
        Date today = new Date();
        pw.println("<html>"+"<body><h1>Today's Date is</h1>");
        pw.println("<b>"+ today+"</b></body>"+ "</html>");
    }
}