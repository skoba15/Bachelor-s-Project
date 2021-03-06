import 'dart:html';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_picker_web/image_picker_web.dart';
import 'package:neighborhood_client/src/Internationalization.dart';
import 'package:neighborhood_client/src/generated/bachelors.pb.dart';
import 'package:neighborhood_client/src/generated/bachelors.pbgrpc.dart';
import 'package:neighborhood_client/src/grpc/ClientSingleton.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/src/widgets/async.dart' as a;


class ShowTask extends StatefulWidget {

  final int taskId;

  final int neighborhoodId;


  ShowTask({Key key, @required this.neighborhoodId, @required this.taskId}) : super(key: key);

  @override
  _ShowTaskState createState() => _ShowTaskState();

}


class _ShowTaskState extends State<ShowTask> {


  Task _task;

  int _selectedStatus = -1;

  List<SubTask> _subTasks;

  SharedPreferences _prefs;

  int _isManager = 0;

  int _current_id = 0;

  Future<String> getTask() async {
    _prefs = await SharedPreferences.getInstance();
    if(_prefs.get('jwt') == null) {
      Navigator.pop(context);
      return null;
    }
     GetTaskResponse response = await ServiceClient(ClientSingleton().getChannel())
        .getTask(GetTaskRequest()
      ..taskId = widget.taskId);

     IsManagerResponse managerResponse = await ServiceClient(
         ClientSingleton().getChannel(),
         options: CallOptions(metadata: {'jwt': _prefs.get('jwt')}))
         .isManager(IsManagerRequest()
       ..neighborhoodId = widget.neighborhoodId);
     _isManager = (managerResponse.resultCode == 'Y') ? 1 : 0;

     UserIdResponse idResponse = await ServiceClient(
         ClientSingleton().getChannel(),
         options: CallOptions(metadata: {'jwt': _prefs.get('jwt')}))
         .userId(UserIdRequest()
       ..dummy = 1);
     _current_id = idResponse.id;

     _task = response.task;
     _subTasks = _task.subTask;
    return Future.value("done");
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
        future: getTask(),
        builder: (context, AsyncSnapshot<String> snapshot) {
          if (snapshot.connectionState == a.ConnectionState.done) {
            return Scaffold(
              floatingActionButton: (_isManager == 1) ? FloatingActionButton(
                onPressed: () async{
                  int neighborhoodId = widget.neighborhoodId;
                  int taskId = widget.taskId;
                  await Navigator.pushNamed(context, 'Neighborhoods/$neighborhoodId/tasks/$taskId/CreateSubtask');
                  setState(() {

                  });
                },
                child: Icon(Icons.add),
                backgroundColor: Colors.black,
              ) : null,
              appBar: new AppBar(
                title: Text('Neighborhood App'),
                backgroundColor: Colors.black,
                centerTitle: true,
              ),
              body: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget> [
                    Center(child: Text(_task.title, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),)),
                    SizedBox(height: 20,),
                    Text(_task.description, style: TextStyle(fontSize: 18),),
                    Divider(
                      height: 50,
                      color: Colors.black,
                    ),
                    Text(Internationalization.getValue('Subtasks'), style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                    SizedBox(height: 20,),
                    Expanded(
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: _subTasks.length,
                        itemBuilder: (context, index) {
                          print(_subTasks[index].description);
                           return Column(
                              children: <Widget>[
                                ListTile(
                                  title: Text(
                                    '${_subTasks[index].title}',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),),
                                  leading: Icon(Icons.note,),
                                  subtitle: Text(
                                    '${Internationalization.getValue('Description')}: ${_subTasks[index].description}\n ${Internationalization.getValue('Assignee')}: ${_subTasks[index].assigneeName}',
                                    style: TextStyle(
                                        color: Colors.black),),
                                  onTap: () {
//                                    int idd = _response.neighborhood[index].id;
//                                    Navigator.pushNamed(
//                                        context, '/Neighborhood/$idd');
                                  },
                                  trailing: StatefulBuilder(builder: (BuildContext context, StateSetter stState) {
                                    return Container(
                                      width: 80,
                                      child: Row(
                                        children: <Widget>[
                                          _subTasks[index].status == 0
                                              ? Icon(Icons.radio_button_unchecked)
                                              : (( _subTasks[index].status == 1) ? Icon(
                                              Icons.radio_button_unchecked,
                                              color: Colors.yellow) : Icon(
                                              Icons.done, color: Colors.green)),
                                          if(_subTasks[index].status != 2 && (_subTasks[index].assigneeId == _current_id || _isManager == 1 ) )PopupMenuButton<int>(
                                            onSelected: (int result) async {
                                              if(result > _subTasks[index].status) {
                                                ChangeSubTaskStatusResponse response = await ServiceClient(ClientSingleton().getChannel())
                                                    .changeSubTaskStatus(ChangeSubTaskStatusRequest()..subTaskId = _subTasks[index].id..status = result);
                                                stState(() {
                                                  _subTasks[index].status = response.subTaskNewStatus;
                                                });
                                              }
                                            },
                                            itemBuilder: (BuildContext context) =>
                                            <PopupMenuEntry<int>>[
                                              PopupMenuItem<int>(
                                                value: 1,
                                                child: Text(Internationalization.getValue('IN PROGRESS')),
                                              ),
                                              PopupMenuItem<int>(
                                                value: 2,
                                                child: Text(Internationalization.getValue('DONE')),
                                              ),
                                            ],
                                          )

                                        ],
                                      ),
                                    );
                                  }
                                  ),
                                  isThreeLine: true,
                                ),
                              ]
                          );
                        },
                      ),
                    ),
                  ]
                ),
            );
          } else {
            return CircularProgressIndicator();
          }
        }
    );
  }
}
