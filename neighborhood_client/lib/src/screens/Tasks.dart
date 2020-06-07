import 'package:flutter/material.dart';
import 'package:grpc/service_api.dart';
import 'package:neighborhood_client/src/generated/bachelors.pbgrpc.dart';
import 'package:neighborhood_client/src/grpc/ClientSingleton.dart';
import 'package:flutter/src/widgets/async.dart' as a;
import 'package:shared_preferences/shared_preferences.dart';


class Tasks extends StatefulWidget {

  final int id;

  Tasks({Key key, @required this.id}) : super(key: key);


  @override
  _TasksState createState() => _TasksState();
}

class _TasksState extends State<Tasks> {


  SharedPreferences _prefs;

  List<Task> _tasks;

  List<SubTask> _subTasks;

  Future<String> getMyNeighborhoodsList() async {
    GetTaskByNeighborhoodResponse response = await ServiceClient(ClientSingleton().getChannel())
        .getTaskByNeighborhood(GetTaskByNeighborhoodRequest()
      ..neighborhoodId = widget.id);
    _tasks = response.tasks;
    GetUserTasksResponse subtaskResponse = await ServiceClient(ClientSingleton().getChannel())
        .getUserTasks(GetUserTasksRequest()
      ..neighborhoodId = widget.id);
    _subTasks = subtaskResponse.subTask;
    return Future.value("WTF");
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
        future: getMyNeighborhoodsList(),
        builder: (context, AsyncSnapshot<String> snapshot) {
          if (snapshot.connectionState == a.ConnectionState.done) {
            return DefaultTabController(
              length: 2,
              child: Scaffold(
                floatingActionButton: FloatingActionButton(
                  onPressed: () {
                    int neighborhoodId = widget.id;
                    Navigator.pushReplacementNamed(
                        context, '/Neighborhoods/$neighborhoodId/CreateTask');
                  },
                  child: Icon(Icons.add),
                  backgroundColor: Colors.black,
                ),
                appBar: AppBar(
                  title: Text('Neighborhood App'),
                  backgroundColor: Colors.black,
                  centerTitle: true,
                  bottom: TabBar(
                      tabs: [
                        Tab(icon: Icon(Icons.assignment_ind), text: 'MY TASKS'),
                        Tab(icon: Icon(Icons.assessment),
                          text: 'ALL TASKS',),
                      ]
                  ),
                ),
                body: TabBarView(
                  children: [
                    Column(
                      children: <Widget> [
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
                                      int taskId = _subTasks[index].taskId;
                                      int neighborhoodId = widget.id;
                                      Navigator.pushNamed(
                                          context, '/Neighborhoods/$neighborhoodId/tasks/$taskId');
                                    },
                                    trailing: Container(
                                      width: 80,
                                      child: Row(
                                          children: <Widget> [
                                            _subTasks[index].status == 0
                                                ? Icon(Icons.radio_button_unchecked)
                                                : (( _subTasks[index].status == 1) ? Icon(
                                                Icons.radio_button_unchecked,
                                                color: Colors.yellow) : Icon(
                                                Icons.done, color: Colors.green)),
                                          ]
                                      ),
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
                    Column(
                      children: <Widget> [
                        Expanded(
                      child: ListView.builder(
                        itemCount: _tasks.length,
                        itemBuilder: (context, index) {
                          return Card(
                            child: StatefulBuilder(builder: (BuildContext context, StateSetter stState) {
                              return Column(
                                  children: <Widget>[
                                    ListTile(
                                        title: Text(
                                          '${_tasks[index].title}',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),),
                                        leading: Icon(Icons.note,),
                                        subtitle: Text(
                                          'Start Date: ${_tasks[index].startDate
                                              .day}/${_tasks[index].startDate
                                              .month}/${_tasks[index].startDate
                                              .year}\nEnd Date: ${_tasks[index]
                                              .closeDate.day}/${_tasks[index]
                                              .closeDate.month}/${_tasks[index]
                                              .closeDate.year}',
                                          style: TextStyle(
                                              color: Colors.black),),
                                        onTap: () {
                                          int neighborhoodId = widget.id;
                                          int taskId = _tasks[index].id;
                                           Navigator
                                              .pushNamed(
                                              context,
                                              '/Neighborhoods/$neighborhoodId/tasks/$taskId');
                                        },
                                        trailing: Container(
                                          width: 80,
                                          child: Row(
                                              children: <Widget>[
                                                _tasks[index].status == 0
                                                    ? Icon(
                                                    Icons.radio_button_unchecked)
                                                    : ((_tasks[index].status == 1)
                                                    ? Icon(
                                                    Icons.radio_button_unchecked,
                                                    color: Colors.yellow)
                                                    : Icon(
                                                    Icons.done,
                                                    color: Colors.green)),
                                              ]
                                          ),
                                        )
                                    ),
                                  ]

                              );
                            }
                            ),
                            );

                        },
                      ),
                    ),
                    ]
                  ),
                  ]
                ),
              ),
            );
          } else {
            return CircularProgressIndicator();
          }
        }
    );
  }
}

