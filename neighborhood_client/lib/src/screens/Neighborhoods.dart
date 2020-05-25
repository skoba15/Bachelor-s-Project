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

  GetOtherNeighborhoodResponse _response2;

  Future<String> getMyNeighborhoodsList(int id) async{
    _response = await ServiceClient(ClientSingleton().getChannel()).getMyNeighborhoodList(GetMyNeighborhoodRequest()..dummy = 1);
    _response2 = await ServiceClient(ClientSingleton().getChannel()).getOtherNeighborhoodList(GetOtherNeighborhoodRequest()..dummy = 1);
    return Future.value("WTF");
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
        future: getMyNeighborhoodsList(5),
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
                        Tab(icon: Icon(Icons.store), text: 'OTHER NEIGHBORHOODS',),
                      ]
                  ),
                ),
                body: TabBarView(
                  children: [
                      ListView.builder(
                          itemCount: _response.neighborhood.length,
                          itemBuilder: (context, index) {
                            return Card(
                              child: Column(
                                children: <Widget>[
                                   ListTile(
                                    title: Text(
                                      '${_response.neighborhood[index].name}',
                                      style: TextStyle(
                                          color: Colors.black, fontWeight: FontWeight.bold),),
                                    leading : Icon(Icons.perm_identity, color : _response.neighborhood[index].isManager == 1 ? Colors.green : Colors.black,),
                                    subtitle: Text(
                                      '${_response.neighborhood[index].city}, ${_response.neighborhood[index].district}, ${_response.neighborhood[index].address}',
                                      style: TextStyle(
                                          color: Colors.black),),
                                    onTap: () {
  
                                    },

                                  ),
                                ]

                              ),

                            );
                          },
                    ),
                    ListView.builder(
                      itemCount: _response2.neighborhood.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: Column(
                              children: <Widget>[
                                ListTile(
                                  title: Text(
                                    '${_response2.neighborhood[index].name}',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),),
                                  leading: Icon(Icons.perm_identity,
                                    color: _response2.neighborhood[index]
                                        .isManager == 1 ? Colors.green : Colors
                                        .black,),
                                  subtitle: Text(
                                    '${_response2.neighborhood[index]
                                        .city}, ${_response2.neighborhood[index]
                                        .district}, ${_response2
                                        .neighborhood[index].address}',
                                    style: TextStyle(
                                        color: Colors.black),),
                                  onTap: () {

                                  },

                                ),
                              ]

                          ),

                        );
                      },
                    ),
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
