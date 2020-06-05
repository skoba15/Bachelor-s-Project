import 'package:flutter/material.dart';
import 'package:grpc/service_api.dart';
import 'package:neighborhood_client/src/generated/bachelors.pbgrpc.dart';
import 'package:neighborhood_client/src/grpc/ClientSingleton.dart';
import 'package:flutter/src/widgets/async.dart' as a;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:intl/intl.dart';

class CreateTask extends StatefulWidget {

  final int id;

  CreateTask({Key key, @required this.id}) : super(key: key);


  @override
  _CreateTaskState createState() => _CreateTaskState();
}

class _CreateTaskState extends State<CreateTask> {
  final _formKey = GlobalKey<FormState>();

  SharedPreferences _prefs;

  bool _autoValidate = false;

  String _taskTitle;

  String _taskDescription;

  DateTime _startDate = DateTime.now();

  var _endDate;

  final format = DateFormat("yyyy-MM-dd");

  TextEditingController _dateController = TextEditingController();



  Future<String> getPreferences() async {
    _prefs = await SharedPreferences.getInstance();
    return Future.value("done");
  }


  Future<Null> _selectDate(BuildContext context, DateTime date) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: date,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != date)
      setState(() {
        date = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder <String>(
        future: getPreferences(),
        builder: (context, AsyncSnapshot<String> snapshot) {
          if (snapshot.connectionState == a.ConnectionState.done) {
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
                      Center(child: Text('Create Task',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,)),
                      SizedBox(height: 20),
                      TextFormField(
                          decoration: const InputDecoration(
                              labelText: 'title',
                          ),
                          onSaved: (String val) {
                            _taskTitle = val;
                          },
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Empty titles not allowed';
                            }
                            return null;
                          }
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        minLines: 5,
                        maxLines: 15,
                        autocorrect: false,
                        decoration: InputDecoration(
                          hintText: 'Write task description here',
                          filled: true,
                          fillColor: Color(0xFFDBEDFF),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                        ),
                        onSaved: (String val) {
                          _taskDescription = val;
                        },
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Empty descriptions not allowed';
                          }
                          return null;
                        }
                      ),
                      StatefulBuilder(builder: (BuildContext context, StateSetter stState) {
                        return Row(children: <Widget>[
                          Text('Select start date'),
                          SizedBox(width: 20,),
                          Container(
                            child: DateTimeField(
                              format: format,
                              onShowPicker: (context, currentValue) async {
                                final picked = await showDatePicker(
                                    context: context,
                                    firstDate: DateTime(1900),
                                    initialDate: currentValue ?? DateTime.now(),
                                    lastDate: DateTime(2100));
                                stState(() {
                                  _startDate = picked;
                                });
                                return _startDate;
                              },
                              controller: _dateController,
                            ),
                            width: 200,
                          ),
                        ]);
                        }
                      ),
                      SizedBox(height: 20,),
                      RaisedButton(
                        color: Colors.black,
                        textColor: Colors.white,
                        onPressed: () async {
                          if (_formKey.currentState.validate()) {

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
          } else {
            return CircularProgressIndicator();
          }
        }
    );
  }
}
