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


class ShowTask extends StatefulWidget {

  final int taskId;

  final int neighborhoodId;


  ShowTask({Key key, @required this.neighborhoodId, @required this.taskId}) : super(key: key);

  @override
  _ShowTaskState createState() => _ShowTaskState();

}


class _ShowTaskState extends State<ShowTask> {

  Task _task;

  List<SubTask> _subTasks;

  Future<String> getTask() async {
     GetTaskResponse response = await ServiceClient(ClientSingleton().getChannel())
        .getTask(GetTaskRequest()
      ..taskId = widget.taskId);
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
              floatingActionButton: FloatingActionButton(
                onPressed: () {
                  int neighborhoodId = widget.neighborhoodId;
                  int taskId = widget.taskId;
                  Navigator.pushNamed(context, '/Neighborhoods/$neighborhoodId/tasks/$taskId/CreateSubtask');
                },
                child: Icon(Icons.add),
                backgroundColor: Colors.black,
              ),
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
                    Text('Subtasks', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
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
                                    'Description: ${_subTasks[index].description}\n Assignee: ${_subTasks[index].assigneeName}',
                                    style: TextStyle(
                                        color: Colors.black),),
                                  onTap: () {
//                                    int idd = _response.neighborhood[index].id;
//                                    Navigator.pushNamed(
//                                        context, '/Neighborhood/$idd');
                                  },
                                  trailing: Icon(Icons.radio_button_unchecked),
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
