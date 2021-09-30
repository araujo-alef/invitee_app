import 'dart:convert';



class RoomModel {
  final String? name;
  final String? address;
  final String? direction;
  final String? image;
  final List<String>? attributes;

  RoomModel({
    this.name,
    this.address,
    this.direction,
    this.image,
    this.attributes,
  });
  

  RoomModel copyWith({
    String? name,
    String? address,
    String? direction,
    String? image,
    List<String>? attributes,
  }) {
    return RoomModel(
      name: name ?? this.name,
      address: address ?? this.address,
      direction: direction ?? this.direction,
      image: image ?? this.image,
      attributes: attributes ?? this.attributes,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'address': address,
      'direction': direction,
      'image': image,
      'attributes': attributes,
    };
  }

  factory RoomModel.fromMap(Map<String, dynamic> map) {
    return RoomModel(
      name: map['name'],
      address: map['address'],
      direction: map['direction'],
      image: map['image'],
      attributes: List<String>.from(map['attributes']),
    );
  }

  String toJson() => json.encode(toMap());

  factory RoomModel.fromJson(String source) => RoomModel.fromMap(json.decode(source));
}
