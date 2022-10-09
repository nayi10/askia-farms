import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

class Bird {
  int tag;
  String type;
  Timestamp date;
  Bird({
    required this.tag,
    required this.type,
  }) : date = Timestamp.now();

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tag': tag,
      'type': type,
      'date': date,
    };
  }

  factory Bird.fromMap(Map<String, dynamic> map) {
    final bird = Bird(
      tag: map['tag'] as int,
      type: map['type'] as String,
    );
    bird.date = (map['date'] ?? Timestamp.now()) as Timestamp;
    return bird;
  }

  String toJson() => json.encode(toMap());

  factory Bird.fromJson(String source) =>
      Bird.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Bird(tag: $tag, type: $type, date: $date)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Bird && other.tag == tag && other.type == type;
  }

  @override
  int get hashCode => tag.hashCode ^ type.hashCode;
}
