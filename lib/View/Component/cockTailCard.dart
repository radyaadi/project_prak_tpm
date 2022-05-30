import 'package:flutter/material.dart';
import 'package:project_prak_tpm/View/detailPage.dart';


class CockTailCard extends StatefulWidget {
  String name;
  String image;
  
  CockTailCard({ Key? key,
    required this.name,
    required this.image,
  }) : super(key: key);

  @override
  State<CockTailCard> createState() => _CockTailCardState();
}

class _CockTailCardState extends State<CockTailCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return DetailPage(name: widget.name);
        }));
      },
      child: Card(
        child: Row(
          children:<Widget>[
            Container(
              width: 100,
              height: 100,
              child: Padding(
                padding: const EdgeInsets.all(5),
                child:CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage: NetworkImage(widget.image),
                ),
              ),
            ),
            SizedBox(width: 8.0),
            Text(
              widget.name,
              style: TextStyle(
                fontSize: 18.0
              )
            ),
          ]
        )
      )
    );
    
    
    
  }

  // void showSnackbar() {
  //   ScaffoldMessenger.of(context).showSnackBar(
  //     SnackBar(
  //       content: Text('Item added'),
  //       duration: Duration(seconds: 1),
  //     ),
  //   );
  // }
}