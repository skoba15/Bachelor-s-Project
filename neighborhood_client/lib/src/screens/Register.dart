import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:neighborhood_client/src/generated/bachelors.pb.dart';
import 'package:neighborhood_client/src/generated/bachelors.pbgrpc.dart';
import 'package:neighborhood_client/src/grpc/ClientSingleton.dart';


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
  bool _validPhoneNumber = false;
  bool _success = false;
  String _initialCountry = 'GE';
  PhoneNumber _number = PhoneNumber(isoCode: 'GE');
  TextEditingController _passwordController = new TextEditingController();
  TextEditingController _repeatedPasswordController = new TextEditingController();
  final TextEditingController controller = TextEditingController();

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
                    _username = val;
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
                  _password = val;
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
                  _password = val;
                },
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Empty username not allowed';
                  }
                  return null;
                },
              ),
              InternationalPhoneNumberInput(
                onInputChanged: (PhoneNumber number) {
                  print(number.isoCode);
                },
                onInputValidated: (bool value) {
                  print(value);
                },
                ignoreBlank: false,
                autoValidate: true,
                initialValue: _number,
                textFieldController: controller,
                inputBorder: OutlineInputBorder(),
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
                  if (_formKey.currentState.validate() && _validPhoneNumber) {
                    _formKey.currentState.save();
                    final response = await ServiceClient(ClientSingleton().getChannel()).registerUser(
                        RegisterUserRequest()..firstName = _firstName..lastName = _lastName..username = _username..phoneNumber = _phoneNumber..password = _password);
                    if(response.resultCode == "ok") {
                      setState(() {
                        _success = true;
                      });
                    }
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
