import 'package:invitee/app/modules/home/data/repositories/i_room_repository.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeController with _$HomeController;

abstract class _HomeController with Store {
  final IRoomRepository repository;
  _HomeController(this.repository);

  @observable
  List listRooms = [];

  @action
  Future<void> fetchRooms() async {
    final rooms = await repository.fetch();
    listRooms = rooms;
  }
}