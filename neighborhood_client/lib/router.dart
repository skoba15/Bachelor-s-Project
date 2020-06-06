import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:neighborhood_client/src/screens/CreateSubtask.dart';
import 'package:neighborhood_client/src/screens/CreateTask.dart';
import 'package:neighborhood_client/src/screens/Createneighborhood.dart';
import 'package:neighborhood_client/src/screens/Login.dart';
import 'package:neighborhood_client/src/screens/Neighborhood.dart';
import 'package:neighborhood_client/src/screens/Neighborhoods.dart';
import 'package:neighborhood_client/src/screens/Profile.dart';
import 'package:neighborhood_client/src/screens/Register.dart';
import 'package:neighborhood_client/src/screens/Requests.dart';
import 'package:neighborhood_client/src/screens/Success.dart';
import 'package:neighborhood_client/src/screens/Task.dart';
import 'package:neighborhood_client/src/screens/Tasks.dart';




class FluroRouter {
  static Router router = Router();
  static Handler _loginHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          Login());
  static Handler _registerHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          Register());
  static Handler _registerSuccessHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          Success());
  static Handler _neighborhoodsHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          Neighborhoods());
  static Handler _createNeighborhoodHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          CreateNeighborhood());
  static Handler _profileHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          Profile(id: int.parse(params['id'][0]),));
  static Handler _requestsHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          Requests(id: int.parse(params['neighborhoodId'][0]),));
  static Handler _neighborhoodHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          Neighborhood(id: int.parse(params['id'][0]),));
  static Handler _tasksHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          Tasks(id: int.parse(params['id'][0])));
  static Handler _createTaskHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          CreateTask(id: int.parse(params['id'][0])));
  static Handler _showTaskHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          ShowTask(taskId: int.parse(params['taskId'][0]), neighborhoodId: int.parse(params['neighborhoodId'][0]),));
  static Handler _createSubtaskHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          CreateSubtask(taskId: int.parse(params['taskId'][0]), neighborhoodId: int.parse(params['neighborhoodId'][0]),));

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
      'Neighborhood/:id',
      handler: _neighborhoodHandler,
    );

    router.define(
      'Requests/:neighborhoodId',
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
      'Neighborhoods/:id/tasks',
      handler: _tasksHandler,
    );

    router.define(
      'CreateTask/:id',
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
  }
}