import 'package:better_phone/ui/contact_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../state/contacts.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;
  final _contacts = Contacts();

  @override
  Widget build(BuildContext context) {
    _contacts.init();
    return Scaffold(
      appBar: AppBar(
        actions: [
          const Icon(
            Icons.search,
            size: 26,
          ),
          Observer(
              builder: (_) => const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Icon(
                      Icons.more_vert,
                      size: 26,
                    ),
                  )),
        ],
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Text(title),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                  child: Text(
                    "Contacts",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
              ],
            ),
            Observer(builder: (_) {
              final contactList = _contacts.contacts;
              if (contactList == null || contactList.isEmpty) {
                return Container();
              }
              return ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: contactList.length,
                itemBuilder: (BuildContext context, int index) {
                  return ContactRow(contact: contactList[index]);
                },
              );
            })
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.person_add_alt_1),
      ),
    );
  }
}
