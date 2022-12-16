// ignore_for_file: empty_constructor_bodies, body_might_complete_normally_nullable

import 'package:book_list_app/Model/book.dart';
import 'package:book_list_app/bookDetails.dart';
import 'package:book_list_app/book_list.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case ('/'):
        return MaterialPageRoute(
          builder: (context) => BookList(),
        );
      case ('/bookDetails'):
        final selectedBook = settings.arguments as Book;
        return MaterialPageRoute(
          builder: (context) => BookDetails(selectedBook: selectedBook),
        );
      default:
    }
  }
}
