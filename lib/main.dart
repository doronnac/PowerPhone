import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

import './pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

Future<void> k() async {
  if (await Permission.contacts.request().isGranted) {
    try {
      List<Contact> contacts = await ContactsService.getContacts();
      print(contacts);
    } catch (e) {
      print(e);
    }
  } else {
    print('NOT GRANTED');
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    k();
    return MaterialApp(
      title: 'Simple Flutter Contact List',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[900],
        brightness: Brightness.dark,
        primaryColor: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 24, color: Colors.white),
          headline6: TextStyle(fontSize: 16, color: Colors.green),
        ),
      ),
      home: MyHomePage(title: 'Simple Flutter Contact List'),
    );
  }
}
