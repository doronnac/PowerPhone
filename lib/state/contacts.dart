import 'package:contacts_service/contacts_service.dart';
import 'package:mobx/mobx.dart';

// Include generated file
part 'contacts.g.dart';

// This is the class used by rest of your codebase
class Contacts = _Contacts with _$Contacts;

// The store-class
abstract class _Contacts with Store {
  @observable
  List<Contact>? contacts;

  @observable
  List<Contact>? filteredContacts;

  String _query = '';

  @action
  Future<void> init() async {
    if (contacts != null) {
      return;
    }
    contacts = await ContactsService.getContacts();
  }

  @action
  Future<void> refresh() async {
    contacts = await ContactsService.getContacts();
  }

  @action
  Future<void> filter(String query) async {
    if (_query == query) {
      return;
    }
    _query = query;
    filteredContacts = await ContactsService.getContacts(query: query);
  }

  @action
  Future<void> add(Contact newContact) async {
    await ContactsService.addContact(newContact);
    refresh();
  }

  @action
  Future<void> delete(Contact contact) async {
    await ContactsService.deleteContact(contact);
    refresh();
  }

  @action
  Future<void> update(Contact contact) async {
    await ContactsService.updateContact(contact);
    refresh();
  }

  @action
  Future<void> openForm() async {
    await ContactsService.openContactForm();
  }

  @action
  Future<void> openExistingForm(Contact contact) async {
    await ContactsService.openExistingContact(contact);
  }
}
