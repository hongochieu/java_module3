package com.example.demo_mvc.service;

import com.example.demo_mvc.entity.Book;
import com.example.demo_mvc.repository.BookRepository;
import com.example.demo_mvc.repository.IBookRepository;

import java.util.List;

public class BookService implements IBookService{
    private IBookRepository bookRepository = new BookRepository();
    @Override
    public List<Book> findAll() {
        return bookRepository.findAll();
    }

    @Override
    public Book findById(int id) {
        return bookRepository.findById(id);
    }

    @Override
    public void add(Book book) {
        bookRepository.add(book);
    }

    @Override
    public void update(Book book) {
        bookRepository.update(book);
    }

    @Override
    public void delete(int id) {
        bookRepository.delete(id);
    }

    @Override
    public List<Book> searchByTitle(String title) {
        return bookRepository.searchByTitle(title);
    }
}
