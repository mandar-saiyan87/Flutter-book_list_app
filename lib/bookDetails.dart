// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, unused_import

import "package:flutter/material.dart";
import 'package:palette_generator/palette_generator.dart';

import 'Model/book.dart';

class BookDetails extends StatefulWidget {
  final Book selectedBook;
  const BookDetails({super.key, required this.selectedBook});

  @override
  State<BookDetails> createState() => _BookDetailsState();
}

class _BookDetailsState extends State<BookDetails> {
  Color appBarColor = Colors.deepPurple;
  late PaletteGenerator generator;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => findAppBarColor());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            backgroundColor: appBarColor,
            pinned: true,
            title: Text(widget.selectedBook.bookName),
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/${widget.selectedBook.bigImage}',
                fit: BoxFit.fill,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              child: Text(widget.selectedBook.bookDetail,
                  style: Theme.of(context).textTheme.subtitle1),
            ),
          ),
        ],
      ),
    );
  }

  void findAppBarColor() async {
    generator = await PaletteGenerator.fromImageProvider(
        AssetImage('assets/images/${widget.selectedBook.bigImage}'));
    appBarColor = generator.dominantColor!.color;
    setState(() {});
  }
}
