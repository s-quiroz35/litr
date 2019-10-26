import 'package:flutter/material.dart';
import 'package:litr_app/login_screen.dart';

class MainMenu extends StatefulWidget {
  final User u;
  MainMenu({Key key, @required this.u}) : super(key: key);
  @override
  _MainMenuState createState() => _MainMenuState(u);
}

class _MainMenuState extends State<MainMenu> {
  final User u;
  _MainMenuState(this. u);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Color(0xFF075009),
            padding: EdgeInsets.all(24),
            child: Center(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 150,
                  ),
                  Text(
                    'Hello ' + u.name,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  ButtonTheme(
                    //elevation: 4,
                    //color: Colors.green,
                    minWidth: 100,
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MainMenu(u: u))
                        );
                      },
                      textColor: Colors.white,
                      color: Color(0xFF099A41),
                      height: 50,
                      child: Text("MAP"),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  ButtonTheme(
                    //elevation: 4,
                    //color: Colors.green,
                    minWidth: 100,
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MainMenu(u: u))
                        );
                      },
                      textColor: Colors.white,
                      color: Color(0xFF099A41),
                      height: 50,
                      child: Text("PROFILE"),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  ButtonTheme(
                    //elevation: 4,
                    //color: Colors.green,
                    minWidth: 100,
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.pop(
                            context,
                        );
                      },
                      textColor: Colors.white,
                      color: Color(0xFF099A41),
                      height: 50,
                      child: Text("LOGOUT"),
                    ),
                  ),
                  SizedBox(
                    height: 200,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}