import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:neighborhood_client/src/Preferences.dart';
import 'package:neighborhood_client/src/screens/CreateSubtask.dart';
import 'package:neighborhood_client/src/screens/CreateTask.dart';
import 'package:neighborhood_client/src/screens/Createneighborhood.dart';
import 'package:neighborhood_client/src/screens/Login.dart';
import 'package:neighborhood_client/src/screens/Neighborhood.dart';
import 'package:neighborhood_client/src/screens/Neighborhoods.dart';
import 'package:neighborhood_client/src/screens/Profile.dart';
import 'package:neighborhood_client/src/screens/Register.dart';
import 'package:neighborhood_client/src/screens/Requests.dart';
import 'package:neighborhood_client/src/screens/Search.dart';
import 'package:neighborhood_client/src/screens/Success.dart';
import 'package:neighborhood_client/src/screens/Task.dart';
import 'package:neighborhood_client/src/screens/Tasks.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';





class FluroRouter {

  static SharedPreferences prefs = Preferences.getPreferences();

  static Router router = Router();
  static Handler _loginHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) {
          return Login();
      }
  );
  static Handler _registerHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) {
          return Register();
      }
  );

  static Handler _registerSuccessHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          Success());
  static Handler _neighborhoodsHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) {
          return Neighborhoods();
      }
  );
  static Handler _createNeighborhoodHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) {
          return CreateNeighborhood();
      }
  );
  static Handler _profileHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) {
          return Profile(id: int.parse(params['id'][0]),);
      }
  );
  static Handler _requestsHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) {
          return  Requests(id: int.parse(params['neighborhoodId'][0]),);
      }
  );
  static Handler _neighborhoodHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) {
          return  Neighborhood(id: int.parse(params['neighborhoodId'][0]),);
      }
  );
  static Handler _tasksHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) {
          return  Tasks(id: int.parse(params['neighborhoodId'][0]));
      }
  );
  static Handler _createTaskHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) {
        return  Tasks(id: int.parse(params['neighborhoodId'][0]));
      }
  );
  static Handler _showTaskHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) {
          return ShowTask(taskId: int.parse(params['taskId'][0]), neighborhoodId: int.parse(params['neighborhoodId'][0]),);
      }
  );
  static Handler _createSubtaskHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) {
        return CreateSubtask(taskId: int.parse(params['taskId'][0]), neighborhoodId: int.parse(params['neighborhoodId'][0]),);
      }
  );
  static Handler _searchHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) {
          return Search(type: int.parse(params['type'][0]), neighborhoodId: int.parse(params['neighborhoodId'][0]),);
      }
  );

  static void setupRouter() {
    router.define(
      'login',
      handler: _loginHandler,
    );

    router.define(
      'Register',
      handler: _registerHandler,
    );

    router.define(
      'Success',
      handler: _registerSuccessHandler,
    );

    router.define(
      'Neighborhoods',
      handler: _neighborhoodsHandler,
    );

    router.define(
      'Neighborhoods/:neighborhoodId',
      handler: _neighborhoodHandler,
    );

    router.define(
      'Neighborhoods/:neighborhoodId/Requests',
      handler: _requestsHandler,
    );

    router.define(
      'CreateNeighborhood',
      handler: _createNeighborhoodHandler,
    );

    router.define(
      'Profile/:id',
      handler: _profileHandler,
    );

    router.define(
      'Neighborhoods/:neighborhoodId/tasks',
      handler: _tasksHandler,
    );

    router.define(
      'Neighborhoods/:neighborhoodId/CreateTask',
      handler: _createTaskHandler,
    );

    router.define(
      'Neighborhoods/:neighborhoodId/tasks/:taskId',
      handler: _showTaskHandler,
    );

    router.define(
      'Neighborhoods/:neighborhoodId/tasks/:taskId/CreateSubtask',
      handler: _createSubtaskHandler,
    );

    router.define(
      'Neighborhoods/:neighborhoodId/Search/:type',
      handler: _searchHandler,
    );
  }
}