import 'package:invitee/app/modules/home/data/models/room_model.dart';

abstract class IRoomRepository {
  Future<List<RoomModel>> fetch();
}