import 'package:contacts_service/contacts_service.dart';

String parseEmail(List<Item>? emails) {
  if (emails == null || emails.isEmpty || emails[0].label == null) {
    return '';
  }

  String label = emails[0].label ?? '';

  return label;
}

String parseName(String? displayName) {
  return displayName ?? '';
}

String parsePhone(List<Item>? phones) {
  if (phones == null || phones.isEmpty || phones[0].label == null) {
    return '';
  }

  String label = phones[0].label ?? '';

  return label;
}

String parsePostalAddress(List<PostalAddress>? postalAddresses) {
  if (postalAddresses == null || postalAddresses[0].city == null) {
    return '';
  }

  String city = postalAddresses[0].city ?? '';
  return city;
}
