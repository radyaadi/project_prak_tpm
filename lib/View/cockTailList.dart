import 'package:flutter/material.dart';
import 'package:project_prak_tpm/Model/listCockTailModel.dart';
import 'package:project_prak_tpm/View/Component/cockTailCard.dart';
import 'package:project_prak_tpm/Controller/apiRequest.dart';
import 'package:http/http.dart' as http;


class CockTailList extends StatefulWidget {
  final String? filter;
  const CockTailList({Key? key, required this.filter}) : super(key: key);

  @override
  State<CockTailList> createState() => _CockTailListState();
}

class _CockTailListState extends State<CockTailList> {
 
  @override
  Widget build(BuildContext context) {
    return Container(
      child: _buildListCocktailBody()
    );
  }

  Widget _buildListCocktailBody() {
    return Container(
      child: FutureBuilder(
        future:  CocktailDataSource.instance.loadListCocktail(widget.filter),
        builder: (BuildContext context,
            AsyncSnapshot<dynamic> snapshot,) {
          if (snapshot.hasError) {
            return _buildErrorSection();
          }
          if (snapshot.hasData) {
            ListCockTailModel cocktailModel = ListCockTailModel.fromJson(snapshot.data);
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

   Widget _buildSuccessSection(ListCockTailModel data) {
    return ListView.builder(
      itemCount: data.drinks?.length,
      itemBuilder: (BuildContext context, int index) {
        return CockTailCard(
          name: "${data.drinks?[index].strDrink}",
          image: "${data.drinks?[index].strDrinkThumb}",
        );
      },
    );
  }
}