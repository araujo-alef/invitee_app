// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeController, Store {
  final _$listRoomsAtom = Atom(name: '_HomeController.listRooms');

  @override
  List<dynamic> get listRooms {
    _$listRoomsAtom.reportRead();
    return super.listRooms;
  }

  @override
  set listRooms(List<dynamic> value) {
    _$listRoomsAtom.reportWrite(value, super.listRooms, () {
      super.listRooms = value;
    });
  }

  final _$fetchRoomsAsyncAction = AsyncAction('_HomeController.fetchRooms');

  @override
  Future fetchRooms() {
    return _$fetchRoomsAsyncAction.run(() => super.fetchRooms());
  }

  @override
  String toString() {
    return '''
listRooms: ${listRooms}
    ''';
  }
}
