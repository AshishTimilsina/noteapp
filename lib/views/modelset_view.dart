import 'package:flutter/material.dart';
import 'package:studyapp/views/modelset_screen.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class ModelSetView extends StatefulWidget {
  const ModelSetView({super.key, required this.data});
  final ModelSet data;

  @override
  State<ModelSetView> createState() => _ModelSetViewState();
}

class _ModelSetViewState extends State<ModelSetView> {
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
          widget.data.modelsetpdf,
          controller: _pdfViewerController,
        ));
  }
}
