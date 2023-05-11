// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'modelset_view.dart';

class ModelSet {
  final String modelsetqn;
  final String modelsetpdf;
  ModelSet({
    required this.modelsetqn,
    required this.modelsetpdf,
  });
}

class ModelSetScreen extends StatelessWidget {
  ModelSetScreen({super.key, required this.longtitle});
  final String longtitle;

  static final List<String> topics = [
    'AI Model Set 2076',
    'AI Model Set 2078',
    'Operating System Set A',
    'Operating System Set B',
    'Theory of Computation Set A',
    'Theory of Computation Set B',
  ];

  static final List pdf = [
    'assets/model_pdf/AI2076.pdf',
    'assets/model_pdf/AI2078.pdf',
    'assets/model_pdf/OSa.pdf',
    'assets/model_pdf/OSb.pdf',
    'assets/model_pdf/toca.pdf',
    'assets/model_pdf/tocb.pdf',
  ];

  final items = List.generate(topics.length, (index) {
    return ModelSet(modelsetqn: topics[index], modelsetpdf: pdf[index]);
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
                  Get.to(() => ModelSetView(
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
