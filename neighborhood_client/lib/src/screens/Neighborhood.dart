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

  String _postText = "";

  SharedPreferences _prefs;

  bool _showComment = false;

  Future<String> getPreferences() async {
    _neighborhoodId = widget.id;
    _prefs = await SharedPreferences.getInstance();
//    IsManagerResponse managerResponse = await ServiceClient(
//        ClientSingleton().getChannel(),
//        options: CallOptions(metadata: {'jwt': _prefs.get('jwt')}))
//        .isManager(IsManagerRequest()
//      ..neighborhoodId = _neighborhoodId);
//    _isManager = (managerResponse.resultCode == 'Y') ? 1 : 0;
    return Future.value("done");
  }

  @override
  Widget build(BuildContext context) {

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
                            leading: Icon(Icons.assignment),
                            title: Text('Tasks', style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),),
                            onTap: () async {
//                              UserIdResponse idResponse = await ServiceClient(
//                                  ClientSingleton().getChannel(),
//                                  options: CallOptions(
//                                      metadata: {'jwt': _prefs.get('jwt')}))
//                                  .userId(UserIdRequest()
//                                ..dummy = 1);
                              int id = 139;
                              Navigator.pushNamed(
                                  context, '/Tasks/$id');
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
              body: Padding(
                padding: const EdgeInsets.all(40.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    TextField(
                        minLines: 1,
                        maxLines: 15,
                        autocorrect: false,
                        decoration: InputDecoration(
                          hintText: 'What\'s on your mind? ',
                          filled: true,
                          fillColor: Color(0xFFDBEDFF),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                        ),
                    ),
                    RaisedButton(
                      color: Colors.black,
                      textColor: Colors.white,
                      onPressed: () async {
                        if (_postText != "") {

                        }
                        else {
                          setState(() {

                          });
                        }
                      },
                      child: Text('Post'),
                    ),
                    SizedBox(height: 20,),
                    Expanded(
                      child: ListView.builder(
                        itemCount: 2,
                        itemBuilder: (context, index) {
                          return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget> [
                                    Text(
                                      "Shota Kobakhidze",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                    ),
                                    new Spacer(),
                                    Text(
                                    "10/06/2020",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 11,
                                      ),
                                    ),
                                  ]
                                ),
                                SizedBox(height: 10,),
                                Text('esaa chemi teqsti'),
                                IconButton(
                                  iconSize: 15,
                                  icon: Icon(Icons.chat_bubble_outline),
                                  onPressed: () {
                                    setState(() {
                                      _showComment = !_showComment;
                                    });
                                  },
                                ),
                                if(_showComment) ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: 1,
                                  itemBuilder: (context, index) {
                                    return Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding : const EdgeInsets.fromLTRB(15.0, 0, 0, 0),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Text(
                                                  "Shota Kobakhidze",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                  fontSize: 12),
                                                ),
                                                Text('esaa chemi teqstiesaa chemi teqstiesaa chemi teqstiesaa chemi teqstiesaa chemi teqstiesaa chemi teqstiesaa chemi teqstiesaa chemi teqstiesaa chemi teqstiesaa chemi teqstiesaa chemi teqstiesaa chemi teqstiesaa chemi teqsti'),
                                              ],
                                            )
                                          ),
                                        ]
                                    );
                                  }
                                ),
                                if(_showComment)
                                    Padding(
                                      padding : const EdgeInsets.fromLTRB(15.0, 0, 0, 0),
                                      child: Row(
                                        children: <Widget> [
                                          Expanded(
                                            child: new TextField(
                                              minLines: 1,
                                              maxLines: 5,
                                              decoration: new InputDecoration(
                                                hintText: 'Write your comment here',
                                                fillColor: Colors.white,
                                                border: new OutlineInputBorder(
                                                  borderRadius: new BorderRadius.circular(5.0),
                                                  borderSide: new BorderSide(
                                                  ),
                                                ),
                                              ),
                                              style: TextStyle(
                                                fontSize: 12
                                              ),
                                            ),
                                          ),
                                          IconButton(
                                           icon: Icon(Icons.send),
                                            onPressed: () {

                                            },
                                          ),
                                        ]
                                      ),
                                  ),
                            ]
                          );
                        }
                      ),
                    )
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
