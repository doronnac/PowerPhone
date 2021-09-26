import 'package:avatars/avatars.dart';
import 'package:better_phone/models/contact.dart';
import 'package:better_phone/ui/contact_singleinfo_row.dart';
import 'package:flutter/material.dart';

class SingleContactPage extends StatelessWidget {
  final Contact contact;

  const SingleContactPage({Key? key, required this.contact}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Center(child: Avatar(name: '${contact.name} ${contact.surname}')),
          const SizedBox(
            height: 16,
          ),
          Column(children: [
            Text(
              "${contact.name} ${contact.surname}",
              style: Theme.of(context).textTheme.headline1,
            ),
          ]),
          const SizedBox(
            height: 28,
          ),
          ContactSingleInfoRow(
            singleInfo: contact.phone,
            singleIcon: Icons.phone_outlined,
          ),
          ContactSingleInfoRow(
            singleInfo: contact.email,
            singleIcon: Icons.email_outlined,
          ),
          ContactSingleInfoRow(
            singleInfo: "${contact.address},\n${contact.city}",
            singleIcon: Icons.location_on_outlined,
          ),
          ContactSingleInfoRow(
            singleInfo: "@${contact.username}",
            singleIcon: Icons.account_circle_outlined,
          )
        ]),
      ),
    );
  }
}
