// ignore_for_file: public_member_api_docs, sort_constructors_first
class Courses {
  final String shorttitle;
  final String longtitle;
  final String imageurl;
  final List content;
  Courses({
    required this.shorttitle,
    required this.longtitle,
    required this.imageurl,
    required this.content,
  });
}

final dummydata = [
  Courses(
    longtitle: "Artificial Intelligence",
    imageurl: '',
    content: [
      'assets/ai_pdf/AIunit1.pdf',
      'assets/ai_pdf/AIunit2.pdf',
      'assets/ai_pdf/AIunit3.pdf',
      'assets/ai_pdf/AIunit4.pdf',
      'assets/ai_pdf/AIunit5.pdf',
      'assets/ai_pdf/AIunit6.pdf',
    ],
    shorttitle: "AI",
  ),
  Courses(
    longtitle: "Theory of Computation",
    imageurl: '',
    content: [
      'assets/toc_pdf/tocUnit1.pdf',
      'assets/toc_pdf/tocUnit2.pdf',
      'assets/toc_pdf/tocUnit3.pdf',
      'assets/toc_pdf/tocUnit4.pdf',
      'assets/toc_pdf/tocUnit5.pdf',
      'assets/toc_pdf/tocUnit6.pdf',
      'assets/toc_pdf/tocUnit7.pdf',
    ],
    shorttitle: "TOC",
  ),
  Courses(
    longtitle: "Operating System",
    imageurl: '',
    content: [
      'assets/os_pdf/OSunit1.pdf',
      'assets/os_pdf/OSunit2.pdf',
      'assets/os_pdf/OSunit3.pdf',
      'assets/os_pdf/OSunit4.pdf',
      'assets/os_pdf/OSunit5.pdf',
      'assets/os_pdf/OSunit6.pdf',
      'assets/os_pdf/OSunit7.pdf',
    ],
    shorttitle: "OS",
  ),
  Courses(
    longtitle: "Computer Network",
    imageurl: '',
    content: [
      'assets/cn_pdf/CNunit1.pdf',
      'assets/cn_pdf/CNunit2.pdf',
      'assets/cn_pdf/CNunit3.pdf',
      'assets/cn_pdf/CNunit4.pdf',
      'assets/cn_pdf/CNunit5.pdf',
      'assets/cn_pdf/CNunit6.pdf',
      'assets/cn_pdf/CNUnit7.pdf',
    ],
    shorttitle: "CN",
  ),
  Courses(
    longtitle: "Database Management",
    imageurl: '',
    content: [
      'assets/dbms_pdf/DBMSunit1.pdf',
      'assets/dbms_pdf/DBMSunit2.pdf',
      'assets/dbms_pdf/DBMSunit3.pdf',
      'assets/dbms_pdf/DBMSunit4.pdf',
      'assets/dbms_pdf/DBMSunit5.pdf',
      'assets/dbms_pdf/DBMSunit6.pdf',
      'assets/dbms_pdf/DBMSunit7.pdf',
      'assets/dbms_pdf/DBMSunit8.pdf',
      'assets/dbms_pdf/DBMSunit9.pdf',
    ],
    shorttitle: "DBMS",
  ),
  Courses(
    longtitle: "Model Set",
    imageurl: '',
    content: [
      'assets/model_pdf/AI2076.pdf',
      'assets/model_pdf/AI2078.pdf',
      'assets/model_pdf/OSa.pdf',
      'assets/model_pdf/OSb.pdf',
      'assets/model_pdf/toca.pdf',
      'assets/model_pdf/tocb.pdf',
    ],
    shorttitle: "Model Set",
  ),
];


// font_awesome_flutter: ^10.4.0
//   url_launcher: ^6.1.10
//   get: ^4.6.5
//   flutter_pdfview: ^1.0.4
//   file_picker: ^2.1.6
//   pdf_flutter: ^1.1.4