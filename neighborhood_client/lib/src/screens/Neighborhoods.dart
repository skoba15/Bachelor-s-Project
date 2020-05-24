import 'package:flutter/material.dart';
import 'package:grpc/service_api.dart';
import 'package:neighborhood_client/src/generated/bachelors.pbgrpc.dart';
import 'package:neighborhood_client/src/grpc/ClientSingleton.dart';
import 'package:flutter/src/widgets/async.dart' as a;

class Neighborhoods extends StatefulWidget {
  @override
  _NeighborhoodsState createState() => _NeighborhoodsState();
}

class _NeighborhoodsState extends State<Neighborhoods> {

  GetMyNeighborhoodResponse _response;

  Future<String> getMyNeighborhoodsList(int id) async{
    _response = await ServiceClient(ClientSingleton().getChannel()).getMyNeighborhoodList(GetMyNeighborhoodRequest()..dummy = 1);
    print(_response.neighborhood.length);
    return Future.value("WTF");
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
        future: getMyNeighborhoodsList(107),
        builder: (context, AsyncSnapshot<String> snapshot) {
          if (snapshot.connectionState == a.ConnectionState.done) {
            return DefaultTabController(
              length: 2,
              child: Scaffold(
                appBar: AppBar(
                  title: Text('Neighborhood App'),
                  backgroundColor: Colors.black,
                  centerTitle: true,
                  bottom: TabBar(
                      tabs: [
                        Tab(icon: Icon(Icons.people), text: 'MY NEIGHBORHOODS'),
                        Tab(icon: Icon(Icons.store), text: 'ALL NEIGHBORHOODS',),
                      ]
                  ),
                ),
                body: TabBarView(
                  children: [
                  ],
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
