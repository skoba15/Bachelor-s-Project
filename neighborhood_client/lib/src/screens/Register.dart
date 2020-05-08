import 'package:flutter/material.dart';
import 'package:international_phone_input/international_phone_input.dart';
import 'package:neighborhood_client/src/generated/bachelors.pb.dart';
import 'package:neighborhood_client/src/generated/bachelors.pbgrpc.dart';
import 'package:neighborhood_client/src/grpc/ClientSingleton.dart';
import 'package:grpc/grpc_web.dart';

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
  bool _success = false;

  TextEditingController _passwordController = new TextEditingController();
  TextEditingController _repeatedPasswordController = new TextEditingController();



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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,

            children: <Widget>[
              Center(child: Text('Register',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,)),
              SizedBox(height: 20),
              TextFormField(
                  decoration: const InputDecoration(
                      labelText: 'First Name'
                  ),
                  onSaved: (String val) {
                    _firstName = val;
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Empty first names not allowed';
                    }
                    return null;
                  }
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: const InputDecoration(
                    labelText: 'Last Name'
                ),
                onSaved: (String val) {
                  _lastName = val;
                },
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Empty last name not allowed';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                    labelText: 'Username'
                ),
                onSaved: (String val) {
                  _username = val;
                },
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Empty username not allowed';
                  }
                  return null;
                },
              ),
              new TextFormField(
                decoration: const InputDecoration(
                    labelText: 'Mobile'
                ),
                keyboardType: TextInputType.phone,
                validator: (value) {
                  if (value.length != 9) {
                    return 'invalid phone number';
                  }
                  return null;
                },
                onSaved: (String val) {
                  _phoneNumber = val;
                },
              ),
              TextFormField(
                controller: _passwordController,
                decoration: const InputDecoration(
                    labelText: 'Password'
                ),
                onSaved: (String val) {
                  _password = val;
                },
                validator: (value) {
                  if (value.length < 8) {
                    return 'Empty password not allowed';
                  }
                  return null;
                },
                obscureText: true,
              ),
              TextFormField(
                controller: _repeatedPasswordController,
                decoration: const InputDecoration(
                    labelText: 'Repeat password'
                ),
                onSaved: (String val) {
                  _password = val;
                },
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Empty password not allowed';
                  }
                  if ( value != _passwordController.text) {
                    return 'Passwords don\'t match';
                  }
                  return null;
                },
                obscureText: true,
              ),
              SizedBox(height: 20,),
              Text(_success ? 'You have successfully registered' : ''),
              RaisedButton(
                color: Colors.black,
                textColor: Colors.white,
                onPressed: () async {
                  if (_formKey.currentState.validate()) {
                    _formKey.currentState.save();
                    final response = await ServiceClient(ClientSingleton().getChannel()).registerUser(
                        RegisterUserRequest()..firstName = _firstName..lastName = _lastName..username = _username..phoneNumber = _phoneNumber..password = _password,
                    );
                    print(response.resultCode);
                  }
                  else {
                    setState(() {
                      _autoValidate = true;
                    });
                  }
                },
                child: Text('Sign up'),
              ),
            ],
          ),
        )
    );
  }
}
