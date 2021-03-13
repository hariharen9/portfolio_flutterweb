import 'package:flutter/material.dart';
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('WE are TROUVAILLE.'),
          Container(
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
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Divider(
              color: Colors.black,
              thickness: 6,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
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
                          image: AssetImage('assets/pics/hari.jpg'),
                          fit: BoxFit.fill),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('HARIHAREN')
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  Container(
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
                          image: AssetImage('assets/pics/bala.jpg'),
                          fit: BoxFit.fill),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('BALAGANESH')
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

/*width: 200,
            height: 200,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage('assets/pics/hari.jpg'), fit: BoxFit.fill),
            ),*/
