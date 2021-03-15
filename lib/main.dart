import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_web/blog_page.dart';
import 'package:portfolio_web/hari_portfolio.dart';
import 'package:portfolio_web/members_page.dart';

import 'bala_portfolio.dart';
import 'contact_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trouvaille',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor: Colors.black, title: Appbarr()),
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            color: Colors.amberAccent,
            child: Image(image: AssetImage('assets/logos/title.png')),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
              color: Colors.black,
              height: 80,
              width: 1000,
              child: Text(
                'Hey ! We are two friends who strongly believe “Anything worth doing, is worth doing badly the first time”. And just like many of you in 2020, we ran out of books to read and shows to binge. So we chose to develop free #Flutter apps to help people improve their daily life.',
                style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              )),
        )
      ],
    );
  }
}

class Appbarr extends StatelessWidget {
  const Appbarr({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
                height: 40,
                width: 40,
                child: Image(image: AssetImage('assets/logos/trouTITLE.png'))),
            SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyHomePage()),
                );
              },
              child: Text(
                'Trouvaille',
                style: GoogleFonts.sacramento(
                  textStyle: TextStyle(fontSize: 36),
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyHomePage()),
                  );
                },
                child: Text(
                  'Home',
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(fontSize: 14),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BlogPage()),
                  );
                },
                child: Text(
                  'Blogs',
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(fontSize: 14),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MembersPage()),
                  );
                },
                child: Text(
                  'Members',
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(fontSize: 14),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ContactPage()),
                  );
                },
                child: Text(
                  'Contact us',
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(fontSize: 14),
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
