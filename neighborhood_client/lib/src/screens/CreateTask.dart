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

  DateTime _endDate;

  final format = DateFormat("yyyy-MM-dd");

  TextEditingController _startDateController = TextEditingController();

  TextEditingController _endDateController = TextEditingController();


  bool _correctdate = true;


  Future<String> getPreferences() async {
    _prefs = await SharedPreferences.getInstance();
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
                body: Form(
                  key: _formKey,
                  autovalidate: _autoValidate,
                  child: Wrap(
                    children: [Column(
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
                          minLines: 3,
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
                            if(value.length > 250) {
                              return 'Too large text';
                            }
                            return null;
                          }
                        ),
                        StatefulBuilder(builder: (BuildContext context, StateSetter stState) {
                          return Container(
                              child: DateTimeField(
                                decoration: const InputDecoration(
                                  labelText: 'Start Date'
                                ),
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
                                controller: _startDateController,
                                validator: (value) {
                                  if(value == null) {
                                    return 'Please choose end date';
                                  }
                                  return null;
                                }
                              ),
                              width: 200,
                            );
                          }
                        ),
                        SizedBox(height: 20,),
                        StatefulBuilder(builder: (BuildContext context, StateSetter stState) {
                          return Container(
                            child: DateTimeField(
                              decoration: const InputDecoration(
                                  labelText: 'End Date'
                              ),
                              format: format,
                              onShowPicker: (context, currentValue) async {
                                final picked = await showDatePicker(
                                    context: context,
                                    firstDate: DateTime(1900),
                                    initialDate: currentValue ?? DateTime.now(),
                                    lastDate: DateTime(2100));
                                stState(() {
                                  _endDate = picked;
                                });
                                return _endDate;
                              },
                              controller: _endDateController,
                              validator: (value) {
                                if(value == null) {
                                    return 'Please choose end date';
                                }
                                return null;
                              }
                            ),
                            width: 200,
                          );
                        }
                        ),
                        if(!_correctdate && _autoValidate) Text('end date should be ahead of start date'),
                        RaisedButton(
                          color: Colors.black,
                          textColor: Colors.white,
                          onPressed: () async {
                            if (_formKey.currentState.validate() && !isAhead(_startDate, _endDate)) {
                              _formKey.currentState.save();
                              Task task = new Task();
                              task.title = _taskTitle;
                              task.description = _taskDescription;
                              task.creatorId = 1;
                              task.neighborhoodId = 1;
                              task.startDate = new Date()..day = _startDate.day..month = _startDate.month..year = _startDate.year;
                              task.closeDate = new Date()..day = _endDate.day..month = _endDate.month..year = _endDate.year;
                              AddTaskResponse response = await ServiceClient(ClientSingleton().getChannel())
                                  .addTask(AddTaskRequest()
                                ..task = task);
                              return showDialog<void>(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: Text(
                                          'SUCCESS'),
                                      content: const Text(
                                          'Task successfully added!'),
                                      actions: <Widget>[
                                        FlatButton(
                                          child: Text('Ok'),
                                          onPressed: () {
                                            Navigator.of(
                                                context).pop();
                                            int neighborhoodId = widget.id;
                                            if (response.taskId != null) {
                                              int taskId = response.taskId;
                                              Navigator.pushReplacementNamed(
                                                  context, 'Neighborhoods/$neighborhoodId/tasks/$taskId');
                                            }
                                          },
                                        ),
                                      ],
                                    );
                                  }
                              );
                            }
                            else {
                              setState(() {
                                if(isAhead(_startDate, _endDate)) {
                                  _correctdate = false;
                                }
                                _autoValidate = true;
                              });
                            }
                          },
                          child: Text('Create'),
                        ),
                      ],
                    ),
                  ]
                  ),
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
