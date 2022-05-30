import 'package:flutter/material.dart';
import 'package:project_prak_tpm/Model/detailCocktailModel.dart';
import 'package:project_prak_tpm/View/Component/DetailCard.dart';
import 'package:project_prak_tpm/Controller/apiRequest.dart';
import 'package:http/http.dart' as http;


class DetailPage extends StatefulWidget {
  final String? name;
  const DetailPage({Key? key, required this.name}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
 
  @override
  Widget build(BuildContext context) {
    return Container(
      child: _buildListCocktailBody()
    );
  }

  Widget _buildListCocktailBody() {
    return Container(
      child: FutureBuilder(
        future:  CocktailDataSource.instance.loadDetailCocktail(widget.name),
        builder: (BuildContext context,
            AsyncSnapshot<dynamic> snapshot,) {
          if (snapshot.hasError) {
            return _buildErrorSection();
          }
          if (snapshot.hasData) {
            DetailCocktailModel cocktailModel = DetailCocktailModel.fromJson(snapshot.data);
            return _buildSuccessSection(cocktailModel);
          }
          return _buildLoadingSection();
        },
      ),
    );
  }

  Widget _buildErrorSection() {
    return Text("Error");
  }

  Widget _buildEmptySection() {
    return Text("Empty");
  }

  Widget _buildLoadingSection() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

   Widget _buildSuccessSection(DetailCocktailModel data) {
    return DetailCard(
      name: "${data.drinks?[0].strDrink}",
      category: "${data.drinks?[0].strCategory}",
      image: "${data.drinks?[0].strDrinkThumb}",
      desc: "${data.drinks?[0].strInstructions}",
      ingredient1: "${data.drinks?[0].strIngredient1}",
      ingredient2: "${data.drinks?[0].strIngredient2}"
    );
  }
}