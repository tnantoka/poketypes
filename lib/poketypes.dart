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
    label = json['label'];
    color = json['color'];
    effectiveness = json['effectiveness'];
    weakness = json['weakness'];
  }

  String name;
  Map<String, String> label;
  String color;
  Map<String, double> effectiveness;
  Map<String, double> weakness;

  static List<Poketype> all = data
      .map(
        (dynamic d) => Poketype.fromJson(d),
      )
      .toList();
}
