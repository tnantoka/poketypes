library poketypes;

import 'data.dart';

/// A Calculator.
class Poketype {
  factory Poketype(String name) {
    return all.firstWhere(
      (Poketype p) => p.name == name,
    );
  }

  Poketype.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    nameJa = json['name_ja'];
    color = json['color'];
    effectiveness = json['effectiveness'];
  }

  String name;
  String nameJa;
  String color;
  Map<String, double> effectiveness;

  static List<Poketype> all = data
      .map(
        (dynamic d) => Poketype.fromJson(d),
      )
      .toList();
}
