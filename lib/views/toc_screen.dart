// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:studyapp/views/toc_view.dart';

class TOC {
  final String tocchapters;
  final String tocpdf;
  TOC({
    required this.tocchapters,
    required this.tocpdf,
  });
}

class TOCScreen extends StatelessWidget {
  TOCScreen({super.key, required this.longtitle});
  final String longtitle;

  static final List<String> topics = [
    'Basic Foundations',
    'Introduction to Finite Automata',
    'Regular Expressions',
    'Context Free Grammer',
    'Push Down Automata',
    'Turing Machine',
    'Undecidability and Intractability',
  ];
  static final List pdf = [
    'assets/toc_pdf/tocUnit1.pdf',
    'assets/toc_pdf/tocUnit2.pdf',
    'assets/toc_pdf/tocUnit3.pdf',
    'assets/toc_pdf/tocUnit4.pdf',
    'assets/toc_pdf/tocUnit5.pdf',
    'assets/toc_pdf/tocUnit6.pdf',
    'assets/toc_pdf/tocUnit7.pdf',
  ];
  final items = List.generate(topics.length, (index) {
    return TOC(tocchapters: topics[index], tocpdf: pdf[index]);
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(longtitle),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView.builder(
            itemCount: topics.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Get.to(() => TocView(
                        data: items[index],
                      ));
                },
                child: Card(
                  elevation: 3,
                  child: ListTile(
                    title: Text(topics[index]),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
