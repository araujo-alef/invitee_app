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
        image: 'assets/images/sala_1.jpg',
        attributes: [
          'Wi-Fi',
          'Quadro',
        ]
      ),
      RoomModel(
        name: 'E5',
        address: 'Av. Paulista 500 - São Paulo',
        direction: 'Oeste',
        image: 'assets/images/sala_2.jpg',
        attributes: [
          'Wi-Fi',
          'Quadro',
          'Ar-condicionado',
        ]
      ),
      RoomModel(
        name: 'B3',
        address: 'Av. Paulista 500 - São Paulo',
        direction: 'Oeste',
        image: 'assets/images/sala_3.jpg',
        attributes: [
          'Wi-Fi',
          'Quadro',
          'TV',
          'Ar-condicionado',
        ]
      ),
      RoomModel(
        name: 'C4',
        address: 'Av. Paulista 500 - São Paulo',
        direction: 'Leste',
        image: 'assets/images/sala_4.jpg',
        attributes: [
          'TV',
        ]
      ),
      RoomModel(
        name: 'D2',
        address: 'Av. Paulista 500 - São Paulo',
        direction: 'Leste',
        image: 'assets/images/sala_5.jpg',
        attributes: [
          'Wi-Fi',
          'Quadro',
          'TV',
        ]
      ),
      RoomModel(
        name: 'B1',
        address: 'Av. Paulista 500 - São Paulo',
        direction: 'Oeste',
        image: 'assets/images/sala_6.jpg',
        attributes: [
          'Wi-Fi',
          'Quadro',
          'Ar-condicionado',
        ]
      ),
      RoomModel(
        name: 'C3',
        address: 'Av. Paulista 500 - São Paulo',
        direction: 'Leste',
        image: 'assets/images/sala_7.jpg',
        attributes: [
          'TV',
          'Ar-condicionado',
        ]
      ),
      RoomModel(
        name: 'F2',
        address: 'Av. Paulista 500 - São Paulo',
        direction: 'Oeste',
        image: 'assets/images/sala_8.jpg',
        attributes: [
          'Wi-Fi',
          'Ar-condicionado',
        ]
      ),
    ];
  }
}