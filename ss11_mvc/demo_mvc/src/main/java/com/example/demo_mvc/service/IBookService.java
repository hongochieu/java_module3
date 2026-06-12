package com.example.demo_mvc.service;

import com.example.demo_mvc.entity.Book;

import java.util.List;

public interface IBookService {
    List<Book> findAll();
    Book findById(int id);
    void add(Book book);
    void update(Book book);
    void delete(int id);
    List<Book> searchByTitle(String title);
}
