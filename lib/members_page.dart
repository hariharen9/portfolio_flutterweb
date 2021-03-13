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
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Appbarr(),
      ),
      body: Center(child: Text('page members')),
    );
  }
}
