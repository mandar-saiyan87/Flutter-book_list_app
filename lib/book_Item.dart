// ignore_for_file: prefer_interpolation_to_compose_strings, prefer_const_constructors, unused_local_variable

import 'package:book_list_app/bookDetails.dart';
import 'package:flutter/material.dart';

import 'Model/book.dart';

class BookItem extends StatelessWidget {
  final Book listedBook;
  const BookItem({required this.listedBook, super.key});

  @override
  Widget build(BuildContext context) {
    var mytextStyle = Theme.of(context).textTheme;
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          onTap: () {
            // Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //       builder: (context) => BookDetails(selectedBook: listedBook),
            //     ));
            Navigator.pushNamed(context, '/bookDetails', arguments: listedBook);
          },
          leading: Image.asset(
            'assets/images/' + listedBook.smallImage,
            width: 65,
            height: 65,
          ),
          title: Text(
            listedBook.bookName,
            style: mytextStyle.headline6,
          ),
          subtitle: Text(listedBook.bookAuthor, style: mytextStyle.subtitle1),
          trailing: Icon(
            Icons.arrow_forward,
            color: Colors.deepPurple,
          ),
        ),
      ),
    );
  }
}
