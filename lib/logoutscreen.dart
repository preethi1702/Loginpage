import 'package:flutter/material.dart';
import 'aboutapp.dart';
import 'main.dart';

class LogoutScreen extends StatefulWidget {
  @override
  _LogoutScreen createState() => _LogoutScreen();
}

class _LogoutScreen extends State<LogoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Logout Screen'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Card(
                color: Colors.pink,
                child: Text('Here is your\'s logout page'),
                elevation: 5,
              ),
            ),
            Card(
              elevation: 5,
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    FlatButton(
                      child: Text('Log out'),
                      textColor: Colors.pink,
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    LogoutScreen()));
                      },
                    ),
                    FlatButton(
                      child: Text('About App'),
                      textColor: Colors.pinkAccent,
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) => aboutapp()));
                      },
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
