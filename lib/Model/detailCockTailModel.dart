class DetailCocktailModel {
  final List<Drinks>? drinks;

  DetailCocktailModel({
    this.drinks,
  });

  DetailCocktailModel.fromJson(Map<String, dynamic> json)
    : drinks = (json['drinks'] as List?)?.map((dynamic e) => Drinks.fromJson(e as Map<String,dynamic>)).toList();

  Map<String, dynamic> toJson() => {
    'drinks' : drinks?.map((e) => e.toJson()).toList()
  };
}

class Drinks {
  final String? idDrink;
  final String? strDrink;
  final dynamic strDrinkAlternate;
  final dynamic strTags;
  final dynamic strVideo;
  final String? strCategory;
  final dynamic strIBA;
  final String? strAlcoholic;
  final String? strGlass;
  final String? strInstructions;
  final dynamic strInstructionsES;
  final String? strInstructionsDE;
  final dynamic strInstructionsFR;
  final String? strInstructionsIT;
  final dynamic strInstructionsZHHANS;
  final dynamic strInstructionsZHHANT;
  final String? strDrinkThumb;
  final String? strIngredient1;
  final String? strIngredient2;
  final String? strIngredient3;
  final dynamic strIngredient4;
  final dynamic strIngredient5;
  final dynamic strIngredient6;
  final dynamic strIngredient7;
  final dynamic strIngredient8;
  final dynamic strIngredient9;
  final dynamic strIngredient10;
  final dynamic strIngredient11;
  final dynamic strIngredient12;
  final dynamic strIngredient13;
  final dynamic strIngredient14;
  final dynamic strIngredient15;
  final String? strMeasure1;
  final dynamic strMeasure2;
  final dynamic strMeasure3;
  final dynamic strMeasure4;
  final dynamic strMeasure5;
  final dynamic strMeasure6;
  final dynamic strMeasure7;
  final dynamic strMeasure8;
  final dynamic strMeasure9;
  final dynamic strMeasure10;
  final dynamic strMeasure11;
  final dynamic strMeasure12;
  final dynamic strMeasure13;
  final dynamic strMeasure14;
  final dynamic strMeasure15;
  final dynamic strImageSource;
  final dynamic strImageAttribution;
  final String? strCreativeCommonsConfirmed;
  final String? dateModified;

  Drinks({
    this.idDrink,
    this.strDrink,
    this.strDrinkAlternate,
    this.strTags,
    this.strVideo,
    this.strCategory,
    this.strIBA,
    this.strAlcoholic,
    this.strGlass,
    this.strInstructions,
    this.strInstructionsES,
    this.strInstructionsDE,
    this.strInstructionsFR,
    this.strInstructionsIT,
    this.strInstructionsZHHANS,
    this.strInstructionsZHHANT,
    this.strDrinkThumb,
    this.strIngredient1,
    this.strIngredient2,
    this.strIngredient3,
    this.strIngredient4,
    this.strIngredient5,
    this.strIngredient6,
    this.strIngredient7,
    this.strIngredient8,
    this.strIngredient9,
    this.strIngredient10,
    this.strIngredient11,
    this.strIngredient12,
    this.strIngredient13,
    this.strIngredient14,
    this.strIngredient15,
    this.strMeasure1,
    this.strMeasure2,
    this.strMeasure3,
    this.strMeasure4,
    this.strMeasure5,
    this.strMeasure6,
    this.strMeasure7,
    this.strMeasure8,
    this.strMeasure9,
    this.strMeasure10,
    this.strMeasure11,
    this.strMeasure12,
    this.strMeasure13,
    this.strMeasure14,
    this.strMeasure15,
    this.strImageSource,
    this.strImageAttribution,
    this.strCreativeCommonsConfirmed,
    this.dateModified,
  });

  Drinks.fromJson(Map<String, dynamic> json)
    : idDrink = json['idDrink'] as String?,
      strDrink = json['strDrink'] as String?,
      strDrinkAlternate = json['strDrinkAlternate'],
      strTags = json['strTags'],
      strVideo = json['strVideo'],
      strCategory = json['strCategory'] as String?,
      strIBA = json['strIBA'],
      strAlcoholic = json['strAlcoholic'] as String?,
      strGlass = json['strGlass'] as String?,
      strInstructions = json['strInstructions'] as String?,
      strInstructionsES = json['strInstructionsES'],
      strInstructionsDE = json['strInstructionsDE'] as String?,
      strInstructionsFR = json['strInstructionsFR'],
      strInstructionsIT = json['strInstructionsIT'] as String?,
      strInstructionsZHHANS = json['strInstructionsZH-HANS'],
      strInstructionsZHHANT = json['strInstructionsZH-HANT'],
      strDrinkThumb = json['strDrinkThumb'] as String?,
      strIngredient1 = json['strIngredient1'] as String?,
      strIngredient2 = json['strIngredient2'] as String?,
      strIngredient3 = json['strIngredient3'] as String?,
      strIngredient4 = json['strIngredient4'],
      strIngredient5 = json['strIngredient5'],
      strIngredient6 = json['strIngredient6'],
      strIngredient7 = json['strIngredient7'],
      strIngredient8 = json['strIngredient8'],
      strIngredient9 = json['strIngredient9'],
      strIngredient10 = json['strIngredient10'],
      strIngredient11 = json['strIngredient11'],
      strIngredient12 = json['strIngredient12'],
      strIngredient13 = json['strIngredient13'],
      strIngredient14 = json['strIngredient14'],
      strIngredient15 = json['strIngredient15'],
      strMeasure1 = json['strMeasure1'] as String?,
      strMeasure2 = json['strMeasure2'],
      strMeasure3 = json['strMeasure3'],
      strMeasure4 = json['strMeasure4'],
      strMeasure5 = json['strMeasure5'],
      strMeasure6 = json['strMeasure6'],
      strMeasure7 = json['strMeasure7'],
      strMeasure8 = json['strMeasure8'],
      strMeasure9 = json['strMeasure9'],
      strMeasure10 = json['strMeasure10'],
      strMeasure11 = json['strMeasure11'],
      strMeasure12 = json['strMeasure12'],
      strMeasure13 = json['strMeasure13'],
      strMeasure14 = json['strMeasure14'],
      strMeasure15 = json['strMeasure15'],
      strImageSource = json['strImageSource'],
      strImageAttribution = json['strImageAttribution'],
      strCreativeCommonsConfirmed = json['strCreativeCommonsConfirmed'] as String?,
      dateModified = json['dateModified'] as String?;

  Map<String, dynamic> toJson() => {
    'idDrink' : idDrink,
    'strDrink' : strDrink,
    'strDrinkAlternate' : strDrinkAlternate,
    'strTags' : strTags,
    'strVideo' : strVideo,
    'strCategory' : strCategory,
    'strIBA' : strIBA,
    'strAlcoholic' : strAlcoholic,
    'strGlass' : strGlass,
    'strInstructions' : strInstructions,
    'strInstructionsES' : strInstructionsES,
    'strInstructionsDE' : strInstructionsDE,
    'strInstructionsFR' : strInstructionsFR,
    'strInstructionsIT' : strInstructionsIT,
    'strInstructionsZH-HANS' : strInstructionsZHHANS,
    'strInstructionsZH-HANT' : strInstructionsZHHANT,
    'strDrinkThumb' : strDrinkThumb,
    'strIngredient1' : strIngredient1,
    'strIngredient2' : strIngredient2,
    'strIngredient3' : strIngredient3,
    'strIngredient4' : strIngredient4,
    'strIngredient5' : strIngredient5,
    'strIngredient6' : strIngredient6,
    'strIngredient7' : strIngredient7,
    'strIngredient8' : strIngredient8,
    'strIngredient9' : strIngredient9,
    'strIngredient10' : strIngredient10,
    'strIngredient11' : strIngredient11,
    'strIngredient12' : strIngredient12,
    'strIngredient13' : strIngredient13,
    'strIngredient14' : strIngredient14,
    'strIngredient15' : strIngredient15,
    'strMeasure1' : strMeasure1,
    'strMeasure2' : strMeasure2,
    'strMeasure3' : strMeasure3,
    'strMeasure4' : strMeasure4,
    'strMeasure5' : strMeasure5,
    'strMeasure6' : strMeasure6,
    'strMeasure7' : strMeasure7,
    'strMeasure8' : strMeasure8,
    'strMeasure9' : strMeasure9,
    'strMeasure10' : strMeasure10,
    'strMeasure11' : strMeasure11,
    'strMeasure12' : strMeasure12,
    'strMeasure13' : strMeasure13,
    'strMeasure14' : strMeasure14,
    'strMeasure15' : strMeasure15,
    'strImageSource' : strImageSource,
    'strImageAttribution' : strImageAttribution,
    'strCreativeCommonsConfirmed' : strCreativeCommonsConfirmed,
    'dateModified' : dateModified
  };
}