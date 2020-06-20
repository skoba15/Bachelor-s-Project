import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:grpc/service_api.dart';
import 'package:neighborhood_client/src/Internationalization.dart';
import 'package:neighborhood_client/src/generated/bachelors.pbgrpc.dart';
import 'package:neighborhood_client/src/grpc/ClientSingleton.dart';
import 'package:flutter/src/widgets/async.dart' as a;
import 'package:shared_preferences/shared_preferences.dart';

class Requests extends StatefulWidget {

  final int id;

  Requests({Key key, @required this.id}) : super(key: key);

  @override
  _RequestsState createState() => _RequestsState();
}


class _RequestsState extends State<Requests> {


  GetUserRequestListResponse _requests;
  List<GetUserRequestListResponseItem> _userRequests;
  List<int> _statuses;
  SharedPreferences _prefs;
  int _neighborhoodId;


  Future<String> getRequests() async {
    _prefs = await SharedPreferences.getInstance();
    if(_prefs.get('jwt') == null) {
      Navigator.pop(context);
      return null;
    }
    _neighborhoodId = widget.id;
    _requests = await ServiceClient(ClientSingleton().getChannel(),
        options: CallOptions(
            metadata: {'jwt': _prefs.get('jwt')})).getUserRequestList(
        GetUserRequestListRequest()
          ..neighborhoodId = widget.id);
    _userRequests = _requests.requests;
    _statuses = List.filled(_userRequests.length, 0);
    return Future.value("WTF");
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String> (
      future: getRequests(),
      builder: (context, AsyncSnapshot<String> snapshot) {
        if (snapshot.connectionState == a.ConnectionState.done) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Neighborhood App'),
              backgroundColor: Colors.black,
              centerTitle: true,
            ),
            body: ListView.builder(
                itemCount: _userRequests.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: StatefulBuilder(builder: (BuildContext context, StateSetter stState) {
                      return Column(
                        children: <Widget>[
                            ListTile(
                              title: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: '${_userRequests[index].userName}',
                                        recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                            int idd = _userRequests[index].userId;
                                            Navigator.pushNamed(context, '/Profile/$idd');
                                          },
                                        style: TextStyle(color: Colors.blue, fontSize: 20, fontWeight: FontWeight.bold)
                                      ),
                                      TextSpan(text: Internationalization.getValue(' wants to join the neighborhood'), style: TextStyle(color : Colors.black, fontSize: 15, fontWeight: FontWeight.bold)),
                                    ]
                                  )
                              ),
                              onTap: () {

                              },
                              trailing: (_statuses[index] == 0) ? Container(
                                width: 120,
                                child: Row(
                                  children: <Widget>[
                                    IconButton(
                                      icon: Icon(Icons.done),
                                      color: Colors.green,
                                      onPressed: () async {
                                        stState(() {
                                          _statuses[index] = 1;
                                        });
                                        await ServiceClient(ClientSingleton()
                                            .getChannel(), options: CallOptions(
                                            metadata: {
                                              'jwt': _prefs.get('jwt')
                                            })).approveUserToNeighborhood(
                                            ApproveUserToNeighborhoodRequest()
                                              ..neighborhoodId = _neighborhoodId..userId = _userRequests[index].userId);
                                      },
                                    ),
                                    SizedBox(width: 15,),
                                    IconButton(
                                      icon: Icon(Icons.cancel),
                                      color: Colors.red,
                                      onPressed: () async {
                                        stState(() {
                                          _statuses[index] = -1;
                                        });
                                        await ServiceClient(ClientSingleton()
                                            .getChannel(), options: CallOptions(
                                            metadata: {
                                              'jwt': _prefs.get('jwt')
                                            }))
                                            .rejectUserFromNeighborhood(
                                            RejectUserToNeighborhoodRequest()
                                              ..neighborhoodId = _neighborhoodId
                                              ..userId = _userRequests[index]
                                                  .userId);

                                      },
                                    ),
                                  ],
                                ),
                              )
                              : ((_statuses[index] == -1) ? Text(Internationalization.getValue('REJECTED'), style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.red),) : Text(
                      Internationalization.getValue('ACCEPTED'), style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.green),))
                        ),
                        ]
                      );
                    }
                    ),
                  );
                }
            ),
          );
        } else {
          return CircularProgressIndicator();
        }
      }
    );
  }
}
