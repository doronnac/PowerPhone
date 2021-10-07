// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contacts.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Contacts on _Contacts, Store {
  final _$contactsAtom = Atom(name: '_Contacts.contacts');

  @override
  List<Contact>? get contacts {
    _$contactsAtom.reportRead();
    return super.contacts;
  }

  @override
  set contacts(List<Contact>? value) {
    _$contactsAtom.reportWrite(value, super.contacts, () {
      super.contacts = value;
    });
  }

  final _$filteredContactsAtom = Atom(name: '_Contacts.filteredContacts');

  @override
  List<Contact>? get filteredContacts {
    _$filteredContactsAtom.reportRead();
    return super.filteredContacts;
  }

  @override
  set filteredContacts(List<Contact>? value) {
    _$filteredContactsAtom.reportWrite(value, super.filteredContacts, () {
      super.filteredContacts = value;
    });
  }

  final _$initAsyncAction = AsyncAction('_Contacts.init');

  @override
  Future<void> init() {
    return _$initAsyncAction.run(() => super.init());
  }

  final _$refreshAsyncAction = AsyncAction('_Contacts.refresh');

  @override
  Future<void> refresh() {
    return _$refreshAsyncAction.run(() => super.refresh());
  }

  final _$filterAsyncAction = AsyncAction('_Contacts.filter');

  @override
  Future<void> filter(String query) {
    return _$filterAsyncAction.run(() => super.filter(query));
  }

  final _$addAsyncAction = AsyncAction('_Contacts.add');

  @override
  Future<void> add(Contact newContact) {
    return _$addAsyncAction.run(() => super.add(newContact));
  }

  final _$deleteAsyncAction = AsyncAction('_Contacts.delete');

  @override
  Future<void> delete(Contact contact) {
    return _$deleteAsyncAction.run(() => super.delete(contact));
  }

  final _$updateAsyncAction = AsyncAction('_Contacts.update');

  @override
  Future<void> update(Contact contact) {
    return _$updateAsyncAction.run(() => super.update(contact));
  }

  final _$openFormAsyncAction = AsyncAction('_Contacts.openForm');

  @override
  Future<void> openForm() {
    return _$openFormAsyncAction.run(() => super.openForm());
  }

  final _$openExistingFormAsyncAction =
      AsyncAction('_Contacts.openExistingForm');

  @override
  Future<void> openExistingForm(Contact contact) {
    return _$openExistingFormAsyncAction
        .run(() => super.openExistingForm(contact));
  }

  @override
  String toString() {
    return '''
contacts: ${contacts},
filteredContacts: ${filteredContacts}
    ''';
  }
}
