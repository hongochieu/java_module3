package com.example.demo_jstl.controller;

import com.example.demo_jstl.entity.Student;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "StudentController", value = "/student")
public class StudentController extends HttpServlet{
    private static List<Student> studentList = new ArrayList<>();
    static{
        studentList.add(new Student(1,"An",true,95));
        studentList.add(new Student(2,"Na",false,85));
        studentList.add(new Student(3,"Cường",true,65));
        studentList.add(new Student(4,"Mơ",false,70));
        studentList.add(new Student(5,"Hiếu",true,100));
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        request.setAttribute("studentList",studentList);
        request.getRequestDispatcher("/view/student/list.jsp").forward(request,response);
    }
}