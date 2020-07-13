import 'package:flutter/material.dart';
import 'Logoutscreen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/cupertino.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var userName = prefs.getString('userName');
  print(userName);
  SharedPreferences prefs1 = await SharedPreferences.getInstance();
  var password = prefs1.getString('password');
  print(password);
  runApp(
    MaterialApp(
        home: userName == null && password == null
            ? LoginScreen()
            : LogoutScreen()),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Screen',
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  String Username;
  String Password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Login Screen'),
        ),
        body: Container(
            padding: EdgeInsets.all(30),
            child: Column(children: <Widget>[
              Center(
                child: Container(
                  child: Text(
                    'Login Page',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(25)),
              Form(
                  key: formKey,
                  child: Column(children: <Widget>[
                    Container(
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Username',
                            ),
                            validator: (val) {
                              if (val.isEmpty) {
                                return 'Enter correct username...';
                              }
                            },
                            onSaved: (val) => Username = val,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Password',
                            ),
                            validator: (val) {
                              if (val.isEmpty) {
                                return 'Enter correct password...';
                              }
                            },
                            onSaved: (val) => Password = val,
                          ),
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(15)),
                    Center(
                        child: Container(
                            child: RaisedButton(
                                color: Theme.of(context).primaryColorDark,
                                textColor: Theme.of(context).primaryColorLight,
                                child: Text('Login'),
                                onPressed: () async {
                                  final prefs =
                                      await SharedPreferences.getInstance();
                                  final prefs1 =
                                      await SharedPreferences.getInstance();
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              LogoutScreen()));
                                })))
                  ]))
            ])));
  }
}
