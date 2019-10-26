import 'package:flutter/material.dart';
import 'package:litr_app/main_menu_screen.dart';

class UserLogin extends StatefulWidget {
  @override
  _UserLoginState createState() => _UserLoginState();
}

class _UserLoginState extends State<UserLogin> {
  TextEditingController usrEditingContrller = TextEditingController();
  TextEditingController pwdEditingContrller = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      //resizeToAvoidBottomInset: false,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Color(0xFF075009),
            padding: EdgeInsets.all(24),
            child: Center(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 100,
                  ),
                  Center(
                    child: SizedBox(
                      width: 200,
                      height: 200,
                      child: Image.asset('assets/images/logo1.png'),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  TextField(
                    autofocus: false,
                    obscureText: false,
                    style: new TextStyle(color: Colors.white),
                    keyboardType: TextInputType.text,
                    cursorColor: Colors.pink,
                    controller: usrEditingContrller,
                    decoration: InputDecoration(
                        labelText: "Username",
                        hintText: "Username",
                        labelStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                            borderSide: BorderSide(
                                width: 1,
                                color: Colors.blue,
                                style: BorderStyle.solid))),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    autofocus: false,
                    style: new TextStyle(color: Colors.white),
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    controller: pwdEditingContrller,
                    decoration: InputDecoration(
                        labelText: "Password",
                        hintText: "Password",
                        labelStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                            borderSide: BorderSide(
                                width: 1,
                                color: Colors.green,
                                style: BorderStyle.solid))),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  ButtonTheme(
                    //elevation: 4,
                    //color: Colors.green,
                    minWidth: double.infinity,
                    child: MaterialButton(
                      onPressed: () {
                        final User u = new User(usrEditingContrller.text, pwdEditingContrller.text);
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MainMenu(u: u))
                        );
                      },
                      textColor: Colors.white,
                      color: Color(0xFF099A41),
                      height: 50,
                      child: Text("LOGIN"),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class User {
  String name;
  String pwd;
  int points;
  var hat_list;
  User(String name, String pwd) {
    this.name = name;
    this.pwd = pwd;
    this.points = 0;
    this.hat_list = new List();
  }

}

class Hat {
  String image_path;
  String name;
  Hat(this.image_path, this.name);
}