// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'cn_view.dart';

class CN {
  final String cntopics;
  final String cnpdf;
  CN({
    required this.cntopics,
    required this.cnpdf,
  });
}

class CNScreen extends StatelessWidget {
  CNScreen({super.key, required this.longtitle});
  final String longtitle;

  static final List<String> topics = [
    'Introduction To Computer Network',
    'Physical Layer and Network Layer',
    'Data Link Layer',
    'Network Layer',
    'Transport Layer',
    'Application Layer',
    'Multimedia and Future Networking',
  ];

  static final List pdf = [
    'assets/cn_pdf/CNunit1.pdf',
    'assets/cn_pdf/CNunit2.pdf',
    'assets/cn_pdf/CNunit3.pdf',
    'assets/cn_pdf/CNunit4.pdf',
    'assets/cn_pdf/CNunit5.pdf',
    'assets/cn_pdf/CNunit6.pdf',
    'assets/cn_pdf/CNUnit7.pdf',
  ];

  final items = List.generate(topics.length, (index) {
    return CN(cntopics: topics[index], cnpdf: pdf[index]);
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
                  Get.to(() => CnView(
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
