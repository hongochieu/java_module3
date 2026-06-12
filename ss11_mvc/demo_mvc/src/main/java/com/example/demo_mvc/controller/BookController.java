package com.example.demo_mvc.controller;

import com.example.demo_mvc.entity.Book;
import com.example.demo_mvc.service.BookService;
import com.example.demo_mvc.service.IBookService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/book")
public class BookController extends HttpServlet {
    private IBookService bookService = new BookService();

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");

        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                request.getRequestDispatcher("/view/book/create.jsp")
                        .forward(request, response);
                break;
            case "edit":
                int id = Integer.parseInt(request.getParameter("id"));
                Book book = bookService.findById(id);
                request.setAttribute("book", book);
                request.getRequestDispatcher("/view/book/edit.jsp")
                        .forward(request, response);
                break;
            case "search":
                String title = request.getParameter("title");

                request.setAttribute(
                        "bookList",
                        bookService.searchByTitle(title)
                );

                request.getRequestDispatcher("/view/book/list.jsp")
                        .forward(request, response);
                break;
            default:
                request.setAttribute("bookList", bookService.findAll());
                request.getRequestDispatcher("/view/book/list.jsp")
                        .forward(request, response);
                break;
        }
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        if ("create".equals(action)){
            int id = Integer.parseInt(request.getParameter("id"));
            String title = request.getParameter("title");
            int pageSize = Integer.parseInt(request.getParameter("pageSize"));
            String author = request.getParameter("author");
            String category = request.getParameter("category");

            Book book = new Book(id,
                                title,
                                pageSize,
                                author,
                                category
            );
            bookService.add(book);
            response.sendRedirect("/book");
        } else if ("edit".equals(action)) {
            int id = Integer.parseInt(request.getParameter("id"));
            String title = request.getParameter("title");
            int pageSize = Integer.parseInt(request.getParameter("pageSize"));
            String author = request.getParameter("author");
            String category = request.getParameter("category");
            Book book = new Book(
                    id,
                    title,
                    pageSize,
                    author,
                    category
            );
            bookService.update(book);
            response.sendRedirect("/book");
        }
    }
}
