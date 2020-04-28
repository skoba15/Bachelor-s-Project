import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Neighborhood App'),
        backgroundColor: Colors.brown,
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
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
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Username';
                  }
                  return null;
                }
              ),
            SizedBox(height: 20),
            TextFormField(
              decoration: const InputDecoration(
                  labelText: 'Password'
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: RaisedButton(
                onPressed: () {
                  if (_formKey.currentState.validate()) {

                  }
                },
                child: Text('Submit'),
              ),
            ),
          ],
        ),
      )
    );
  }
}
