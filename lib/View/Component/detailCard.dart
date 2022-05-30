import 'package:flutter/material.dart';
import 'package:project_prak_tpm/Model/hiveModel.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';

class DetailCard extends StatefulWidget {
  String name;
  String category;
  String image;
  String desc;
  String ingredient1;
  String ingredient2;
  
  DetailCard({ Key? key,
    required this.name,
    required this.category,
    required this.image,
    required this.desc,
    required this.ingredient1,
    required this.ingredient2,
  }) : super(key: key);

  @override
  State<DetailCard> createState() => _DetailCardState();
}

class _DetailCardState extends State<DetailCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Cafetaria",
          style: TextStyle(
            fontSize: 25.0
          )
        )
      ),
      body: Center(
        child: Column(
          children:<Widget>[
            Container(
              width: 250,
              height: 250,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child:CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage: NetworkImage(widget.image),
                ),
              ),
            ),
            Text(widget.name,
              style: TextStyle(
                fontSize: 26.0
              )
            ),
            SizedBox(height: 12.0),
            Text("Ingredients",
              style: TextStyle(
                fontSize: 14.0
              )
            ),
            Text("${widget.ingredient1} and ${widget.ingredient2}",
              style: TextStyle(
                color: Color.fromARGB(255, 167, 171, 176),
                fontSize: 12.0
              )
            ),
            SizedBox(height: 12.0),
            Text("Category",
              style: TextStyle(
                fontSize: 14.0
              )
            ),
            Text("${widget.category} Drink",
              style: TextStyle(
                color: Color.fromARGB(255, 167, 171, 176),
                fontSize: 12.0
              )
            ),
            SizedBox(height: 12.0),
            Text("Description",
              style: TextStyle(
                fontSize: 14.0
              )
            ),
            Padding(
              padding: const EdgeInsets.only(right: 40, left: 40),
              child: Text("${widget.desc}",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(255, 167, 171, 176),
                  fontSize: 12.0,
                )
              )
            ),
            SizedBox(height: 23.0),
            RaisedButton(
              padding: EdgeInsets.all(18),
              textColor: Colors.white,
              color: Color.fromARGB(255, 12, 204, 89),
              onPressed: () {
                Box<CocktailHive> cocktailBox = Hive.box<CocktailHive>('cocktail_box');
                  cocktailBox.add(
                  CocktailHive(
                    name: widget.name,
                    category: widget.category,
                    image: widget.image,
                    ingredient1: widget.ingredient1,
                    ingredient2: widget.ingredient2,
                  )
                );
                showSnackbar();
              },
              child: Text("Add to Cart",
                style: TextStyle(fontSize: 15.0)
              ),
            ),
          ]
        )
      )
    );
  }

  void showSnackbar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Item added'),
        duration: Duration(seconds: 1),
      ),
    );
  }
}