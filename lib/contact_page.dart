import 'package:flutter/material.dart';
import 'package:portfolio_web/main.dart';

class ContactPage extends StatefulWidget {
  ContactPage({Key key}) : super(key: key);

  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Appbarr(),
      ),
      body: Center(child: Text('contact members')),
    );
  }
}
