import 'package:flutter/material.dart';
import 'package:portfolio_web/main.dart';
import 'package:contactus/contactus.dart';

class ContactPage extends StatefulWidget {
  ContactPage({Key key}) : super(key: key);

  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Appbarr(),
      ),
      body: ContactUs(
        instagram: 'thisishariharen',
        logo: AssetImage('assets/logos/logo_circle.png'),
        email: 'trouvailleapps@gmail.com',
        companyName: 'Trouvaille INC',
        phoneNumber: '+91123456789',
        website: 'https://www.google.com',
        githubUserName: 'hariharen9',
        linkedinURL: 'https://www.linkedin.com/in/thisishariharen/',
        tagLine: 'Flutter Developers',
        twitterHandle: 'thisishariharen',
        textColor: Colors.black87,
        taglineColor: Colors.blueAccent,
        companyColor: Colors.white,
      ),
    );
  }
}
