import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:studyapp/views/cn_screen.dart';
import 'package:studyapp/views/dbms_screen.dart';
import 'package:studyapp/views/modelset_screen.dart';
import 'package:studyapp/views/os_screen.dart';
import 'package:studyapp/views/toc_screen.dart';
import '../model/courses.dart';
import 'package:url_launcher/url_launcher.dart';
import '../model/recommedation.dart';
import 'ai_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  launchurl(Uri url) async {
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'cannot play the video';
    }
  }

  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('KnowledgeHub'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 180,
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.blue,
                    image: DecorationImage(
                        image: AssetImage('assets/images/reading.png'))),
              ),
              const SizedBox(
                height: 10,
              ),
              const Center(
                child: Text(
                  'COURSES',
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: SizedBox(
                  height: 270,
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 15,
                        crossAxisSpacing: 15,
                      ),
                      itemCount: dummydata.length,
                      itemBuilder: (context, index) {
                        final data = dummydata[index];
                        return InkWell(
                          onTap: () {
                            data.shorttitle == 'AI'
                                ? Get.to(() => AiScreen(
                                      longtitle: data.longtitle,
                                    ))
                                : data.shorttitle == 'TOC'
                                    ? Get.to(() => TOCScreen(
                                          longtitle: data.longtitle,
                                        ))
                                    : data.shorttitle == 'CN'
                                        ? Get.to(() => CNScreen(
                                              longtitle: data.longtitle,
                                            ))
                                        : data.shorttitle == 'DBMS'
                                            ? Get.to(() => DBMScreen(
                                                  longtitle: data.longtitle,
                                                ))
                                            : data.shorttitle == 'OS'
                                                ? Get.to(() => OScreen(
                                                      longtitle: data.longtitle,
                                                    ))
                                                : Get.to(() => ModelSetScreen(
                                                      longtitle: data.longtitle,
                                                    ));
                          },
                          child: Card(
                            elevation: 5,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                dummydata[index].shorttitle == 'AI'
                                    ? const CircleAvatar(
                                        radius: 35,
                                        backgroundColor: Colors.pink,
                                        child: Icon(
                                          FontAwesomeIcons.peopleArrows,
                                          color: Colors.white,
                                          size: 35,
                                        ),
                                      )
                                    : dummydata[index].shorttitle == 'DBMS'
                                        ? const CircleAvatar(
                                            radius: 35,
                                            backgroundColor: Colors.greenAccent,
                                            child: Icon(
                                              FontAwesomeIcons.database,
                                              color: Colors.white,
                                              size: 35,
                                            ),
                                          )
                                        : dummydata[index].shorttitle == 'OS'
                                            ? const CircleAvatar(
                                                radius: 35,
                                                backgroundColor: Colors.black,
                                                child: Icon(
                                                  FontAwesomeIcons.computer,
                                                  color: Colors.white,
                                                  size: 35,
                                                ),
                                              )
                                            : dummydata[index].shorttitle ==
                                                    'CN'
                                                ? const CircleAvatar(
                                                    radius: 35,
                                                    backgroundColor:
                                                        Colors.green,
                                                    child: Icon(
                                                      FontAwesomeIcons
                                                          .networkWired,
                                                      color: Colors.white,
                                                      size: 35,
                                                    ),
                                                  )
                                                : dummydata[index].shorttitle ==
                                                        'TOC'
                                                    ? const CircleAvatar(
                                                        radius: 35,
                                                        backgroundColor:
                                                            Colors.blue,
                                                        child: Icon(
                                                          FontAwesomeIcons
                                                              .calculator,
                                                          color: Colors.white,
                                                          size: 35,
                                                        ),
                                                      )
                                                    : CircleAvatar(
                                                        radius: 35,
                                                        backgroundColor: Colors
                                                            .yellow.shade700,
                                                        child: const Icon(
                                                          FontAwesomeIcons.list,
                                                          color: Colors.white,
                                                          size: 35,
                                                        ),
                                                      ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Center(
                                  child: Text(dummydata[index].shorttitle),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Recommended Topics',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 160,
                child: ListView.builder(
                    itemCount: rcmddata.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Card(
                          elevation: 3,
                          child: ListTile(
                            leading: CircleAvatar(
                              child: Text('# ${index + 1}'),
                            ),
                            title: Text(rcmddata[index].topic),
                            subtitle: Text(rcmddata[index].subject),
                            trailing: IconButton(
                                onPressed: () async {
                                  final Uri url =
                                      Uri.parse(rcmddata[index].url);
                                  launchUrl(url);
                                },
                                icon: const Icon(
                                  FontAwesomeIcons.play,
                                  color: Colors.blue,
                                )),
                          ),
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
