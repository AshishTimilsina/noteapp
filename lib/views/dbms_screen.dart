// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dbms_view.dart';

class DBMS {
  final String dbmstopics;
  final String dbmspdf;
  DBMS({
    required this.dbmstopics,
    required this.dbmspdf,
  });
}

class DBMScreen extends StatelessWidget {
  DBMScreen({super.key, required this.longtitle});
  final String longtitle;

  static final List<String> topics = [
    'Database and Database User',
    'Database System-Concepts and Architecture',
    'Data Modeling Using the Entity Relational Model',
    'The Relational Data Model and Relational Database Constraints',
    'The Relational Algebra and Relational Calculus',
    'SQL',
    'Relational Database Design',
    'Concurrency Control Techniques',
    'Database Recovery Techniques',
  ];

  static final List pdf = [
    'assets/dbms_pdf/DBMSunit1.pdf',
    'assets/dbms_pdf/DBMSunit2.pdf',
    'assets/dbms_pdf/DBMSunit3.pdf',
    'assets/dbms_pdf/DBMSunit4.pdf',
    'assets/dbms_pdf/DBMSunit5.pdf',
    'assets/dbms_pdf/DBMSunit6.pdf',
    'assets/dbms_pdf/DBMSunit7.pdf',
    'assets/dbms_pdf/DBMSunit8.pdf',
    'assets/dbms_pdf/DBMSunit9.pdf',
  ];

  final items = List.generate(topics.length, (index) {
    return DBMS(dbmspdf: pdf[index], dbmstopics: topics[index]);
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
                  Get.to(() => DbmsView(data: items[index]));
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
