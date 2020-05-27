import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:grpc/service_api.dart';
import 'package:neighborhood_client/src/generated/bachelors.pbgrpc.dart';
import 'package:neighborhood_client/src/grpc/ClientSingleton.dart';
import 'package:flutter/src/widgets/async.dart' as a;

class Requests extends StatefulWidget {
  @override
  _RequestsState createState() => _RequestsState();
}


class _RequestsState extends State<Requests> {


  GetUserRequestListResponse _requests;
  List<GetUserRequestListResponseItem> _userRequests;
  List<int> _statuses;

  Future<String> getRequests(int id) async {
    _requests = await ServiceClient(ClientSingleton().getChannel()).getUserRequestList(
        GetUserRequestListRequest()
          ..neighborhoodId = 139);
    _userRequests = _requests.requests;
    _statuses = List.filled(_userRequests.length, 0);
    return Future.value("WTF");
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String> (
      future: getRequests(5),
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
                                            print("yeah");
                                          },
                                        style: TextStyle(color: Colors.blue, fontSize: 20, fontWeight: FontWeight.bold)
                                      ),
                                      TextSpan(text: ' wants to join the neighborhood', style: TextStyle(color : Colors.black, fontSize: 15, fontWeight: FontWeight.bold)),
                                    ]
                                  )
                              ),
                              onTap: () {

                              },
                              trailing: (_statuses[index] == 0) ? Container(
                                width: 250,
                                child: Row(
                                  children: <Widget>[
                                    RaisedButton(
                                      child: Text(
                                          'ACCEPT'
                                      ),
                                      color: Colors.green,
                                      textColor: Colors.white,
                                      onPressed: () async {
                                        stState(() {
                                          _statuses[index] = 1;
                                        });
                                        await ServiceClient(ClientSingleton()
                                            .getChannel()).approveUserToNeighborhood(
                                            ApproveUserToNeighborhoodRequest()
                                              ..neighborhoodId = 139..userId = _userRequests[index].userId);
                                      },
                                    ),
                                    SizedBox(width: 15,),
                                    RaisedButton(
                                      child: Text(
                                          'REJECT'
                                      ),
                                      color: Colors.red,
                                      textColor: Colors.white,
                                      onPressed: () async {
                                        stState(() {
                                          _statuses[index] = -1;
                                        });
                                        await ServiceClient(ClientSingleton()
                                            .getChannel())
                                            .rejectUserFromNeighborhood(
                                            RejectUserToNeighborhoodRequest()
                                              ..neighborhoodId = 139
                                              ..userId = _userRequests[index]
                                                  .userId);

                                      },
                                    ),
                                  ],
                                ),
                              )
                              : ((_statuses[index] == -1) ? Text('REJECTED', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.red),) : Text(
                                'ACCEPTED', style: TextStyle(
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
