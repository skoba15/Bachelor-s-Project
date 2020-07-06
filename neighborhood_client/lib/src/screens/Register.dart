import 'package:flutter/material.dart';
import 'package:neighborhood_client/src/generated/bachelors.pb.dart';
import 'package:neighborhood_client/src/generated/bachelors.pbgrpc.dart';
import 'package:neighborhood_client/src/grpc/ClientSingleton.dart';

import '../Internationalization.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  final _formKey = GlobalKey<FormState>();

  String _firstName = "";
  String _lastName = "";
  String _username = "";
  String _password = "";
  String _phoneNumber = "";
  bool _autoValidate = false;
  bool _usernameExists = false;

  TextEditingController _passwordController = new TextEditingController();
  TextEditingController _repeatedPasswordController = new TextEditingController();


  Future<int> future;

  @override
  void initState() {
    future = Future.value(42);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Neighborhood App'),
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        body: Form(
          key: _formKey,
          autovalidate: _autoValidate,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,

              children: <Widget>[
                Center(child: Text(Internationalization.getValue('Register'),
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,)),
                SizedBox(height: 20),
                TextFormField(
                    decoration: InputDecoration(
                        labelText: Internationalization.getValue('First Name'),
                    ),
                    onSaved: (String val) {
                      _firstName = val;
                    },
                    validator: (value) {
                      if (value.isEmpty) {
                        return Internationalization.getValue('Empty first names not allowed');
                      }
                      return null;
                    }
                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration:  InputDecoration(
                      labelText: Internationalization.getValue('Last Name'),
                  ),
                  onSaved: (String val) {
                    _lastName = val;
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return Internationalization.getValue('Empty last name not allowed');
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: Internationalization.getValue('Username')
                  ),
                  onSaved: (String val) {
                    _username = val;
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return Internationalization.getValue('Empty username not allowed');
                    }
                    return null;
                  },
                ),
                Text(_usernameExists ? Internationalization.getValue('username exists') : '', style: TextStyle(color: Colors.red),),
                new TextFormField(
                  decoration: InputDecoration(
                      labelText: Internationalization.getValue('Mobile'),
                  ),
                  keyboardType: TextInputType.phone,
                  validator: (value) {
                    if (value.length != 9) {
                      return Internationalization.getValue('invalid phone number');
                    }
                    return null;
                  },
                  onSaved: (String val) {
                    _phoneNumber = val;
                  },
                ),
                TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                      labelText: Internationalization.getValue('Password'),
                  ),
                  onSaved: (String val) {
                    _password = val;
                  },
                  validator: (value) {
                    if (value.length < 8) {
                      return Internationalization.getValue('Empty password not allowed');
                    }
                    return null;
                  },
                  obscureText: true,
                ),
                TextFormField(
                  controller: _repeatedPasswordController,
                  decoration: InputDecoration(
                      labelText: Internationalization.getValue('Repeat password'),
                  ),
                  onSaved: (String val) {
                    _password = val;
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return Internationalization.getValue('Empty password not allowed');
                    }
                    if ( value != _passwordController.text) {
                      return Internationalization.getValue('Passwords don\'t match');
                    }
                    return null;
                  },
                  obscureText: true,
                ),
                SizedBox(height: 20,),
                RaisedButton(
                  color: Colors.black,
                  textColor: Colors.white,
                  onPressed: () async {
                    if (_formKey.currentState.validate()) {
                      _formKey.currentState.save();
                      final response = await ServiceClient(ClientSingleton().getChannel()).registerUser(
                          RegisterUserRequest()..firstName = _firstName..lastName = _lastName..username = _username..phoneNumber = _phoneNumber..password = _password);
                      if(response.resultCode == "failed") {
                        setState(() {
                          _autoValidate = true;
                          _usernameExists = true;
                        });
                      }
                      else {
                        return showDialog<void>(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text(
                                    Internationalization.getValue(
                                        'SUCCESS')),
                                content: Text(
                                    Internationalization.getValue(
                                        'User successfully Registered!')),
                                actions: <Widget>[
                                  FlatButton(
                                    child: Text('Ok'),
                                    onPressed: () {
                                      Navigator.of(
                                          context).pop();
                                      Navigator.pushReplacementNamed(
                                          context, 'login');
                                    },
                                  ),
                                ],
                              );
                            }
                        );
                      }
                    }
                    else {
                      setState(() {
                        _autoValidate = true;
                      });
                    }
                  },
                  child: Text(Internationalization.getValue('Sign up')),
                ),
              ],
            ),
          ),
        )
    );
  }
}
