package app.test;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/login")
public class Login extends HttpServlet {
    @Override
    public void service(HttpServletRequest request, HttpServletResponse response) throws  ServletException, IOException
    {
        User u1=new User();
        //设置客户端的编码格式
        request.setCharacterEncoding("UTF-8");
        //接收客户端传递的参数
        String number = request.getParameter("number");
        String password = request.getParameter("password");

        //判断是否为空
        if (number == null || "".equals(number.trim())) {
            request.setAttribute("msg", "用户名不能为空！");
            request.getRequestDispatcher("Login.jsp").forward(request, response);
            return;
        }
        if (password == null || "".equals(password.trim())) {
            request.setAttribute("msg", "密码不能为空！");
            request.getRequestDispatcher("Login.jsp").forward(request, response);
            return;
        }
        //判断账号密码是否正确
        if(u1.DatabaseSelect(number,password)==2) {
            request.setAttribute("msg", "账号密码错误！");
            request.getRequestDispatcher("Login.jsp").forward(request, response);
            return;
        }
        else if(u1.DatabaseSelect(number,password)==3)
        {
            request.setAttribute("msg", "数据库连接异常！");
            request.getRequestDispatcher("Login.jsp").forward(request, response);
            return;
        }
        else
        {
            request.getSession().setAttribute("uname",number);
            response.sendRedirect("Homepage.jsp");
        }


    }

}
