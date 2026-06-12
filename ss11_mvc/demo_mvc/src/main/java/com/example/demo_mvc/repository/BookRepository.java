package com.example.demo_mvc.repository;

import com.example.demo_mvc.entity.Book;

import java.util.ArrayList;
import java.util.List;

public class BookRepository implements IBookRepository {
    private static List<Book> bookList = new ArrayList<>();

    static {
        bookList.add(new Book(1,"Java Core", 500, "Jame Gosling", "Progaming"));
        bookList.add(new Book(2, "Doraemon", 450, "Fujiko F. Fujio", "Science fiction"));
        bookList.add(new Book(3, "Harry Potter", 350, "J.K. Rowling", "Fantasy"));
    }

    @Override
    public List<Book> findAll() {
        return bookList;
    }

    @Override
    public Book findById(int id) {
        for (Book book : bookList) {
            if (book.getId() == id) {
                return book;
            }
        }
        return null;
    }

    @Override
    public void add(Book book) {
        bookList.add(book);
    }

    @Override
    public void update(Book book) {
        for (int i = 0; i < bookList.size(); i++) {
            if (bookList.get(i).getId() == book.getId()) {
                bookList.set(i, book);
                return;
            }
        }
    }

    @Override
    public void delete(int id) {
        Book book = findById(id);
        if (book != null) {
            bookList.remove(book);
        }
    }

    @Override
    public List<Book> searchByTitle(String title) {
        List<Book> result = new ArrayList<>();

        for (Book book : bookList) {
            if (book.getTitle().toLowerCase().contains(title.toLowerCase())) {
                result.add(book);
            }
        }
        return result;
    }
}
