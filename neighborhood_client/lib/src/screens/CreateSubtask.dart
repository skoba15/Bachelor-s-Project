import 'dart:html';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_picker_web/image_picker_web.dart';
import 'package:neighborhood_client/src/generated/bachelors.pb.dart';
import 'package:neighborhood_client/src/generated/bachelors.pbgrpc.dart';
import 'package:neighborhood_client/src/grpc/ClientSingleton.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/src/widgets/async.dart' as a;

class CreateSubtask extends StatefulWidget {

  final int taskId;

  final int neighborhoodId;


  CreateSubtask({Key key, @required this.neighborhoodId, @required this.taskId}) : super(key: key);

  @override
  _CreateSubtaskState createState() => _CreateSubtaskState();
}

class _CreateSubtaskState extends State<CreateSubtask> {

  final _formKey = GlobalKey<FormState>();

  SharedPreferences _prefs;

  bool _autoValidate = false;

  String _description;

  String _title;


  int _selected = -1;

  String _assigneeName;

  List<UserInfoItem> _users;


  Future<String> createSubtask() async {
     GetUsersByNeighborhoodResponse response = await ServiceClient(ClientSingleton().getChannel())
        .getUsersByNeighborhood(GetUsersByNeighborhoodRequest()
      ..neighborhoodId = widget.neighborhoodId);
     _users = response.users;
    return Future.value("done");
  }


  Future<Null> _showList1() async {

  }


  @override
  Widget build(BuildContext context) {
    return FutureBuilder <String>(
        future: createSubtask(),
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
                  child: Wrap(
                      children: [Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Center(child: Text('Create Subtask',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,)),
                          SizedBox(height: 20),
                          TextFormField(
                              decoration: const InputDecoration(
                                labelText: 'title',
                              ),
                              onSaved: (String val) {
                                _title = val;
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
                                hintText: 'Write subtask description here',
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
                                _description = val;
                              },
                              validator: (value) {
                                if(value.length > 250) {
                                  return 'Too large text';
                                }
                                return null;
                              }
                          ),
                          StatefulBuilder(builder: (BuildContext context, StateSetter stState) {
                            return Row(
                              children: <Widget>[
                                RaisedButton(
                                  child:Text('Select Assignee'),
                                  color: Colors.black,
                                  textColor: Colors.white,
                                  onPressed: () async {
                                    int index = await showDialog<int>(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return new SimpleDialog(
                                            title: const Text('Select'),
                                            children: _users.map((value) {
                                              return new SimpleDialogOption(
                                                onPressed: () {
                                                  Navigator.pop(context, _users.indexOf(value));//here passing the index to be return on item selection
                                                },
                                                child: new Text(value.userFullName),//item value
                                              );
                                            }).toList(),
                                          );
                                        });
                                    stState(() {
                                      _selected = index;
                                      _assigneeName = _users[index].userFullName;
                                    });
                                  },
                                ),
                                Text(_selected == -1 ? '' : _users[_selected].userFullName,),
                              ],
                            );
                          }
                          ),
                          RaisedButton(
                            color: Colors.black,
                            textColor: Colors.white,
                            onPressed: () async {
                              if (_formKey.currentState.validate()) {
                                _formKey.currentState.save();
                                SubTask subtask = new SubTask()..title = _title..description = _description..taskId = widget.taskId..assigneeId = _users[_selected].userId;
                                 AddSubTaskResponse response = await ServiceClient(ClientSingleton().getChannel())
                                    .addSubTask(AddSubTaskRequest()
                                  ..subTask = subtask);
                                 print(response.resultCode);
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
}
