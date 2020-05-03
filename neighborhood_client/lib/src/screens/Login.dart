import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:neighborhood_client/src/generated/bachelors.pbgrpc.dart';
import 'package:neighborhood_client/src/grpc/ClientSingleton.dart';

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
            Center(child: Text('Welcome!', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold), textAlign: TextAlign.center,)),
            SizedBox(height: 20),
            TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Username'
                ),
                onSaved: (String val) {
                  _username = val;
                },
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Empty usernames not allowed';
                  }
                  return null;
                }
              ),
            SizedBox(height: 20),
            TextFormField(
              decoration: const InputDecoration(
                  labelText: 'Password'
              ),
              onSaved: (String val) {
                _password = val;
              },
              validator: (value) {
                if (value.isEmpty) {
                  return 'Empty password not allowed';
                }
                return null;
              },
              obscureText: true,
            ),
            SizedBox(height: 10,),
            Text(_wrongInput ? 'wrong username or password' : '', style: TextStyle(color: Colors.red)),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),

              child: RaisedButton(
                color: Colors.black,
                textColor: Colors.white,
                onPressed: () async {
                  if (_formKey.currentState.validate()) {
                    _formKey.currentState.save();
                    final response = await ServiceClient(ClientSingleton().getChannel()).loginUser(LoginUserRequest()..username = _username..password = _password);
                    if (response.resultCode == "ok") {
                      print("success!");
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
                child: Text('Sign in'),
              ),
            ),
            SizedBox(height: 10,),
            Center(
              child: Column(
                children: <Widget>[
                  Text('Don\'t have an account?'),
                  RaisedButton(
                    child:Text(
                      'Sign up'
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
      )
    );
  }
}
