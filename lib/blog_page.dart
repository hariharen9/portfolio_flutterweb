import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:url_launcher/url_launcher.dart';

import 'main.dart';

class BlogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Appbarr(),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              BlogContainer1(),
              BlogContainer2(),
            ],
          ),
        ),
      ),
    );
  }
}

class BlogContainer1 extends StatelessWidget {
  const BlogContainer1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Container(
        margin: EdgeInsets.fromLTRB(50, 10, 50, 10),
        decoration: BoxDecoration(
          color: Colors.amberAccent,
          border: Border.all(
            color: Colors.black,
            width: 4,
          ),
          borderRadius: BorderRadius.circular(35),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Image(image: AssetImage('assets/logos/trouTITLE.png')),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 130,
                  width: 500,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.',
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                        onPressed: _launchURL1, child: Text('Read more')),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class BlogContainer2 extends StatelessWidget {
  const BlogContainer2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Container(
        margin: EdgeInsets.fromLTRB(50, 10, 50, 10),
        decoration: BoxDecoration(
          color: Colors.amberAccent,
          border: Border.all(
            color: Colors.black,
            width: 4,
          ),
          borderRadius: BorderRadius.circular(35),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Image(image: AssetImage('assets/logos/trouTITLE.png')),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 130,
                  width: 500,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.',
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                        onPressed: _launchURL1, child: Text('Read more')),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

const url1 =
    'https://www.linkedin.com/posts/trouvaille-inc_angst-apps-on-google-play-activity-6704993374241361920-dd0P';

_launchURL1() async {
  if (await canLaunch(url1)) {
    await launch(url1);
  } else {
    throw 'Could not launch $url1';
  }
}

const url2 =
    'https://www.linkedin.com/posts/trouvaille-inc_flutter-angst-anxiety-activity-6702172305889484800-9cvW';

_launchURL2() async {
  if (await canLaunch(url2)) {
    await launch(url2);
  } else {
    throw 'Could not launch $url2';
  }
}
