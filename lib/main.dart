import 'package:flutter/material.dart';
import 'widgets/books_list.dart';
import 'models/book.dart';
import './widgets/new_book.dart';
import './widgets/chart.dart';
import './genres.dart';
import './data.dart';

List<Book> books = [];
void main() {
  //adding seeds
  //books.addAll(booksList);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Books',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  List<Book> _bookstoShow() {
    List<Book> selectedBooks = [];
    if (_selectedIndex == 0) {
      return books;
    } else if (_selectedIndex == 1) {
      for (Book b in books) {
        if (b.pagesRead != 0 && b.pagesRead != b.pages) selectedBooks.add(b);
      }
      return selectedBooks;
    } else if (_selectedIndex == 2) {
      for (Book b in books) {
        if (b.pagesRead == 0) selectedBooks.add(b);
      }
      return selectedBooks;
    } else {
      for (Book b in books) {
        if (b.pagesRead == b.pages) selectedBooks.add(b);
      }
      return selectedBooks;
    }
  }

  void _addNewBook(String title, String author, int pages, Genres genre) {
    final newBook = Book(
        id: DateTime.now().toString(),
        title: title,
        author: author,
        pages: pages,
        genre: genre);
    setState(() {
      books.add(newBook);
    });
  }

  void _updateBook(String id, int readPages) {
    setState(() {
      books.where((element) => element.id == id).first.pagesRead = readPages;
    });
  }

  void _deleteBook(String id) {
    setState(() {
      books.removeWhere((element) => element.id == id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Books",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (_) {
                    return NewBook(_addNewBook);
                  },
                );
              },
              icon: Image.asset("assets/photos/add.gif"))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Chart(books),
          BooksList(_bookstoShow(), _updateBook, _deleteBook)
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (val) {
          setState(() {
            _selectedIndex = val;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/photos/all.png",
              height: 20,
              color: Colors.white,
            ),
            label: 'All',
            backgroundColor: Colors.brown,
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/photos/progress.png",
              height: 20,
              color: Colors.white,
            ),
            label: 'in Progress',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/photos/unstarted.png",
              height: 20,
              color: Colors.white,
            ),
            label: 'Unstarted',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/photos/finished.png",
              height: 20,
              color: Colors.white,
            ),
            label: 'Finished',
            backgroundColor: Colors.pink,
          ),
        ],
      ),
    );
  }
}
