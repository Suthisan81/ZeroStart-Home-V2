@WebServlet("/Navbar")
public class Navbar extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        switch (action) {
            case "home":
                response.sendRedirect("index.jsp");
                break;
            case "rent":
                response.sendRedirect("rentpage.jsp");
                break;
            case "sell":
                response.sendRedirect("sellpage.jsp");
                break;
            case "buy":
                response.sendRedirect("buypage.jsp");
                break;
            case "broker":
                response.sendRedirect("brokerpage.jsp");
                break;
            case "about":
                response.sendRedirect("aboutpage.jsp");
                break;
            case "connectus":
                response.sendRedirect("connectpage.jsp");
                break;
            case "booklist":
                response.sendRedirect("bookpage.jsp");
                break;
            case "chat":
                response.sendRedirect("chatpage.jsp");
                break;
            case "user":
                response.sendRedirect("userpage.jsp");
                break;
            default:
                response.sendRedirect("index.jsp");
                break;
        }
    }
}