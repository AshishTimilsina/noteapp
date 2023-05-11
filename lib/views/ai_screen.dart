// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:studyapp/views/ai_view.dart';

class AI {
  final String aitopics;
  final String aipdf;
  AI({
    required this.aitopics,
    required this.aipdf,
  });
}

class AiScreen extends StatefulWidget {
  const AiScreen({
    Key? key,
    required this.longtitle,
  }) : super(key: key);
  final String longtitle;

  static final List<String> topics = [
    'Introduction To AI',
    'Intelligent Agent',
    'Problem Solving by Searching',
    'Knowledge Representation',
    'Machine Learning',
    'Application of AI',
  ];
  static final List pdf = [
    'assets/ai_pdf/AIunit1.pdf',
    'assets/ai_pdf/AIunit2.pdf',
    'assets/ai_pdf/AIunit3.pdf',
    'assets/ai_pdf/AIunit4.pdf',
    'assets/ai_pdf/AIunit5.pdf',
    'assets/ai_pdf/AIunit6.pdf',
  ];

  @override
  State<AiScreen> createState() => _AiScreenState();
}

class _AiScreenState extends State<AiScreen> {
  var items = List.generate(AiScreen.topics.length, (index) {
    return AI(aitopics: AiScreen.topics[index], aipdf: AiScreen.pdf[index]);
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.longtitle),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView.builder(
            itemCount: AiScreen.topics.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Get.to(() => AiView(data: items[index]));
                },
                child: Card(
                  elevation: 3,
                  child: ListTile(
                    title: Text(AiScreen.topics[index]),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
