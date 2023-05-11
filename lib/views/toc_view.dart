import 'package:flutter/material.dart';
import 'package:studyapp/views/toc_screen.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class TocView extends StatefulWidget {
  const TocView({super.key, required this.data});
  final TOC data;
  @override
  State<TocView> createState() => _TocViewState();
}

class _TocViewState extends State<TocView> {
  late PdfViewerController _pdfViewerController;

  @override
  void initState() {
    _pdfViewerController = PdfViewerController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {
                _pdfViewerController.zoomLevel = 2;
              },
              icon: const Icon(
                Icons.zoom_in,
                size: 30,
              ),
              color: Colors.white,
            ),
            IconButton(
              onPressed: () {
                _pdfViewerController.zoomLevel = 0;
              },
              icon: const Icon(
                Icons.zoom_out,
                size: 30,
              ),
              color: Colors.white,
            ),
            IconButton(
              icon: const Icon(
                Icons.keyboard_arrow_up,
                color: Colors.white,
              ),
              onPressed: () {
                _pdfViewerController.previousPage();
              },
            ),
            IconButton(
              icon: const Icon(
                Icons.keyboard_arrow_down,
                color: Colors.white,
              ),
              onPressed: () {
                _pdfViewerController.nextPage();
              },
            )
          ],
        ),
        body: SfPdfViewer.asset(
          widget.data.tocpdf,
          controller: _pdfViewerController,
        ));
  }
}
