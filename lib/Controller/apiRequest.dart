import 'package:project_prak_tpm/Controller/baseNetwork.dart';
import 'package:project_prak_tpm/Model/detailCockTailModel.dart';

class CocktailDataSource {
  static CocktailDataSource instance = CocktailDataSource();

  Future<Map<String, dynamic>> loadListCocktail(filter) {
    return BaseNetwork.get("filter.php?a=${filter}");
  }

  Future<Map<String, dynamic>> loadDetailCocktail(filter) {
    return BaseNetwork.get("search.php?s=${filter}");
  }
}