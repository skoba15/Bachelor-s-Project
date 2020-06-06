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

  Future<String> getMyNeighborhoodsList() async {
    GetTaskByNeighborhoodResponse response = await ServiceClient(ClientSingleton().getChannel())
        .getTaskByNeighborhood(GetTaskByNeighborhoodRequest()
      ..neighborhoodId = widget.id);
    _tasks = response.tasks;
    print(_tasks.length);
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
                    int id = 139;
                    Navigator.pushReplacementNamed(
                        context, '/CreateTask/$id');
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
                    ListView.builder(
                      itemCount: _tasks.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: Column(
                              children: <Widget>[
                                ListTile(
                                  title: Text(
                                    '${_tasks[index].title}',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),),
                                  leading: Icon(Icons.note,),
                                  subtitle: Text(
                                    'Start Date: ${_tasks[index].startDate.day}/${_tasks[index].startDate.month}/${_tasks[index].startDate.year}\nEnd Date: ${_tasks[index].closeDate.day}/${_tasks[index].closeDate.month}/${_tasks[index].closeDate.year}',
                                    style: TextStyle(
                                        color: Colors.black),),
                                  onTap: () {
//                                    int idd = _response.neighborhood[index].id;
//                                    Navigator.pushNamed(
//                                        context, '/Neighborhood/$idd');
                                  },
                                  trailing: Text(_tasks[index].status),
                                ),
                              ]

                          ),

                        );
                      },
                    ),
                    ListView.builder(
                      itemCount: _tasks.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: Column(
                              children: <Widget>[
                                ListTile(
                                  title: Text(
                                    '${_tasks[index].title}',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),),
                                  leading: Icon(Icons.note,),
                                  subtitle: Text(
                                    'Start Date: ${_tasks[index].startDate.day}/${_tasks[index].startDate.month}/${_tasks[index].startDate.year}\nEnd Date: ${_tasks[index].closeDate.day}/${_tasks[index].closeDate.month}/${_tasks[index].closeDate.year}',
                                    style: TextStyle(
                                        color: Colors.black),),
                                  onTap: () {
                                    int idd = _tasks[index].id;
                                    Navigator.pushNamed(
                                        context, '/task/$idd');
                                  },
                                  trailing: Text(_tasks[index].status),
                                ),
                              ]

                          ),

                        );
                      },
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

