import 'package:avatars/avatars.dart';
import 'package:better_phone/ui/contact_singleinfo_row.dart';
import 'package:better_phone/utils/parse_contact.dart';
import 'package:contacts_service/contacts_service.dart';
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
          Center(child: Avatar(name: parseName(contact.displayName))),
          const SizedBox(
            height: 16,
          ),
          Column(children: [
            Text(
              contact.displayName ?? '',
              style: Theme.of(context).textTheme.headline1,
            ),
          ]),
          const SizedBox(
            height: 28,
          ),
          ContactSingleInfoRow(
            singleInfo: parsePhone(contact.phones),
            singleIcon: Icons.phone_outlined,
          ),
          ContactSingleInfoRow(
            singleInfo: parseEmail(contact.emails),
            singleIcon: Icons.email_outlined,
          ),
          ContactSingleInfoRow(
            singleInfo: parsePostalAddress(contact.postalAddresses),
            singleIcon: Icons.location_on_outlined,
          ),
          ContactSingleInfoRow(
            singleInfo: parseName(contact.displayName),
            singleIcon: Icons.account_circle_outlined,
          )
        ]),
      ),
    );
  }
}
