import 'package:infinibook_flutter/models/book.dart';
import 'package:infinibook_flutter/models/user.dart';

class DummyData {
  static List<User> users = [
    User(
        imagePath: 'assets/images/chris_500.jpeg',
        name: 'Chris Marres',
        email: 'chris.marres@gmail.com',
        books: 4,
        followers: 4,
        following: 2),
    User(
        imagePath: 'assets/Faces/Themis Tsaprazlis.jpg',
        name: 'Themis Tsaprazlis',
        email: 'tim.tsapras@gmail.com',
        books: 3,
        followers: 5,
        following: 3),
    User(
        imagePath: 'assets/Faces/Amanda Terry.jpg',
        name: 'Amanda Terry',
        email: 'amanda.terry@hotmail.com',
        books: 2,
        followers: 2,
        following: 3),
    User(
        imagePath: 'assets/Faces/Christofer Kross.jpg',
        name: 'Christofer Kross',
        email: 'chriskross@gmail.com',
        books: 1,
        followers: 4,
        following: 3),
    User(
        imagePath: 'assets/Faces/George Pagonis.jpg',
        name: 'George Pagonis',
        email: 'gpag@yahoo.com',
        books: 2,
        followers: 2,
        following: 1),
    User(
        imagePath: 'assets/Faces/Maria Kosta.jpg',
        name: 'Maria Kosta',
        email: 'mariakk@gmail.com',
        books: 2,
        followers: 4,
        following: 6),
    User(
        imagePath: 'assets/Faces/Mingxuan Ze.jpg',
        name: 'Mingxuan Ze',
        email: 'liu.min@gmail.com',
        books: 3,
        followers: 2,
        following: 2),
    User(
        imagePath: 'assets/Faces/Nina Brown.jpg',
        name: 'Nina Brown',
        email: 'nnbrown@hotmail.com',
        books: 4,
        followers: 3,
        following: 3),
    User(
        imagePath: 'assets/Faces/Tatiana Goldberg.jpg',
        name: 'Tatiana Goldberg',
        email: 'goldie@gmail.com',
        books: 2,
        followers: 4,
        following: 4),
    User(
        imagePath: 'assets/Faces/Tim Vogel.jpg',
        name: 'Tim Vogel',
        email: 'tvogelt@yahoo.com',
        books: 5,
        followers: 2,
        following: 2),
  ];

  static List<Book> books = [
    Book(
        imagePath: 'assets/Books/A Game of Thrones_2.jpeg',
        name: 'A Game of Thrones',
        author: 'George R.R. Martin',
        language: 'English',
        genres: [
          'Novel',
          'High fantasy',
          'Fantasy Fiction',
          'Political fiction'
        ],
        pages: 694),
    Book(
        imagePath: 'assets/Books/A Game of Thrones.jpeg',
        name: 'A Game of Thrones',
        author: 'George R.R. Martin',
        language: 'English',
        genres: [
          'Novel',
          'High fantasy',
          'Fantasy Fiction',
          'Political fiction'
        ],
        pages: 694),
    Book(
        imagePath: 'assets/Books/Dune_4.jpg',
        name: 'Dune',
        author: 'Frank Herbert',
        language: 'English',
        genres: ['Science fiction'],
        pages: 869),
    Book(
        imagePath: 'assets/Books/Dune_6.jpg',
        name: 'Dune',
        author: 'Frank Herbert',
        language: 'English',
        genres: ['Science fiction'],
        pages: 592),
    Book(
        imagePath: 'assets/Books/Dune_3.jpg',
        name: 'Dune Messiah',
        author: 'Frank Herbert',
        language: 'English',
        genres: ['Science fiction'],
        pages: 304),
    Book(
        imagePath: 'assets/Books/Dune_3.jpg',
        name: 'Dune Messiah',
        author: 'Frank Herbert',
        language: 'English',
        genres: ['Science fiction'],
        pages: 304),
    Book(
        imagePath: 'assets/Books/Dune_5.jpg',
        name: 'Dune: Deluxe Hardcover',
        author: 'Frank Herbert',
        language: 'English',
        genres: ['Science fiction'],
        pages: 688),
    Book(
        imagePath: 'assets/Books/Dune_1.jpg',
        name: 'Dune (Barnes & Noble Collectible Editions)',
        author: 'Frank Herbert',
        language: 'English',
        genres: ['Science fiction'],
        pages: 576),
    Book(
        imagePath: 'assets/Books/Dune_8.jpg',
        name: 'Dune',
        author: 'Frank Herbert',
        language: 'English',
        genres: ['Science fiction'],
        pages: 528),
    Book(
        imagePath: 'assets/Books/Dune_2.jpg',
        name: 'Dune',
        author: 'Frank Herbert',
        language: 'English',
        genres: ['Science fiction'],
        pages: 528),
    Book(
        imagePath: 'assets/Books/Dune_8.jpg',
        name: 'Dune',
        author: 'Frank Herbert',
        language: 'English',
        genres: ['Science fiction'],
        pages: 528),
    Book(
        imagePath: 'assets/Books/Dune_9.jpg',
        name: 'Dune',
        author: 'Frank Herbert',
        language: 'English',
        genres: ['Science fiction'],
        pages: 528),
    Book(
        imagePath: 'assets/Books/Dune_10.jpg',
        name: 'Dune',
        author: 'Frank Herbert',
        language: 'English',
        genres: ['Science fiction'],
        pages: 528),
    Book(
        imagePath: 'assets/Books/Lord of the Rings Fellowship of the Ring.jpeg',
        name: 'Lord of the Rings:The Fellowship of the Ring',
        author: 'J.R.R. Tolkien',
        language: 'English',
        genres: ['Fantasy'],
        pages: 531),
    Book(
        imagePath: 'assets/Books/Fifty Shades of Grey.jpg',
        name: 'Fifty Shades of Grey',
        author: 'E.L. James',
        language: 'English',
        genres: ['Novel', 'Romance novel', 'Fiction', 'Erotic romance novel'],
        pages: 514),
    Book(
        imagePath: 'assets/Books/Five Feet Apart.jpg',
        name: 'Five Feet Apart',
        author: 'Rachael Lippincott',
        language: 'English',
        genres: ['Adult Fiction'],
        pages: 288),
    Book(
        imagePath: 'assets/Books/Fortress of Blood.jpg',
        name: 'Fortress of Blood',
        author: 'L. D. Goffigan',
        language: 'English',
        genres: ['Adult Fiction'],
        pages: 288),
  ];
}
