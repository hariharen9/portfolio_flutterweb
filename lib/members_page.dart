import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_web/bala_portfolio.dart';
import 'package:portfolio_web/hari_portfolio.dart';
import 'package:portfolio_web/main.dart';

class MembersPage extends StatefulWidget {
  MembersPage({Key key}) : super(key: key);

  @override
  _MembersPageState createState() => _MembersPageState();
}

class _MembersPageState extends State<MembersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Appbarr(),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Text(
                'WE ARE \nTROUVAILLE.',
                style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(8),
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.amberAccent,
                border: Border.all(
                  color: Colors.black,
                  width: 4,
                ),
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage('assets/pics/we.jpg'), fit: BoxFit.fill),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(
                color: Colors.black,
                thickness: 5,
                indent: 50,
                endIndent: 50,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(8),
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Colors.amberAccent,
                          border: Border.all(
                            color: Colors.black,
                            width: 4,
                          ),
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('assets/pics/hari.jpg'),
                              fit: BoxFit.fill),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'HARIHAREN',
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Hari()),
                          );
                        },
                        child: Text(
                          'Click to Know More',
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(color: Colors.amberAccent),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(8),
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Colors.amberAccent,
                          border: Border.all(
                            color: Colors.black,
                            width: 4,
                          ),
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('assets/pics/bala.jpeg'),
                              fit: BoxFit.fill),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'BALAGANESH',
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Bala()),
                          );
                        },
                        child: Text(
                          'Click to Know More',
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(color: Colors.amberAccent),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
