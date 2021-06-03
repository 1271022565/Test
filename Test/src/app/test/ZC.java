package app.test;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/ZC")
public class ZC extends HttpServlet {
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User u2=new User();
        response.setCharacterEncoding("UTF-8");
        String num = request.getParameter("number");
        String pd1 = request.getParameter("password1");
        String pd2 = request.getParameter("password2");
        if (num == null || "".equals(num.trim())) {
            request.setAttribute("msg", "用户名不能为空");
            request.getRequestDispatcher("ZC.jsp").forward(request, response);
            return;
        }
        if (pd1 == null|| "".equals(pd1.trim())) {
            request.setAttribute("msg", "密码不能为空！");
            request.getRequestDispatcher("ZC.jsp").forward(request, response);
            return;
        }
        if (pd2 == null|| "".equals(pd2.trim())) {
            request.setAttribute("msg", "确定密码不能为空！");
            request.getRequestDispatcher("ZC.jsp").forward(request, response);
            return;
        }
        //是否成功注册
        if(u2.DatabaseAdd(num,pd1,pd2)==1){
            request.setAttribute("msg", "用户已存在");
            request.getRequestDispatcher("ZC.jsp").forward(request, response);
        }
        else if(u2.DatabaseAdd(num,pd1,pd2)==2)
        {
            request.setAttribute("msg", "密码和确认密码不一致");
            request.getRequestDispatcher("ZC.jsp").forward(request, response);
        }
        else if(u2.DatabaseAdd(num,pd1,pd2)==3)
        {
            request.setAttribute("msg", "数据库连接异常！ ");
            request.getRequestDispatcher("ZC.jsp").forward(request, response);
        }
        else {
            request.getSession().setAttribute("uname",num);
            response.sendRedirect("Login.jsp");
        }
    }

}
