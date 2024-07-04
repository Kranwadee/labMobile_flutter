import 'package:flutter/material.dart';
import 'contact.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contact App',
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
    List<Contact> contactList = [
      Contact(
          "Monthira Tambumrung", "012-541-1124", 'assets/assets/image1.jpg'),
      Contact("Wimonmas Promkham", "012-541-2541", 'assets/assets/image2.jpg')
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Contact App"),
      ),
      body: ListView.builder(
        itemCount: contactList.length,
        itemBuilder: (BuildContext context, int index) {
          Contact contact = contactList[index];
          return ListTile(
            leading: Image.asset(contact.imageSource),
            title: Text(contact.name),
            subtitle: Text(contact.phoneNumber),
          );
        },
      ),
    );
  }
}
