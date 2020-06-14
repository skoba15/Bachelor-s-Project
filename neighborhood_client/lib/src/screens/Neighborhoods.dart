import 'package:flutter/material.dart';
import 'package:grpc/service_api.dart';
import 'package:neighborhood_client/src/generated/bachelors.pbgrpc.dart';
import 'package:neighborhood_client/src/grpc/ClientSingleton.dart';
import 'package:flutter/src/widgets/async.dart' as a;
import 'package:shared_preferences/shared_preferences.dart';

class Neighborhoods extends StatefulWidget {
  @override
  _NeighborhoodsState createState() => _NeighborhoodsState();
}

class _NeighborhoodsState extends State<Neighborhoods> {

  GetMyNeighborhoodResponse _response;

  GetOtherNeighborhoodResponse _response2;

  SharedPreferences _prefs;


  Future<String> getMyNeighborhoodsList() async{
    _prefs = await SharedPreferences.getInstance();
    _response = await ServiceClient(ClientSingleton().getChannel()).getMyNeighborhoodList(GetMyNeighborhoodRequest()..dummy = 1,
        options: CallOptions(
            metadata: {
              'jwt': _prefs.get('jwt')
            }));
    _response2 = await ServiceClient(ClientSingleton().getChannel()).getOtherNeighborhoodList(GetOtherNeighborhoodRequest()..dummy = 1,
        options: CallOptions(
            metadata: {
              'jwt': _prefs.get('jwt')
            }));
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
                        leading: Icon(Icons.people),
                        title: Text('Neighborhoods', style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),),
                        onTap: () {
                          Navigator.pushReplacementNamed(context, 'Neighborhoods');
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
                              context, 'Profile/$id');
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.exit_to_app),
                        title: Text('Sign Out', style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),),
                        onTap: () {
                          _prefs.remove('jwt');
                          Navigator.of(context).popUntil((route) => route.isFirst);
                          Navigator.pushReplacementNamed(context, 'login');
                        },
                      ),
                    ],
                  ),
                ),
                floatingActionButton: FloatingActionButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, 'CreateNeighborhood');
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
                                      int idd = _response.neighborhood[index].id;
                                      Navigator.pushNamed(
                                          context, 'Neighborhoods/$idd');
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
                          child: StatefulBuilder(builder: (BuildContext context, StateSetter stState) {
                            return Column(
                                children: <Widget>[
                                  ListTile(
                                    title: Text(
                                      '${_response2.neighborhood[index].name}',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),),
                                    leading: Icon(Icons.perm_identity,
                                      color: _response2.neighborhood[index]
                                          .isManager == 1
                                          ? Colors.green
                                          : Colors
                                          .black,),
                                    subtitle: Text(
                                      '${_response2.neighborhood[index]
                                          .city}, ${_response2
                                          .neighborhood[index]
                                          .district}, ${_response2
                                          .neighborhood[index].address}',
                                      style: TextStyle(
                                          color: Colors.black),),
                                    trailing: (_response2.neighborhood[index].status == 0)
                                        ? FlatButton.icon(
                                        icon: Icon(Icons.send),
                                        label: Text('SEND REQUEST'),
                                        onPressed: () async {
                                          stState(()  {
                                            _response2.neighborhood[index]
                                                .status = 1;
                                          });
                                          await ServiceClient(ClientSingleton()
                                              .getChannel(),
                                              options: CallOptions(
                                                  metadata: {
                                                    'jwt': _prefs.get('jwt')
                                                  }))
                                              .addUserToNeighborhood(
                                              AddUserToNeighborhoodRequest()
                                                ..neighborhoodId = _response2
                                                    .neighborhood[index].id);
                                        })
                                        : Text('PENDING', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.orange),),

                                  ),
                                ]

                            );
                            }
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
