import 'package:flutter/material.dart';
import 'package:project_prak_tpm/View/cockTailList.dart';
import 'package:project_prak_tpm/View/cockTailCart.dart';
import 'package:project_prak_tpm/main.dart';
import 'package:shared_preferences/shared_preferences.dart';


class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? filter = 'Alcoholic';
  late SharedPreferences logindata;
  late String username;

  @override
  void initState() {
    super.initState();
    initial();
  }
  void initial() async {
    logindata = await SharedPreferences.getInstance();
    setState(() {
      username = logindata.getString('username')!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome, ${username}",
          style: TextStyle(
            fontSize: 20.0
          )
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: DropdownButton<String>(
            items: const <DropdownMenuItem<String>>[
              DropdownMenuItem<String>(
                value: 'Alcoholic',
                child: Text('Alcoholic'),
              ),
              DropdownMenuItem<String>(
                value: 'Non Alcoholic',
                child: Text('Non Alcoholic'),
              ),
            ],
              value: filter,
              hint: Text('Category'),
              onChanged: (String? value) {
                setState(() {
                  filter = value;
                });
              },
            ),
          )
        ],
        automaticallyImplyLeading: false,
      ),
      body: CockTailList(filter: filter),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Color.fromARGB(255, 12, 204, 89),
            tooltip: 'View My Cart',
            child: Icon( Icons.add_shopping_cart_outlined,
            color: Color.fromARGB(255, 255, 255, 255),),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return CockTailCart();
                }));
            },
          ),
          SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            backgroundColor: Color.fromARGB(255, 12, 204, 89),
            tooltip: 'Logout',
            child: Icon( Icons.logout,
            color: Color.fromARGB(255, 255, 255, 255),),
            onPressed: ()=>{
              logindata.setBool('login', true),
              Navigator.pushReplacement(context,
              new MaterialPageRoute(builder: (context) => MyLoginPage()))
            },
          )
        ]
      )
    );
  }
}