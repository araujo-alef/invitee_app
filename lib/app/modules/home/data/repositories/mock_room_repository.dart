import 'package:invitee/app/modules/home/data/models/room_model.dart';
import 'package:invitee/app/modules/home/data/repositories/i_room_repository.dart';

class MockRoomRepository implements IRoomRepository {
  @override
  Future<List<RoomModel>> fetch() async {
    return [
      RoomModel(
        name: 'A2',
        address: 'Av. Paulista 500 - São Paulo',
        direction: 'Leste',
        attributes: [
          'Wi-Fi',
          'Quadro'
        ]
      ),
      RoomModel(
        name: 'A3',
        address: 'Av. Paulista 500 - São Paulo',
        direction: 'Oeste',
        attributes: [
          'Wi-Fi',
          'Quadro',
          'Ar-Condicionado'
        ]
      ),
    ];
  }
}