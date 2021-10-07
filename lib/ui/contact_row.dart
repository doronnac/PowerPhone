import 'package:avatars/avatars.dart';
import 'package:better_phone/pages/singlecontact_page.dart';
import 'package:better_phone/utils/parse_contact.dart';
import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';

class ContactRow extends StatelessWidget {
  final Contact contact;

  const ContactRow({Key? key, required this.contact}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SingleContactPage(
              contact: contact,
            ),
          ),
        );
      },
      leading: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Avatar(
            name: parseName(contact.displayName),
            shape: AvatarShape.circle(20)),
      ),
      contentPadding: const EdgeInsets.only(top: 6, left: 16, bottom: 6),
      title: Text(
        parseName(contact.displayName),
        style: const TextStyle(color: Colors.white),
      ),
      subtitle: Text(
        parseEmail(contact.emails),
        style: const TextStyle(color: Colors.white70),
      ),
      trailing: const Padding(
        padding: EdgeInsets.only(right: 24),
        child: Icon(
          Icons.phone_outlined,
          size: 28,
        ),
      ),
    );
  }
}
