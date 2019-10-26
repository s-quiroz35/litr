import 'package:flutter/material.dart';
import 'package:litr_app/login_screen.dart';

class ProfileScreen extends StatefulWidget {
  final User u;
  ProfileScreen({Key key, @required this.u}) : super(key: key);
  @override
  _ProfileScreenState createState() => _ProfileScreenState(u);
}

class _ProfileScreenState extends State<ProfileScreen> {
  final User u;
  _ProfileScreenState(this. u);

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
                      SizedBox (
                        height: 200,
                      ),
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: 200,
                            height: 200,
                            child: Image.asset('assets/images/swolekirby.png'),
                          ),
                          Text(
                            u.name,
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox (
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