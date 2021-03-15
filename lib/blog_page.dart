import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transparent_image/transparent_image.dart';
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
                child: Stack(
                  children: [
                    Center(child: CircularProgressIndicator()),
                    Center(
                      child: FadeInImage.memoryNetwork(
                        placeholder: kTransparentImage,
                        image:
                            'https://media-exp1.licdn.com/dms/image/C4D22AQGVy7qXSy7oiA/feedshare-shrink_800/0/1597922397162?e=1618444800&v=beta&t=zIOe1q3Z2dw_DwBicyDfMaam-Rly-3Dbvz7C9p5S_wc',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 35,
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
                      'We\'re happy to say that we just completed our first #flutter Android Mobile Application #Angst , that helps people who suffer from #anxiety . \n\nThis is a simple to use #androidapp that helps you fight your anxiety attack.',
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: ElevatedButton(
                      onPressed: _launchURL1, child: Text('Read more')),
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
                child: Stack(
                  children: [
                    Center(child: CircularProgressIndicator()),
                    Center(
                      child: FadeInImage.memoryNetwork(
                        placeholder: kTransparentImage,
                        image:
                            'https://media-exp1.licdn.com/dms/image/C4D22AQGVy7qXSy7oiA/feedshare-shrink_800/0/1597922397162?e=1618444800&v=beta&t=zIOe1q3Z2dw_DwBicyDfMaam-Rly-3Dbvz7C9p5S_wc',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 35,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 320,
                  width: 500,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text(
                      'Mental illnesses are among the most common health conditions in the United States. More than 50% will be diagnosed with a mental illness or disorder at some point in their lifetime. 57% who suffer from #anxiety don’t seek the help that they need .\n\nAre we surprised? Not exactly. With any kind of mental illness being called ‘madness’ in our country, people do not come out of the ‘closet’ and suffer in silence. . There is no shame in getting help for your #mentalillness, do whatever works for you.\n\nAnd so we developed a simple to use #Androidmobile application to help you fight your next #anxietyattack ! \n\nWe at #Trouvaille strongly believe that having a good mental health is important focus to enjoy our daily life and cope with our problems especially at times like this.',
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: ElevatedButton(
                      onPressed: _launchURL1, child: Text('Read more')),
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
