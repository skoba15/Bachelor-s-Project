import 'package:flutter/material.dart';
import 'package:grpc/service_api.dart';
import 'package:neighborhood_client/src/Internationalization.dart';
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

  DateTime _endDate;

  final format = DateFormat("yyyy-MM-dd");

  TextEditingController _startDateController = TextEditingController();

  TextEditingController _endDateController = TextEditingController();

  int _isManager = 0;

  bool _correctdate = true;


  Future<String> getPreferences() async {
    _prefs = await SharedPreferences.getInstance();
    _prefs = await SharedPreferences.getInstance();
    if(_prefs.get('jwt') == null) {
      Navigator.pop(context);
      return null;
    }
    IsManagerResponse managerResponse = await ServiceClient(
        ClientSingleton().getChannel(),
        options: CallOptions(metadata: {'jwt': _prefs.get('jwt')}))
        .isManager(IsManagerRequest()
      ..neighborhoodId = widget.id);
    _isManager = (managerResponse.resultCode == 'Y') ? 1 : 0;
    return Future.value("done");
  }


  @override
  Widget build(BuildContext context) {
    return FutureBuilder <String>(
        future: getPreferences(),
        builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
          if (snapshot.connectionState == a.ConnectionState.done) {
            return Scaffold(
                appBar: AppBar(
                  title: Text('Neighborhood App'),
                  backgroundColor: Colors.black,
                  centerTitle: true,
                ),
                body: StatefulBuilder(builder: (BuildContext context, StateSetter stState2) {
                  return Form(
                    key: _formKey,
                    autovalidate: _autoValidate,
                    child: Wrap(
                        children: [Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Center(child: Text(
                              Internationalization.getValue('Create Task'),
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,)),
                            SizedBox(height: 20),
                            TextFormField(
                                decoration: InputDecoration(
                                  labelText: Internationalization.getValue(
                                      'title'),
                                ),
                                onSaved: (String val) {
                                  _taskTitle = val;
                                },
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return Internationalization.getValue(
                                        'Empty titles not allowed');
                                  }
                                  return null;
                                }
                            ),
                            SizedBox(height: 20),
                            TextFormField(
                                minLines: 3,
                                maxLines: 15,
                                autocorrect: false,
                                decoration: InputDecoration(
                                  hintText: Internationalization.getValue(
                                      'Write task description here'),
                                  filled: true,
                                  fillColor: Color(0xFFDBEDFF),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10.0)),
                                    borderSide: BorderSide(color: Colors.grey),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10.0)),
                                    borderSide: BorderSide(color: Colors.grey),
                                  ),
                                ),
                                onSaved: (String val) {
                                  _taskDescription = val;
                                },
                                validator: (value) {
                                  if (value.length > 250) {
                                    return Internationalization.getValue(
                                        'Too large text');
                                  }
                                  return null;
                                }
                            ),
                            StatefulBuilder(builder: (BuildContext context,
                                StateSetter stState) {
                              return Container(
                                child: DateTimeField(
                                    decoration: InputDecoration(
                                        labelText: Internationalization
                                            .getValue('Start Date')
                                    ),
                                    format: format,
                                    onShowPicker: (context,
                                        currentValue) async {
                                      final picked = await showDatePicker(
                                          context: context,
                                          firstDate: DateTime(1900),
                                          initialDate: currentValue ??
                                              DateTime.now(),
                                          lastDate: DateTime(2100));
                                      stState(() {
                                        _startDate = picked;
                                      });
                                      return _startDate;
                                    },
                                    controller: _startDateController,
                                    validator: (value) {
                                      if (value == null) {
                                        return Internationalization.getValue(
                                            'Please choose start date');
                                      }
                                      return null;
                                    }
                                ),
                                width: 200,
                              );
                            }
                            ),
                            SizedBox(height: 20,),
                            StatefulBuilder(builder: (BuildContext context,
                                StateSetter stState) {
                              return Container(
                                child: DateTimeField(
                                    decoration: InputDecoration(
                                        labelText: Internationalization
                                            .getValue('End Date')
                                    ),
                                    format: format,
                                    onShowPicker: (context,
                                        currentValue) async {
                                      final picked = await showDatePicker(
                                          context: context,
                                          firstDate: DateTime(1900),
                                          initialDate: currentValue ??
                                              DateTime.now(),
                                          lastDate: DateTime(2100));
                                      stState(() {
                                        _endDate = picked;
                                      });
                                      return _endDate;
                                    },
                                    controller: _endDateController,
                                    validator: (value) {
                                      if (value == null) {
                                        return Internationalization.getValue(
                                            'Please choose end date');
                                      }
                                      return null;
                                    }
                                ),
                                width: 200,
                              );
                            }
                            ),
                            if(!_correctdate && _autoValidate) Text(
                                Internationalization.getValue(
                                    'end date should be ahead of start date')),
                            RaisedButton(
                              color: Colors.black,
                              textColor: Colors.white,
                              onPressed: () async {
                                if (_formKey.currentState.validate() &&
                                    !isAhead(_startDate, _endDate)) {
                                  _formKey.currentState.save();
                                  Task task = new Task();
                                  task.title = _taskTitle;
                                  task.description = _taskDescription;
                                  task.creatorId = 1;
                                  task.neighborhoodId = widget.id;
                                  task.startDate = new Date()
                                    ..day = _startDate.day
                                    ..month = _startDate.month
                                    ..year = _startDate.year;
                                  task.closeDate = new Date()
                                    ..day = _endDate.day
                                    ..month = _endDate.month
                                    ..year = _endDate.year;
                                  AddTaskResponse response = await ServiceClient(
                                      ClientSingleton().getChannel(),
                                      options: CallOptions(
                                          metadata: {'jwt': _prefs.get('jwt')}))
                                      .addTask(AddTaskRequest()
                                    ..task = task);
                                  return showDialog<void>(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          title: Text(
                                              Internationalization.getValue(
                                                  'SUCCESS')),
                                          content: Text(
                                              Internationalization.getValue(
                                                  'Task successfully added!')),
                                          actions: <Widget>[
                                            FlatButton(
                                              child: Text('Ok'),
                                              onPressed: () {
                                                Navigator.of(
                                                    context).pop();
                                                int neighborhoodId = widget.id;
                                                if (response.taskId != null) {
                                                  int taskId = response.taskId;
                                                  Navigator
                                                      .pushReplacementNamed(
                                                      context,
                                                      'Neighborhoods/$neighborhoodId/tasks/$taskId');
                                                }
                                              },
                                            ),
                                          ],
                                        );
                                      }
                                  );
                                }
                                else {
                                  stState2(() {
                                    if (isAhead(_startDate, _endDate)) {
                                      _correctdate = false;
                                    }
                                    _autoValidate = true;
                                  });
                                }
                              },
                              child: Text(
                                  Internationalization.getValue('Create')),
                            ),
                          ],
                        ),
                        ]
                    ),
                  );
                }
                )
            );
          } else {
            return CircularProgressIndicator();
          }
        }
    );
  }

  bool isAhead(DateTime startDate, DateTime endDate) {
    return endDate.difference(startDate).isNegative;
  }
}
