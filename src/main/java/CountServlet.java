import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/count")
public class CountServlet extends HttpServlet {
    private int counter;

    public void init() {
        counter = 0;
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {

        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        String count = "<h3>Total number of page refresh</h3>";
        String docType = "<!doctype html public \"-//w3c//dtd html 4.0 " + "transitional//en\">\n";
        String reset = req.getParameter("reset");
        if(reset != null) {
            counter = 0;
            counter++;
        }

        counter++;
        out.println(docType +
                "<html>\n" +
                "<head><title>" + count + "</title></head>\n" +
                "<body bgcolor = \"#f0f0f0\">\n" +
                "<h1 align = \"center\">" + count + "</h1>\n" +
                "<h2 align = \"center\">" + counter + "</h2>\n" +
                "<p>Type \"reset\" in the query string to reset counter</p>\n" +
                "</body>" +
                "</html>"
      );
    }
}
