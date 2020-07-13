import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class aboutapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('About App')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.pinkAccent,
              child: Text(
                'Let\'s know the information about this app',
              ),
              elevation: 5,
            ),
          ),
          Card(
              child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                Text(
                  'App Name: Login App',
                ),
                Text('Version: 9.4'),
                Text('Buttons: Its ur choice'),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
