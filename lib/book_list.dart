// ignore_for_file: prefer_const_constructors, must_be_immutable, unused_import, avoid_print

import 'package:book_list_app/book_Item.dart';
import 'package:book_list_app/data/listData.dart';
import 'package:flutter/material.dart';

import 'Model/book.dart';

class BookList extends StatelessWidget {
  late List<Book> allbooks;
  BookList({super.key}) {
    allbooks = prepareData();
    print(prepareData());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book List'),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: allbooks.length,
          itemBuilder: (context, index) {
            return BookItem(listedBook: allbooks[index]);
          },
        ),
      ),
    );
  }

  // Creating List from Book data
  List<Book> prepareData() {
    List<Book> listofBooks = [];
    for (int i = 0; i < 10; i++) {
      var bookName = Strings.Books_Name[i];
      var bookAuthor = Strings.Books_Authors[i];
      var bookDetail = Strings.Books_Detail[i];
      var smallImage = Strings.Small_Images[i];
      var bigImage = Strings.Big_Images[i];

      Book addBook =
          Book(bookName, bookAuthor, bookDetail, smallImage, bigImage);
      listofBooks.add(addBook);
    }
    return listofBooks;
  }
}
