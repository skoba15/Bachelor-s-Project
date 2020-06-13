import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:grpc/service_api.dart';
import 'package:neighborhood_client/src/generated/bachelors.pbgrpc.dart';
import 'package:neighborhood_client/src/grpc/ClientSingleton.dart';
import 'package:flutter/src/widgets/async.dart' as a;
import 'package:shared_preferences/shared_preferences.dart';

class Search extends StatefulWidget {

  final int type;

  final int neighborhoodId;

  Search({Key key, @required this.type, @required this.neighborhoodId}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {


  TextEditingController _searchController = new TextEditingController();

  List<UserInfoItem> itemResults = new List<UserInfoItem>();

  int _found = 0;


  UserInfoItem _carResult = new UserInfoItem();

  SharedPreferences _prefs;

  int _started = 0;

  Future<String> getData() async {
    _prefs = await SharedPreferences.getInstance();
    return Future.value("done");
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
        future: getData(),
        builder: (context, AsyncSnapshot<String> snapshot) {
          if (snapshot.connectionState == a.ConnectionState.done) {
               return Scaffold(
                  appBar: AppBar(
                    title: Text('Neighborhood App'),
                    backgroundColor: Colors.black,
                    centerTitle: true,
                  ),
                  body: StatefulBuilder (builder: (BuildContext context, StateSetter stState)
                {
                  return Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                            children: <Widget>[
                              Expanded(
                                child: TextField(
                                  autocorrect: false,
                                  decoration: InputDecoration(
                                    hintText: 'Search for ${(widget.type == 1)
                                        ? 'item '
                                        : 'car '}',
                                    filled: true,
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                      borderSide: BorderSide(
                                          color: Colors.grey),
                                    ),
                                  ),
                                  controller: _searchController,
                                ),
                              ),
                              IconButton(
                                iconSize: 15,
                                icon: Icon(Icons.search),
                                onPressed: () async {
                                  if(widget.type == 1) {
                                      SearchItemResponse response = await ServiceClient(
                                          ClientSingleton().getChannel(),
                                          options: CallOptions(
                                              metadata: {
                                                'jwt': _prefs.get('jwt')
                                              }))
                                          .searchItem(SearchItemRequest()
                                        ..neighborhoodId = widget.neighborhoodId
                                        ..itemName = _searchController.text);
                                      stState(() {
                                        _started = 1;
                                        if(response.users.length == 0) {
                                          _found = 0;
                                        }
                                        else {
                                          _found = 1;
                                          itemResults = response.users;
                                        }
                                      });
                                  }
                                  else {
                                    GetContactByCarResponse response = await ServiceClient(
                                        ClientSingleton().getChannel(),
                                        options: CallOptions(
                                            metadata: {
                                              'jwt': _prefs.get('jwt')
                                            }))
                                        .getContactByCar(GetContactByCarRequest()
                                      ..neighborhoodId = widget.neighborhoodId..plateNumber = _searchController.text);
                                    stState(() {
                                      print(_searchController.text);
                                      _started = 1;
                                      if(response.resultCode !=  "Success") {
                                        _found = 0;
                                      }
                                      else {
                                        _found = 1;
                                        _carResult = response.user;
                                      }
                                    });
                                  }
                                },
                              ),
                            ]
                        ),
                        if(widget.type == 1 && _found == 1)Expanded(
                          child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: itemResults.length,
                              itemBuilder: (context, index) {
                                return Card(
                                  child: Column(
                                      children: <Widget>[
                                        ListTile(
                                          title: RichText(
                                              text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                        text: '${itemResults[index]
                                                            .userFullName}',
                                                        recognizer: TapGestureRecognizer()
                                                          ..onTap = () {
                                                            int idd = itemResults[index]
                                                                .userId;
                                                            Navigator.pushNamed(
                                                                context,
                                                                'Profile/$idd');
                                                          },
                                                        style: TextStyle(
                                                            color: Colors.blue,
                                                            fontSize: 20,
                                                            fontWeight: FontWeight
                                                                .bold)
                                                    ),
                                                  ]
                                              )
                                          ),
                                        ),
                                      ]
                                  ),
                                );
                              }
                          ),
                        ),
                        if(widget.type == 2 && _found == 1)Card(
                                  child: Column(
                                      children: <Widget>[
                                        ListTile(
                                          title: RichText(
                                              text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                        text: '${
                                                            _carResult.userFullName}',
                                                        recognizer: TapGestureRecognizer()
                                                          ..onTap = () {
                                                            int idd = _carResult.userId;
                                                            Navigator.pushNamed(
                                                                context,
                                                                'Profile/$idd');
                                                          },
                                                        style: TextStyle(
                                                            color: Colors.blue,
                                                            fontSize: 20,
                                                            fontWeight: FontWeight
                                                                .bold)
                                                    ),
                                                  ]
                                              )
                                          ),
                                        ),
                                      ]
                                  ),
                                ),
                        if((_found == 0 && _started == 1) || (_found == 0 && _started == 1)) Text('No matches found')
                      ],
                    ),
                  );
                }
              )
            );
          } else {
            return CircularProgressIndicator();
          }
        }
    );
  }
}