import 'dart:html';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_picker_web/image_picker_web.dart';
import 'package:neighborhood_client/src/generated/bachelors.pb.dart';
import 'package:neighborhood_client/src/generated/bachelors.pbgrpc.dart';
import 'package:neighborhood_client/src/grpc/ClientSingleton.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/src/widgets/async.dart' as a;

class Profile extends StatefulWidget {

  final int id;

  Profile({Key key, @required this.id}) : super(key: key);


  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  bool _phoneEdit = false;
  bool _plateEdit = false;
  bool _addItem = false;
  int _id;
  int _current_id;
  final phoneController = TextEditingController();
  final _plateController = TextEditingController();
  final _addItemController = TextEditingController();
  int _selected = -1;
  Image _image;
  SharedPreferences _prefs;

  UserProfileResponse _profile;

  Future<String> getProfile(int id) async {
    _prefs = await SharedPreferences.getInstance();
    if(_prefs.get('jwt') == null) {
      Navigator.pop(context);
      return null;
    }
     _id = id;
     _profile = await ServiceClient(ClientSingleton().getChannel())
        .userProfile(UserProfileRequest()
      ..userId = id);
     _prefs = await SharedPreferences.getInstance();
     UserIdResponse idResponse =
     await ServiceClient(
         ClientSingleton().getChannel(),
         options: CallOptions(metadata: {'jwt': _prefs.get('jwt')}))
         .userId(UserIdRequest()
       ..dummy = 1);
     _current_id = idResponse.id;
    return Future.value("done");
  }





  @override
  Widget build(context) {
    return FutureBuilder<String>(
        future: getProfile(widget.id),
        builder: (context, AsyncSnapshot<String> snapshot) {
          if (snapshot.connectionState == a.ConnectionState.done) {
            return DefaultTabController(
              length: 2,
              child: Scaffold(
                  backgroundColor: Colors.grey[900],
                  appBar: AppBar(
                    title: Text('Neighborhood App'),
                    backgroundColor: Colors.black,
                    centerTitle: true,
                    bottom: TabBar(
                        tabs:
                        [
                          Tab(icon: Icon(Icons.person), text: 'GENERAL INFO'),
                          Tab(icon: Icon(Icons.format_list_bulleted), text: 'ITEMS',),
                        ]
                    ),
                  ),
                  body: TabBarView(
                    children: [
                      SingleChildScrollView(
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(20, 30, 30, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Center(
                                child: CircleAvatar(
                                  radius: 40,
                                ),
                              ),
                              Divider(
                                height: 50,
                                color: Colors.white,
                              ),
                              Text('USERNAME', style: TextStyle(
                                  color: Colors.grey[400], letterSpacing: 2.0),),
                              SizedBox(height: 10.0),
                              Text(_profile.username, style: TextStyle(
                                  color: Colors.yellow,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold),),
                              SizedBox(height: 15.0),
                              Text('FIRST NAME', style: TextStyle(
                                  color: Colors.grey[400], letterSpacing: 2.0),),
                              SizedBox(height: 10.0),
                              Text(_profile.firstName, style: TextStyle(
                                  color: Colors.yellow,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold),),
                              SizedBox(height: 15.0),
                              Text('LAST NAME', style: TextStyle(
                                  color: Colors.grey[400], letterSpacing: 2.0),),
                              SizedBox(height: 10.0),
                              Text(_profile.lastName, style: TextStyle(
                                  color: Colors.yellow,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold),),
                              SizedBox(height: 15.0),
                              StatefulBuilder(
                                builder: (BuildContext context, StateSetter stState) {
                                  return Column(
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start,
                                    children: <Widget>[
                                      Row(
                                          children: <Widget>[
                                            Text('PHONE NUMBER', style: TextStyle(
                                                color: Colors.grey[400],
                                                letterSpacing: 2.0),),
                                            SizedBox(width: 15,),
                                            if(!_phoneEdit && _id == _current_id) FlatButton.icon(
                                              color: Colors.blue,
                                              icon: Icon(Icons.edit),
                                              //`Icon` to display
                                              label: Text('Edit'),
                                              //`Text` to display
                                              onPressed: () {
                                                stState(() {
                                                  _phoneEdit = true;
                                                });
                                              },
                                            ),
                                          ]
                                      ),
                                      SizedBox(height: 10.0),
                                      if(!_phoneEdit) Text(
                                        _profile.phoneNumber, style: TextStyle(
                                          color: Colors.yellow,
                                          fontSize: 24.0,
                                          fontWeight: FontWeight.bold),),
                                      if(_phoneEdit) Row(
                                          children: <Widget>[
                                            Container(
                                              child: TextField(
                                                keyboardType: TextInputType.phone,
                                                style: TextStyle(
                                                    color: Colors.yellow,
                                                    fontSize: 24.0,
                                                    fontWeight: FontWeight.bold),
                                                controller: phoneController,
                                              ),
                                              width: 200,

                                            ),
                                            RaisedButton(
                                              child: Text(
                                                  'SAVE'
                                              ),
                                              color: Colors.green,
                                              textColor: Colors.white,
                                              onPressed: () async {
                                                EditPhoneNumberResponse response = await ServiceClient(
                                                    ClientSingleton()
                                                        .getChannel(),
                                                    options: CallOptions(
                                                        metadata: {
                                                          'jwt': _prefs.get('jwt')
                                                        }))
                                                    .editPhoneNumber(
                                                    EditPhoneNumberRequest()
                                                      ..phoneNumber = phoneController
                                                          .text);

                                                if (response.resultCode == 'ok') {
                                                  stState(() {
                                                    _phoneEdit = false;
                                                    _profile.phoneNumber =
                                                        phoneController.text;
                                                  });
                                                }
                                                else {
                                                  return showDialog<void>(
                                                    context: context,
                                                    builder: (
                                                        BuildContext context) {
                                                      return AlertDialog(
                                                        title: Text(
                                                            'Wrong Number'),
                                                        content: const Text(
                                                            'Malformed phone number'),
                                                        actions: <Widget>[
                                                          FlatButton(
                                                            child: Text('Ok'),
                                                            onPressed: () {
                                                              Navigator.of(
                                                                  context).pop();
                                                            },
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  );
                                                }
                                              },
                                            ),
                                            SizedBox(width: 20,),
                                            RaisedButton(
                                              child: Text(
                                                  'CANCEL'
                                              ),
                                              color: Colors.red,
                                              textColor: Colors.white,
                                              onPressed: () {
                                                stState(() {
                                                  _phoneEdit = false;
                                                });
                                              },
                                            ),
                                          ]
                                      ),
                                      ]
                                  );
                                  }
                                 ),
                                 StatefulBuilder(builder: (BuildContext context, StateSetter stState) {
                                   return Column(
                                       crossAxisAlignment: CrossAxisAlignment
                                           .start,
                                       children: <Widget>[
                                         Row(
                                             children: <Widget>[
                                               Text('CAR PLATE NUMBER',
                                                 style: TextStyle(
                                                     color: Colors.grey[400],
                                                     letterSpacing: 2.0),),
                                               SizedBox(width: 15,),
                                               if(!_plateEdit && _id == _current_id)FlatButton.icon(
                                                 color: Colors.blue,
                                                 icon: Icon(Icons.edit),
                                                 //`Icon` to display
                                                 label: Text('Edit'),
                                                 //`Text` to display
                                                 onPressed: () {
                                                   stState(() {
                                                     _plateEdit = true;
                                                   });
                                                 },
                                               ),
                                             ]
                                         ),
                                         SizedBox(height: 10.0),
                                         if(!_plateEdit) Text(
                                           _profile.carPlateNumber,
                                           style: TextStyle(
                                               color: Colors.yellow,
                                               fontSize: 24.0,
                                               fontWeight: FontWeight.bold),),
                                         if(_plateEdit) Row(
                                             children: <Widget>[
                                               Container(
                                                 child: TextField(
                                                   decoration: const InputDecoration(
                                                     labelText: '',
                                                   ),
                                                   style: TextStyle(
                                                       color: Colors.yellow,
                                                       fontSize: 24.0,
                                                       fontWeight: FontWeight
                                                           .bold),
                                                   controller: _plateController,
                                                 ),
                                                 width: 200,
                                               ),
                                               RaisedButton(
                                                 child: Text(
                                                     'SAVE'
                                                 ),
                                                 color: Colors.green,
                                                 textColor: Colors.white,
                                                 onPressed: () async {
                                                   EditPlateNumberResponse response = await ServiceClient(
                                                       ClientSingleton()
                                                           .getChannel(),
                                                       options: CallOptions(
                                                           metadata: {
                                                             'jwt': _prefs.get(
                                                                 'jwt')
                                                           }))
                                                       .editPlateNumber(
                                                       EditPlateNumberRequest()
                                                         ..plateNumber = _plateController
                                                             .text);
                                                   if (response.resultCode ==
                                                       'ok') {
                                                     stState(() {
                                                       _profile.carPlateNumber = _plateController.text;
                                                       _plateEdit = false;
                                                     });
                                                   }
                                                   else {
                                                     return showDialog<void>(
                                                       context: context,
                                                       builder: (
                                                           BuildContext context) {
                                                         return AlertDialog(
                                                           title: Text(
                                                               "Invalid Action"),
                                                           content: Text(
                                                               response
                                                                   .resultCode),
                                                           actions: <Widget>[
                                                             FlatButton(
                                                               child: Text('Ok'),
                                                               onPressed: () {
                                                                 Navigator.of(
                                                                     context)
                                                                     .pop();
                                                               },
                                                             ),
                                                           ],
                                                         );
                                                       },
                                                     );
                                                   }
                                                 },
                                               ),
                                               SizedBox(width: 20,),
                                               RaisedButton(
                                                 child: Text(
                                                     'CANCEL'
                                                 ),
                                                 color: Colors.red,
                                                 textColor: Colors.white,
                                                 onPressed: () {
                                                   stState(() {
                                                     _plateEdit = false;
                                                   });
                                                 },
                                               ),
                                             ]
                                         ),
                                         SizedBox(height: 55.0),
                                       ]
                                   );
                                 }
                                 ),
                                    ],
                                  )
                              ),
                      ),
                               StatefulBuilder(builder: (BuildContext context, StateSetter stState) {
                                 return Column(

                                     children: <Widget>[
                                       Row(
                                         mainAxisAlignment: MainAxisAlignment.center,
                                         children: <Widget> [
                                           if(_id == _current_id)FlatButton.icon(
                                             color: Colors.blue,
                                             icon: Icon(Icons.add),
                                             //`Icon` to display
                                             label: Text('Add Item'),
                                             //`Text` to display
                                             onPressed: () {
                                               return showDialog(
                                                 context: context,
                                                 builder: (BuildContext context) {
                                                   return Dialog(
                                                       child: Container(
                                                         height: 150,
                                                         child: new Column(
                                                           children: <Widget>[
                                                             Text('Add new item',
                                                               style: TextStyle(
                                                                   fontWeight: FontWeight
                                                                       .bold,
                                                                   fontSize: 24),),
                                                             new TextField(
                                                               decoration: new InputDecoration(
                                                                   hintText: "Item name"),
                                                               controller: _addItemController,
                                                             ),
                                                             new FlatButton(
                                                                 child: new Text(
                                                                     "ADD"),
                                                                 onPressed: () async {
                                                                   AddItemToUserResponse response = await ServiceClient(
                                                                       ClientSingleton()
                                                                           .getChannel(),
                                                                       options: CallOptions(
                                                                           metadata: {
                                                                             'jwt': _prefs
                                                                                 .get(
                                                                                 'jwt')
                                                                           }))
                                                                       .addItemToUser(
                                                                       AddItemToUserRequest()
                                                                         ..itemName = _addItemController
                                                                             .text);
                                                                   Navigator.pop(
                                                                       context);
                                                                   if (response
                                                                       .resultCode ==
                                                                       "ok") {
                                                                     stState(() {
                                                                       _profile.items.add(
                                                                           _addItemController
                                                                               .text);
                                                                     });
                                                                   }
                                                                 }
                                                             )
                                                           ],
                                                         ),
                                                       )
                                                   );
                                                 },
                                               );
                                             }
                                         ),
                                          SizedBox(width: 20,),
                                          if(_id == _current_id)FlatButton.icon(
                                             color: Colors.red,
                                             icon: Icon(Icons.delete),
                                             //`Icon` to display
                                             label: Text('Delete Item'),
                                             //`Text` to display
                                             onPressed: () {
                                               if(_selected != -1)return showDialog<void>(
                                                  context: context,
                                                  builder: (
                                                      BuildContext context) {
                                                    return AlertDialog(
                                                      title: Text(
                                                          'Delete Item'),
                                                      content: const Text(
                                                          'Do you really want to remove this item?'),
                                                      actions: <Widget>[
                                                        FlatButton(
                                                          child: Text('Yes'),
                                                          onPressed: () async {
                                                            DeleteItemToUserResponse response = await ServiceClient(
                                                                ClientSingleton()
                                                                    .getChannel(),
                                                                options: CallOptions(
                                                                    metadata: {
                                                                      'jwt': _prefs
                                                                          .get(
                                                                          'jwt')
                                                                    }))
                                                                .deleteItemFromUser(
                                                                DeleteItemToUserRequest()
                                                                  ..itemName = _profile.items[_selected]);
                                                            Navigator.of(
                                                                context).pop();
                                                            stState(() {
                                                              _profile.items
                                                                  .removeAt(
                                                                  _selected);
                                                              _selected = -1;
                                                            });
                                                          },
                                                        ),
                                                        FlatButton(
                                                          child: Text('No'),
                                                          onPressed: () {
                                                            Navigator.of(
                                                                context).pop();
                                                          },
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                );
                                             }
                                       ) ,
                                       ]
                                       ),
                                       Expanded(
                                         child: ListView.builder(
                                           itemCount: _profile.items.length,
                                           itemBuilder: (context, index) {
                                             return Container(
                                               color: index == _selected ? Colors.blue : Colors.grey[900],
                                               child: ListTile(
                                                 title: Text(
                                                   '${_profile.items[index]}',
                                                   style: TextStyle(
                                                       color: Colors.yellow),),
                                                 onTap: () {
                                                   stState(() {
                                                     _selected = index;
                                                   });

                                                 },
                                               ),
                                             );
                                           },
                                         ),
                                       ),
                                     ]
                                 );
                               }
                               )
                    ]
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
