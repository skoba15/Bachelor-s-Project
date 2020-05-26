import 'package:flutter/material.dart';
import 'package:grpc/service_api.dart';
import 'package:neighborhood_client/src/generated/bachelors.pbgrpc.dart';
import 'package:neighborhood_client/src/grpc/ClientSingleton.dart';
import 'package:flutter/src/widgets/async.dart' as a;

class Neighborhood extends StatefulWidget {
  @override
  _NeighborhoodState createState() => _NeighborhoodState();
}

class _NeighborhoodState extends State<Neighborhood> {
  @override
  Widget build(BuildContext context) {
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
                  ListTile(
                    leading: Icon(Icons.accessibility),
                    title: Text('Requests', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                    onTap: () {
                      Navigator.pushNamed(context, '/Requests');
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
      body: Container(
        child: Text('hello'),
      ),
    );
  }
}
