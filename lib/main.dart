import 'package:flutter/material.dart';
import 'package:project_prak_tpm/View/homePage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:project_prak_tpm/Model/hiveModel.dart';


void main() async{
  Hive.initFlutter();
  Hive.registerAdapter(CocktailHiveAdapter());
  await Hive.openBox<CocktailHive>('cocktail_box');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cafe',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF1F2129)),
      home: MyLoginPage()
    );
  }
}

class MyLoginPage extends StatefulWidget {
  @override
  _MyLoginPageState createState() => _MyLoginPageState();
}
class _MyLoginPageState extends State<MyLoginPage> {
// Create a text controller and use it to retrieve the current value
// of the TextField.
  final username_controller = TextEditingController();
  late SharedPreferences logindata;
  late bool newuser;
  @override
  void initState() {
    super.initState();
    check_if_already_login();
  }
  void check_if_already_login() async {
    logindata = await SharedPreferences.getInstance();
    newuser = (logindata.getBool('login') ?? true);
    print(newuser);
    if (newuser == false) {
      Navigator.pushReplacement(
          context, new MaterialPageRoute(builder: (context) => HomePage()));
    }
  }
  @override
  void dispose() {
// Clean up the controller when the widget is disposed.
    username_controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(top: 80),
          child: Column(
            children: [
              Text("Cafetaria",
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 40.0
                )
              ),
              SizedBox(height: 20),
              Container(
                width: 150,
                height: 150,
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage: NetworkImage('https:\/\/www.thecocktaildb.com\/images\/media\/drink\/5noda61589575158.jpg'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 1, left: 80, right: 80),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: TextField(
                        controller: username_controller,
                        decoration: InputDecoration(
                          hintText: 'Write your name here...',
                          labelText: 'Your Name',
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    RaisedButton(
                      padding: EdgeInsets.all(18),
                      textColor: Colors.white,
                      color: Color.fromARGB(255, 12, 204, 89),
                      onPressed: () {
                        String username = username_controller.text;
                        if (username != '') {
                          print('Successfull');
                          logindata.setBool('login', false);
                          logindata.setString('username', username);
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) => HomePage()));
                        }
                        },
                      child: Text("Go!"),
                    )
                  ]
                )
              )
            ],
          )
        )
      )
    );
  }
}