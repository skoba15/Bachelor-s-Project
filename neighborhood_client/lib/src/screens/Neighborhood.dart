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

  List<Post> _posts;

  List<bool> _showComment;

  bool _showPost = false;

  TextEditingController _postController = new TextEditingController();

  List<TextEditingController> _commentControllers = new List<TextEditingController>();


  Future<String> getPreferences() async {
    _prefs = await SharedPreferences.getInstance();
    if(_prefs.get('jwt') == null) {
      Navigator.pop(context);
      return null;
    }
    _neighborhoodId = widget.id;
    GetPostsByNeighborhoodResponse response = await ServiceClient(ClientSingleton().getChannel())
        .getPostsByNeighborhood(GetPostsByNeighborhoodRequest()
      ..neighborhoodId = _neighborhoodId);
    _posts = response.post;
    for (int i = 0; i < _posts.length; i++) {
      TextEditingController controller = new TextEditingController();
      _commentControllers.add(controller);
    }
    _showComment = new List<bool>.filled(_posts.length, false, growable: true);
    print(_posts[0].comment.length);

    IsManagerResponse managerResponse = await ServiceClient(
        ClientSingleton().getChannel(),
        options: CallOptions(metadata: {'jwt': _prefs.get('jwt')}))
        .isManager(IsManagerRequest()
      ..neighborhoodId = _neighborhoodId);
    _isManager = (managerResponse.resultCode == 'Y') ? 1 : 0;
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
                              int id = widget.id;
                              Navigator.pushNamed(context, 'Neighborhoods/$id/Requests');
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
                              int neighborhoodId = widget.id;
                              Navigator.pushNamed(
                                  context, 'Neighborhoods/$neighborhoodId/tasks');
                            },
                          ),
                        ListTile(
                          leading: Icon(Icons.search),
                          title: Text('Search Items', style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),),
                          onTap: () {
                            int neighborhoodId = widget.id;
                            Navigator.pushNamed(
                                context, 'Neighborhoods/$neighborhoodId/Search/1');
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.search),
                          title: Text('Search Car', style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),),
                          onTap: () {
                            int neighborhoodId = widget.id;
                            Navigator.pushNamed(
                                context, 'Neighborhoods/$neighborhoodId/Search/2');
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.keyboard_backspace),
                          title: Text('Neighborhoods', style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),),
                          onTap: () {
                            Navigator.pushReplacementNamed(
                                context, 'Neighborhoods');
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
              appBar: AppBar(
                title: Text('Neighborhood App'),
                backgroundColor: Colors.black,
                centerTitle: true,
              ),
              body: StatefulBuilder(builder: (BuildContext context, StateSetter stState) {
                return Padding(
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
                              borderRadius: BorderRadius.all(
                                  Radius.circular(10.0)),
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(10.0)),
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                          ),
                          controller: _postController,
                        ),
                        RaisedButton(
                          color: Colors.black,
                          textColor: Colors.white,
                          onPressed: () async {
                            String text = _postController.text;
                            if (text != "") {
                              Post post = new Post()
                                ..text = text
                                ..neighborhoodId = _neighborhoodId;
                              AddPostResponse response = await ServiceClient(
                                  ClientSingleton().getChannel(), options: CallOptions(metadata: {'jwt': _prefs.get('jwt')}))
                                  .addPost(AddPostRequest()
                                ..post = post);
                              Post resultPost = response.post;
                              stState(() {
                                _commentControllers.insert(
                                    0, new TextEditingController());
                                _posts.insert(0, resultPost);
                                _showComment.insert(0, false);
                              });
                            }
                          },
                          child: Text('Post'),
                        ),
                        SizedBox(height: 20,),
                        Expanded(
                            child: ListView.builder(
                                itemCount: _posts.length,
                                itemBuilder: (context, index) {
                                  return Column(
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start,
                                      children: <Widget>[
                                        Row(
                                            children: <Widget>[
                                              Text(
                                                _posts[index].userFullName,
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                ),
                                              ),
                                              new Spacer(),
                                              Text(
                                                '${_posts[index].createDate
                                                    .day}/${_posts[index]
                                                    .createDate
                                                    .month}/${_posts[index]
                                                    .createDate.year}',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 11,
                                                ),
                                              ),
                                            ]
                                        ),
                                        SizedBox(height: 10,),
                                        Text(_posts[index].text),
                                        IconButton(
                                          iconSize: 15,
                                          icon: Icon(Icons.chat_bubble_outline),
                                          onPressed: () {
                                            stState(() {
                                              _showComment[index] =
                                              !_showComment[index];
                                            });
                                          },
                                        ),
                                        if(_showComment[index])  Column(
                                                  children: <Widget>[
                                                    ListView.builder(
                                                        shrinkWrap: true,
                                                        itemCount: _posts[index]
                                                            .comment.length,
                                                        itemBuilder: (context,
                                                            commentIndex) {
                                                          return Column(
                                                              crossAxisAlignment: CrossAxisAlignment
                                                                  .start,
                                                              children: <
                                                                  Widget>[
                                                                Padding(
                                                                    padding: const EdgeInsets
                                                                        .fromLTRB(
                                                                        15.0, 0,
                                                                        0, 0),
                                                                    child: Column(
                                                                      crossAxisAlignment: CrossAxisAlignment
                                                                          .start,
                                                                      children: <
                                                                          Widget>[
                                                                        Row(
                                                                            children: <Widget>[
                                                                              Text(
                                                                                _posts[index]
                                                                                    .comment[commentIndex]
                                                                                    .userFullName,
                                                                                style: TextStyle(
                                                                                    fontWeight: FontWeight
                                                                                        .bold,
                                                                                    fontSize: 12),
                                                                              ),
                                                                              new Spacer(),
                                                                              Text(
                                                                                '${_posts[index]
                                                                                    .createDate
                                                                                    .day}/${_posts[index]
                                                                                    .createDate
                                                                                    .month}/${_posts[index]
                                                                                    .createDate
                                                                                    .year}',
                                                                                style: TextStyle(
                                                                                  fontWeight: FontWeight
                                                                                      .w300,
                                                                                  fontSize: 11,
                                                                                ),
                                                                              )
                                                                            ]
                                                                        ),
                                                                        Text(
                                                                            _posts[index]
                                                                                .comment[commentIndex]
                                                                                .text),
                                                                      ],
                                                                    )
                                                                ),
                                                                SizedBox(
                                                                  height: 10,)
                                                              ]
                                                          );
                                                        }
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets
                                                          .fromLTRB(
                                                          15.0, 0, 0, 0),
                                                      child: Row(
                                                          children: <Widget>[
                                                            Expanded(
                                                              child: new TextField(
                                                                minLines: 1,
                                                                maxLines: 5,
                                                                decoration: new InputDecoration(
                                                                  hintText: 'Write your comment here',
                                                                  fillColor: Colors
                                                                      .white,
                                                                  border: new OutlineInputBorder(
                                                                    borderRadius: new BorderRadius
                                                                        .circular(
                                                                        5.0),
                                                                    borderSide: new BorderSide(
                                                                    ),
                                                                  ),
                                                                ),
                                                                style: TextStyle(
                                                                    fontSize: 12
                                                                ),
                                                                controller: _commentControllers[index],
                                                              ),
                                                            ),
                                                            IconButton(
                                                              icon: Icon(
                                                                  Icons.send),
                                                              onPressed: () async {
                                                                String commentText = _commentControllers[index]
                                                                    .text;
                                                                if (commentText !=
                                                                    "") {
                                                                  print(
                                                                      _posts[index]
                                                                          .id);
                                                                  Comment comment = new Comment()
                                                                    ..text = commentText
                                                                    ..postId = _posts[index]
                                                                        .id;
                                                                  print(DateTime.now());
                                                                  AddCommentResponse response = await ServiceClient(
                                                                      ClientSingleton()
                                                                          .getChannel(), options: CallOptions(metadata: {'jwt': _prefs.get('jwt')}))
                                                                      .addComment(
                                                                      AddCommentRequest()
                                                                        ..comment = comment);
                                                                  Comment resultComment = response
                                                                      .comment;
                                                                  stState(() {
                                                                    print(DateTime.now());
                                                                    _posts[index]
                                                                        .comment
                                                                        .add(
                                                                        resultComment);
                                                                  });
                                                                }
                                                              },
                                                            ),
                                                          ]
                                                      ),
                                                    ),
                                                  ]
                                              ),
                                      ]
                                  );
                                }
                            )
                        ),
                      ]
                  ),
                );
              }),
            );
          } else {
            return CircularProgressIndicator();
          }
      }
    );
  }
}
