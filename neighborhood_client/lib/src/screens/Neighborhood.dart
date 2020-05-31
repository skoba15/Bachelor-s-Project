import 'package:flutter/material.dart';
import 'package:grpc/service_api.dart';
import 'package:neighborhood_client/src/generated/bachelors.pbgrpc.dart';
import 'package:neighborhood_client/src/grpc/ClientSingleton.dart';
import 'package:flutter/src/widgets/async.dart' as a;
import 'package:shared_preferences/shared_preferences.dart';

class Neighborhood extends StatefulWidget {

  final int id;

  Neighborhood({Key key, @required this.id}) : super(key: key);

  @override
  _NeighborhoodState createState() => _NeighborhoodState();
}


class _NeighborhoodState extends State<Neighborhood> {


  int _isManager = 1;
  int _neighborhoodId;

  SharedPreferences _prefs;

  Future<String> getPreferences() async {
    _prefs = await SharedPreferences.getInstance();
    return Future.value("done");
  }

  @override
  Widget build(BuildContext context) {
    _neighborhoodId = widget.id;
    return FutureBuilder < String > (
        future: getPreferences(),
        builder: (context, AsyncSnapshot<String> snapshot) {
          if (snapshot.connectionState == a.ConnectionState.done) {
            return Scaffold(
              drawer: Drawer(
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: <Widget>[
                          DrawerHeader(
                            decoration: BoxDecoration(
                                color: Colors.yellow,
                            ),
                          ),
                          if(_isManager == 1)ListTile(
                            leading: Icon(Icons.accessibility),
                            title: Text('Requests', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                            onTap: () {
                              Navigator.pushNamed(context, '/Requests/$_neighborhoodId');
                            },
                          ),
                          ListTile(
                            leading: Icon(Icons.person),
                            title: Text('Profile', style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),),
                            onTap: () async {
                              UserIdResponse idResponse = await ServiceClient(
                                  ClientSingleton().getChannel(),
                                  options: CallOptions(
                                      metadata: {'jwt': _prefs.get('jwt')}))
                                  .userId(UserIdRequest()
                                ..dummy = 1);
                              int id = idResponse.id;
                              Navigator.pushNamed(
                                  context, '/Profile/$id');
                              },
                          ),
                          ListTile(
                            leading: Icon(Icons.keyboard_backspace),
                            title: Text('Back', style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),),
                            onTap: () {
                              Navigator.pushReplacementNamed(
                                  context, '/Neighborhoods');
                            },
                          ),
                    ],
                ),
              ),
              appBar: AppBar(
                title: Text('Neighborhood App'),
                backgroundColor: Colors.black,
                centerTitle: true,
              ),
            );
          } else {
            return CircularProgressIndicator();
          }
      }
    );
  }
}
