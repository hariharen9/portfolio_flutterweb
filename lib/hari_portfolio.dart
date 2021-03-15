import 'package:flutter/material.dart';
import 'package:animations/animations.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';

class Hari extends StatefulWidget {
  @override
  _HariState createState() => _HariState();
}

class _HariState extends State<Hari> {
  bool _pinned = true;
  bool _snap = false;
  bool _floating = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              backgroundColor: Colors.purpleAccent[200],
              pinned: _pinned,
              snap: _snap,
              floating: _floating,
              expandedHeight: 300.0,
              flexibleSpace: const FlexibleSpaceBar(
                title: Text(
                  'Hariharen S.S',
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                  ),
                ),
                background: FittedBox(
                  child: Image(
                    image: AssetImage('assets/pics/cover.jpg'),
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Padding(
                    padding: const EdgeInsets.all(35.0),
                    child: Container(
                      color: Colors.white38,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Container(
                              child: Text(
                                'Hey there, I\'m Hariharen -  Great to meet you\! \nI\'m a Student, Enthusiastic Learner, Web & App Developer. \n Computer Science Engineer (ETA-2022) \nI just love creating stuffs! I’m currently working on Flutter and JS(Self Taught Programmer) \nShoot me a hi ;)',
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(fontSize: 20),
                                ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              TextButton.icon(
                                onPressed: () {
                                  _launchURLLinkedin();
                                },
                                icon: Icon(
                                  Icons.account_circle_outlined,
                                  color: Colors.black,
                                ),
                                label: Text(
                                  'LINKED IN',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              TextButton.icon(
                                onPressed: () {
                                  _launchURLEmail();
                                },
                                icon: Icon(
                                  Icons.device_hub,
                                  color: Colors.black,
                                ),
                                label: Text(
                                  'GITHUB',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              TextButton.icon(
                                style: ButtonStyle(),
                                onPressed: () {
                                  _launchURLCV();
                                },
                                icon: Icon(
                                  Icons.download_rounded,
                                  color: Colors.black,
                                ),
                                label: Text(
                                  'DOWNLOAD RESUME',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  OpenContainer(
                    openColor: Colors.black26,
                    transitionDuration: Duration(milliseconds: 1000),
                    transitionType: ContainerTransitionType.fadeThrough,
                    closedBuilder: (context, action) {
                      return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(45),
                          ),
                          alignment: Alignment(0.0, 0.0),
                          height: 100.0,
                          child: Text(
                            'EDUCATION',
                            style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                    fontSize: 20, color: Colors.white)),
                          ),
                        ),
                      );
                    },
                    openBuilder: (context, action) {
                      return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(45),
                          ),
                          alignment: Alignment(0.0, 0.0),
                          child: FittedBox(
                            child: Image(
                              image: AssetImage('pics/hari_ed.png'),
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      );
                    },
                  ),
                  OpenContainer(
                    openColor: Colors.black26,
                    transitionDuration: Duration(milliseconds: 1000),
                    transitionType: ContainerTransitionType.fadeThrough,
                    closedBuilder: (context, action) {
                      return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(45),
                          ),
                          alignment: Alignment(0.0, 0.0),
                          height: 100.0,
                          child: Text(
                            'LICENSES & CERTIFICATIONS',
                            style: GoogleFonts.montserrat(
                              textStyle:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ),
                      );
                    },
                    openBuilder: (context, action) {
                      return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(45),
                          ),
                          alignment: Alignment(0.0, 0.0),
                          child: FittedBox(
                            child: Image(
                              image: AssetImage('pics/lc_hari.png'),
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      );
                    },
                  ),
                  OpenContainer(
                    openColor: Colors.black26,
                    transitionDuration: Duration(milliseconds: 1000),
                    transitionType: ContainerTransitionType.fadeThrough,
                    closedBuilder: (context, action) {
                      return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(45),
                          ),
                          alignment: Alignment(0.0, 0.0),
                          height: 100.0,
                          child: Text(
                            'EXPERIENCE',
                            style: GoogleFonts.montserrat(
                              textStyle:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ),
                      );
                    },
                    openBuilder: (context, action) {
                      return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(35),
                          ),
                          alignment: Alignment(0.0, 0.0),
                          child: FittedBox(
                            child: Container(
                              height: 300,
                              width: 500,
                              child: Image(
                                image: AssetImage('pics/exp_hari.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

_launchURLLinkedin() async {
  const url = 'https://www.linkedin.com/in/hariharen9/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURLEmail() async {
  const url = 'https://github.com/hariharen9/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURLCV() async {
  const url =
      'https://drive.google.com/file/d/1eBz1r1bs4aRwvXrT3qe6Hf_eciStsKNV/view?usp=sharing';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
