import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neighborhood_client/src/Internationalization.dart';
import 'package:neighborhood_client/src/generated/bachelors.pbgrpc.dart';
import 'package:neighborhood_client/src/grpc/ClientSingleton.dart';
import 'package:flutter/src/widgets/async.dart' as a;
import 'package:shared_preferences/shared_preferences.dart';


import '../Preferences.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final _formKey = GlobalKey<FormState>();

  String _username = "";
  String _password = "";
  bool _autoValidate = false;
  bool _wrongInput = false;

  SharedPreferences prefs;


  Future<String> check() async {
    prefs = await SharedPreferences.getInstance();
    return Future.value("WTF");
  }




  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
        future: check(),
        builder: (context, AsyncSnapshot<String> snapshot) {
          if (snapshot.connectionState == a.ConnectionState.done) {
            return Scaffold(
                appBar: AppBar(
                  title: Text('Neighborhood App'),
                  backgroundColor: Colors.black,
                  centerTitle: true,
                  actions: <Widget>[
                    IconButton(
                      icon: new Image.asset("assets/ukIcon.png"),
                      onPressed: () {
                        setState(() {
                          Internationalization.setLanguage('en');
                        });
                      },
                    ),
                    IconButton(
                      icon: new Image.asset("assets/geIcon.png"),
                      onPressed: () {
                        setState(() {
                          Internationalization.setLanguage('ge');
                        });
                      },
                    )
                  ],
                ),
                body: Wrap(
                  children: <Widget> [Form(
                    key: _formKey,
                    autovalidate: _autoValidate,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: <Widget>[
                        Center(child: Text(Internationalization.getValue('Welcome'), style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,)),
                        SizedBox(height: 20),
                        TextFormField(
                            decoration: InputDecoration(
                                labelText: Internationalization.getValue('Username')
                            ),
                            onSaved: (String val) {
                              _username = val;
                            },
                            validator: (value) {
                              if (value.isEmpty) {
                                return Internationalization.getValue('Empty usernames not allowed');
                              }
                              return null;
                            }
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                          decoration: InputDecoration(
                              labelText: Internationalization.getValue('Password')
                          ),
                          onSaved: (String val) {
                            _password = val;
                          },
                          validator: (value) {
                            if (value.isEmpty) {
                              return Internationalization.getValue('Empty password not allowed');
                            }
                            return null;
                          },
                          obscureText: true,
                        ),
                        SizedBox(height: 10,),
                        Text(_wrongInput ? Internationalization.getValue('wrong username or password') : '',
                            style: TextStyle(color: Colors.red)),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),

                          child: RaisedButton(
                            color: Colors.black,
                            textColor: Colors.white,
                            onPressed: () async {
                              if (_formKey.currentState.validate()) {
                                _formKey.currentState.save();
                                final response = await ServiceClient(
                                    ClientSingleton().getChannel()).loginUser(
                                    LoginUserRequest()
                                      ..username = _username
                                      ..password = _password);
                                if (response.resultCode != "failed") {
                                  SharedPreferences prefs = await SharedPreferences
                                      .getInstance();
                                  String token = response.resultCode;
                                  await prefs.setString('jwt', token);
                                  Navigator.pushReplacementNamed(
                                      context, 'Neighborhoods');
                                }
                                else {
                                  setState(() {
                                    _wrongInput = true;
                                  });
                                }
                              }
                              else {
                                setState(() {
                                  _autoValidate = true;
                                });
                              }
                            },
                            child: Text(Internationalization.getValue('Sign in')),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Center(
                            child: Column(
                                children: <Widget>[
                                  Text(Internationalization.getValue('Don\'t have an account?')),
                                  RaisedButton(
                                    child: Text(
                                        Internationalization.getValue('Sign up')
                                    ),
                                    color: Colors.black,
                                    textColor: Colors.white,
                                    onPressed: () {
                                      Navigator.pushNamed(context, '/Register');
                                    },
                                  ),
                                ]
                            )
                        )
                      ],
                    ),
                  )],
                )
            );
          }
          else {
            return CircularProgressIndicator();
          }
        }
    );
  }
}
