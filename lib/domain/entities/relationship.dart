import 'package:hive/hive.dart';

part "relationship.g.dart";

@HiveType(typeId: 0, adapterName: 'RelationshipAdapter')
class Relationship extends HiveObject{
  @HiveField(0)
  final String name1;

  @HiveField(1)
  final String name2;

  @HiveField(2)
  final DateTime startDate;

  Relationship({
    required this.name1,
    required this.name2,
    required this.startDate,
  });
}