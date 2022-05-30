import 'package:hive/hive.dart';
part 'hiveModel.g.dart';

@HiveType(typeId: 0)
class CocktailHive extends HiveObject{
  @HiveField(0)
  final String name;
  @HiveField(1)
  final String category;
  @HiveField(2)
  final String image;
  @HiveField(3)
  final String ingredient1;
  @HiveField(4)
  final String ingredient2;
  CocktailHive({
    required this.name,
    required this.category,
    required this.image,
    required this.ingredient1,
    required this.ingredient2,
  });
}