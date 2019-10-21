import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/name")
public class NameServlet extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        res.setContentType("text/html");
        PrintWriter out = res.getWriter();

        out.println("<HTML>\n"+
        "<HEAD>\n"+
        "<TITLE>Introductions</TITLE>\n"+
        "</HEAD>\n"+
        "<BODY>\n"+
        "<FORM METHOD=GET ACTION=\"name\">" +
        "If you don't mind me asking, what is your name?\n"+
        "<INPUT TYPE=TEXT NAME=\"name\"><P>\n"+
        "<INPUT TYPE=SUBMIT>\n"+
        "</FORM>\n"+
        "</BODY>\n"+
        "</HTML>"
        );

        String name = req.getParameter("name");
        out.println("<HTML>\n" +
        "<HEAD><TITLE>Hello, " + name + "</TITLE></HEAD>\n" +
        "<BODY>\n" +
        "Hello, " + name +"\n" +
        "</BODY></HTML>");
    }
}