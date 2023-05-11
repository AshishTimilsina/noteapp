// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'os_view.dart';

class OS {
  final String ostopics;
  final String ospdf;
  OS({
    required this.ostopics,
    required this.ospdf,
  });
}

class OScreen extends StatelessWidget {
  OScreen({super.key, required this.longtitle});
  final String longtitle;

  static final List<String> topics = [
    'Operating System Overview',
    'Process Management',
    'Process Deadlocks',
    'Memory Management',
    'File Management',
    'Device Management',
    'Linux Case Study',
  ];
  static List pdf = [
    'assets/os_pdf/OSunit1.pdf',
    'assets/os_pdf/OSunit2.pdf',
    'assets/os_pdf/OSunit3.pdf',
    'assets/os_pdf/OSunit4.pdf',
    'assets/os_pdf/OSunit5.pdf',
    'assets/os_pdf/OSunit6.pdf',
    'assets/os_pdf/OSunit7.pdf',
  ];
  final items = List.generate(topics.length, (index) {
    return OS(ostopics: topics[index], ospdf: pdf[index]);
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
                  Get.to(() => OsView(
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
