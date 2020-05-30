import 'package:flutter/material.dart';
import 'package:grpc/service_api.dart';
import 'package:neighborhood_client/src/generated/bachelors.pbgrpc.dart';
import 'package:neighborhood_client/src/grpc/ClientSingleton.dart';
import 'package:flutter/src/widgets/async.dart' as a;


class CreateNeighborhood extends StatefulWidget {
  @override
  _CreateNeighborhoodState createState() => _CreateNeighborhoodState();
}

class _CreateNeighborhoodState extends State<CreateNeighborhood> {

  final _formKey = GlobalKey<FormState>();

  String _name = "";
  String _city = "";
  String _district = "";
  String _address = "";
  bool _autoValidate = false;
  bool _neighborhoodExists = false;

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
              Center(child: Text('Create Neighborhood',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,)),
              SizedBox(height: 20),
              TextFormField(
                  decoration: const InputDecoration(
                      labelText: 'Name'
                  ),
                  onSaved: (String val) {
                    _name = val;
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Empty names not allowed';
                    }
                    return null;
                  }
              ),
              if(_neighborhoodExists)Text('neighborhood already exists',
                style: TextStyle(color: Colors.red),),
              SizedBox(height: 20),
              TextFormField(
                decoration: const InputDecoration(
                    labelText: 'city'
                ),
                onSaved: (String val) {
                  _city = val;
                },
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Empty ciy names not allowed';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                    labelText: 'district'
                ),
                onSaved: (String val) {
                  _district = val;
                },
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Empty district name not allowed';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                    labelText: 'address'
                ),
                onSaved: (String val) {
                  _address = val;
                },
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Empty address name not allowed';
                  }
                  return null;
                },
              ),

              SizedBox(height: 20,),
              RaisedButton(
                color: Colors.black,
                textColor: Colors.white,
                onPressed: () async {
                  if (_formKey.currentState.validate()) {
                    _formKey.currentState.save();
                    Neighborhood n = new Neighborhood();
                    n.name = _name;
                    n.city = _city;
                    n.district = _district;
                    n.address = _address;
                    AddNeighborhoodResponse response = await ServiceClient(
                        ClientSingleton().getChannel()).addNeighborhood(
                        AddNeighborhoodRequest()
                          ..neighborhood = n);
                    print(response.resultCode);
                    if (response.resultCode == "Fail") {
                      setState(() {
                        _autoValidate = true;
                        _neighborhoodExists = true;
                      });
                    }
                    else {
                      return showDialog<void>(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text(
                                  'SUCCESS'),
                              content: const Text(
                                  'Neighborhood successfully added!'),
                              actions: <Widget>[
                                FlatButton(
                                  child: Text('Ok'),
                                  onPressed: () {
                                    Navigator.of(
                                        context).pop();
                                    Navigator.pushReplacementNamed(
                                        context, '/Neighborhoods');
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
                child: Text('Create'),
              ),
            ],
          ),
        )
    );
  }
}