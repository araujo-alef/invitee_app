import 'dart:convert';

class RoomModel {
  String name;
  String address;
  String direction;
  List<String> attributes;

  RoomModel({ required this.name, required this.address, required this.direction, required this.attributes });
  

  Map<String, dynamic> toMap() {
    return {
      'nome': name,
      'address': address,
      'direction': direction,
      'attributes': attributes,
    };
  }

  factory RoomModel.fromMap(Map<String, dynamic> map) {
    return RoomModel(
      name: map['nome'],
      address: map['address'],
      direction: map['direction'],
      attributes: List<String>.from(map['attributes']),
    );
  }

  String toJson() => json.encode(toMap());

  factory RoomModel.fromJson(String source) => RoomModel.fromMap(json.decode(source));
}
