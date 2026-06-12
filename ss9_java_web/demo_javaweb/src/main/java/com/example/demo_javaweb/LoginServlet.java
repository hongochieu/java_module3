package com.example.demo_javaweb;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        request.getRequestDispatcher("/login.jsp")
                .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if ("admin".equals(username) && "123abc".equals(password)) {

            String time = LocalDateTime.now()
                    .format(DateTimeFormatter.ofPattern("HH:mm:ss dd/MM/yyyy"));

            request.setAttribute("message",
                    username + " đăng nhập thành công vào lúc " + time);

            request.getRequestDispatcher("/success.jsp")
                    .forward(request, response);

        } else {

            request.setAttribute("errorMessage",
                    "Tên đăng nhập hoặc mật khẩu không đúng.");

            request.getRequestDispatcher("/login.jsp")
                    .forward(request, response);
        }
    }
}