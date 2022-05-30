class ListCockTailModel {
  final List<Drinks>? drinks;

  ListCockTailModel({
    this.drinks,
  });

  ListCockTailModel.fromJson(Map<String, dynamic> json)
    : drinks = (json['drinks'] as List?)?.map((dynamic e) => Drinks.fromJson(e as Map<String,dynamic>)).toList();

  Map<String, dynamic> toJson() => {
    'drinks' : drinks?.map((e) => e.toJson()).toList()
  };
}

class Drinks {
  final String? strDrink;
  final String? strDrinkThumb;
  final String? idDrink;

  Drinks({
    this.strDrink,
    this.strDrinkThumb,
    this.idDrink,
  });

  Drinks.fromJson(Map<String, dynamic> json)
    : strDrink = json['strDrink'] as String?,
      strDrinkThumb = json['strDrinkThumb'] as String?,
      idDrink = json['idDrink'] as String?;

  Map<String, dynamic> toJson() => {
    'strDrink' : strDrink,
    'strDrinkThumb' : strDrinkThumb,
    'idDrink' : idDrink
  };
}