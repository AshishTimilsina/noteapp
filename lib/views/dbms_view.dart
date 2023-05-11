import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'dbms_screen.dart';

class DbmsView extends StatefulWidget {
  const DbmsView({
    Key? key,
    required this.data,
  }) : super(key: key);
  final DBMS data;

  @override
  State<DbmsView> createState() => _DbmsViewState();
}

class _DbmsViewState extends State<DbmsView> {
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
          widget.data.dbmspdf,
          controller: _pdfViewerController,
        ));
  }
}
