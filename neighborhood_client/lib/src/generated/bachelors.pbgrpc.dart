///
//  Generated code. Do not modify.
//  source: bachelors.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'bachelors.pb.dart' as $0;
export 'bachelors.pb.dart';

class ServiceClient extends $grpc.Client {
  static final _$registerUser =
      $grpc.ClientMethod<$0.RegisterUserRequest, $0.RegisterUserResponse>(
          '/neighborhood.server.Service/RegisterUser',
          ($0.RegisterUserRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.RegisterUserResponse.fromBuffer(value));
  static final _$loginUser =
      $grpc.ClientMethod<$0.LoginUserRequest, $0.LoginUserResponse>(
          '/neighborhood.server.Service/LoginUser',
          ($0.LoginUserRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.LoginUserResponse.fromBuffer(value));
  static final _$userProfile =
      $grpc.ClientMethod<$0.UserProfileRequest, $0.UserProfileResponse>(
          '/neighborhood.server.Service/UserProfile',
          ($0.UserProfileRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.UserProfileResponse.fromBuffer(value));
  static final _$userId =
      $grpc.ClientMethod<$0.UserIdRequest, $0.UserIdResponse>(
          '/neighborhood.server.Service/UserId',
          ($0.UserIdRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.UserIdResponse.fromBuffer(value));
  static final _$editPhoneNumber =
      $grpc.ClientMethod<$0.EditPhoneNumberRequest, $0.EditPhoneNumberResponse>(
          '/neighborhood.server.Service/EditPhoneNumber',
          ($0.EditPhoneNumberRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.EditPhoneNumberResponse.fromBuffer(value));
  static final _$editPlateNumber =
      $grpc.ClientMethod<$0.EditPlateNumberRequest, $0.EditPlateNumberResponse>(
          '/neighborhood.server.Service/EditPlateNumber',
          ($0.EditPlateNumberRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.EditPlateNumberResponse.fromBuffer(value));
  static final _$resetPassword =
      $grpc.ClientMethod<$0.ResetPasswordRequest, $0.ResetPasswordResponse>(
          '/neighborhood.server.Service/ResetPassword',
          ($0.ResetPasswordRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ResetPasswordResponse.fromBuffer(value));
  static final _$deleteContact =
      $grpc.ClientMethod<$0.DeleteContactRequest, $0.DeleteContactResponse>(
          '/neighborhood.server.Service/DeleteContact',
          ($0.DeleteContactRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.DeleteContactResponse.fromBuffer(value));
  static final _$addNeighborhood =
      $grpc.ClientMethod<$0.AddNeighborhoodRequest, $0.AddNeighborhoodResponse>(
          '/neighborhood.server.Service/AddNeighborhood',
          ($0.AddNeighborhoodRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AddNeighborhoodResponse.fromBuffer(value));
  static final _$getMyNeighborhoodList = $grpc.ClientMethod<
          $0.GetMyNeighborhoodRequest, $0.GetMyNeighborhoodResponse>(
      '/neighborhood.server.Service/GetMyNeighborhoodList',
      ($0.GetMyNeighborhoodRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.GetMyNeighborhoodResponse.fromBuffer(value));
  static final _$getOtherNeighborhoodList = $grpc.ClientMethod<
          $0.GetOtherNeighborhoodRequest, $0.GetOtherNeighborhoodResponse>(
      '/neighborhood.server.Service/GetOtherNeighborhoodList',
      ($0.GetOtherNeighborhoodRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.GetOtherNeighborhoodResponse.fromBuffer(value));
  static final _$getUsersByNeighborhood = $grpc.ClientMethod<
          $0.GetUsersByNeighborhoodRequest, $0.GetUsersByNeighborhoodResponse>(
      '/neighborhood.server.Service/GetUsersByNeighborhood',
      ($0.GetUsersByNeighborhoodRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.GetUsersByNeighborhoodResponse.fromBuffer(value));
  static final _$addManager =
      $grpc.ClientMethod<$0.AddManagerRequest, $0.AddManagerResponse>(
          '/neighborhood.server.Service/AddManager',
          ($0.AddManagerRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AddManagerResponse.fromBuffer(value));
  static final _$isManager =
      $grpc.ClientMethod<$0.IsManagerRequest, $0.IsManagerResponse>(
          '/neighborhood.server.Service/IsManager',
          ($0.IsManagerRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.IsManagerResponse.fromBuffer(value));
  static final _$addUserToNeighborhood = $grpc.ClientMethod<
          $0.AddUserToNeighborhoodRequest, $0.AddUserToNeighborhoodResponse>(
      '/neighborhood.server.Service/AddUserToNeighborhood',
      ($0.AddUserToNeighborhoodRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.AddUserToNeighborhoodResponse.fromBuffer(value));
  static final _$approveUserToNeighborhood = $grpc.ClientMethod<
          $0.ApproveUserToNeighborhoodRequest,
          $0.ApproveUserToNeighborhoodResponse>(
      '/neighborhood.server.Service/ApproveUserToNeighborhood',
      ($0.ApproveUserToNeighborhoodRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.ApproveUserToNeighborhoodResponse.fromBuffer(value));
  static final _$rejectUserFromNeighborhood = $grpc.ClientMethod<
          $0.RejectUserToNeighborhoodRequest,
          $0.RejectUserToNeighborhoodResponse>(
      '/neighborhood.server.Service/RejectUserFromNeighborhood',
      ($0.RejectUserToNeighborhoodRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.RejectUserToNeighborhoodResponse.fromBuffer(value));
  static final _$getUserRequestList = $grpc.ClientMethod<
          $0.GetUserRequestListRequest, $0.GetUserRequestListResponse>(
      '/neighborhood.server.Service/GetUserRequestList',
      ($0.GetUserRequestListRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.GetUserRequestListResponse.fromBuffer(value));
  static final _$addItemToUser =
      $grpc.ClientMethod<$0.AddItemToUserRequest, $0.AddItemToUserResponse>(
          '/neighborhood.server.Service/AddItemToUser',
          ($0.AddItemToUserRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AddItemToUserResponse.fromBuffer(value));
  static final _$deleteItemFromUser = $grpc.ClientMethod<
          $0.DeleteItemToUserRequest, $0.DeleteItemToUserResponse>(
      '/neighborhood.server.Service/DeleteItemFromUser',
      ($0.DeleteItemToUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.DeleteItemToUserResponse.fromBuffer(value));
  static final _$searchItem =
      $grpc.ClientMethod<$0.SearchItemRequest, $0.SearchItemResponse>(
          '/neighborhood.server.Service/SearchItem',
          ($0.SearchItemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.SearchItemResponse.fromBuffer(value));
  static final _$addPost =
      $grpc.ClientMethod<$0.AddPostRequest, $0.AddPostResponse>(
          '/neighborhood.server.Service/AddPost',
          ($0.AddPostRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AddPostResponse.fromBuffer(value));
  static final _$deletePost =
      $grpc.ClientMethod<$0.DeletePostRequest, $0.DeletePostResponse>(
          '/neighborhood.server.Service/DeletePost',
          ($0.DeletePostRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.DeletePostResponse.fromBuffer(value));
  static final _$getPosts =
      $grpc.ClientMethod<$0.GetPostRequest, $0.GetPostResponse>(
          '/neighborhood.server.Service/GetPosts',
          ($0.GetPostRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetPostResponse.fromBuffer(value));
  static final _$addTask =
      $grpc.ClientMethod<$0.AddTaskRequest, $0.AddTaskResponse>(
          '/neighborhood.server.Service/AddTask',
          ($0.AddTaskRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AddTaskResponse.fromBuffer(value));
  static final _$getTask =
      $grpc.ClientMethod<$0.GetTaskRequest, $0.GetTaskResponse>(
          '/neighborhood.server.Service/GetTask',
          ($0.GetTaskRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetTaskResponse.fromBuffer(value));
  static final _$getTaskByNeighborhood = $grpc.ClientMethod<
          $0.GetTaskByNeighborhoodRequest, $0.GetTaskByNeighborhoodResponse>(
      '/neighborhood.server.Service/GetTaskByNeighborhood',
      ($0.GetTaskByNeighborhoodRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.GetTaskByNeighborhoodResponse.fromBuffer(value));
  static final _$addSubTask =
      $grpc.ClientMethod<$0.AddSubTaskRequest, $0.AddSubTaskResponse>(
          '/neighborhood.server.Service/AddSubTask',
          ($0.AddSubTaskRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AddSubTaskResponse.fromBuffer(value));
  static final _$getUserTasks =
      $grpc.ClientMethod<$0.GetUserTasksRequest, $0.GetUserTasksResponse>(
          '/neighborhood.server.Service/GetUserTasks',
          ($0.GetUserTasksRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetUserTasksResponse.fromBuffer(value));
  static final _$changeSubTaskStatus = $grpc.ClientMethod<
          $0.ChangeSubTaskStatusRequest, $0.ChangeSubTaskStatusResponse>(
      '/neighborhood.server.Service/ChangeSubTaskStatus',
      ($0.ChangeSubTaskStatusRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.ChangeSubTaskStatusResponse.fromBuffer(value));
  static final _$addComment =
      $grpc.ClientMethod<$0.AddCommentRequest, $0.AddCommentResponse>(
          '/neighborhood.server.Service/AddComment',
          ($0.AddCommentRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AddCommentResponse.fromBuffer(value));
  static final _$addCar =
      $grpc.ClientMethod<$0.AddCarRequest, $0.AddCarResponse>(
          '/neighborhood.server.Service/AddCar',
          ($0.AddCarRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.AddCarResponse.fromBuffer(value));
  static final _$getCar =
      $grpc.ClientMethod<$0.GetCarRequest, $0.GetCarResponse>(
          '/neighborhood.server.Service/GetCar',
          ($0.GetCarRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.GetCarResponse.fromBuffer(value));
  static final _$getContactByCar =
      $grpc.ClientMethod<$0.GetContactByCarRequest, $0.GetContactByCarResponse>(
          '/neighborhood.server.Service/GetContactByCar',
          ($0.GetContactByCarRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetContactByCarResponse.fromBuffer(value));

  ServiceClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$0.RegisterUserResponse> registerUser(
      $0.RegisterUserRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$registerUser, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.LoginUserResponse> loginUser(
      $0.LoginUserRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$loginUser, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.UserProfileResponse> userProfile(
      $0.UserProfileRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$userProfile, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.UserIdResponse> userId($0.UserIdRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$userId, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.EditPhoneNumberResponse> editPhoneNumber(
      $0.EditPhoneNumberRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$editPhoneNumber, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.EditPlateNumberResponse> editPlateNumber(
      $0.EditPlateNumberRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$editPlateNumber, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.ResetPasswordResponse> resetPassword(
      $0.ResetPasswordRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$resetPassword, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.DeleteContactResponse> deleteContact(
      $0.DeleteContactRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$deleteContact, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.AddNeighborhoodResponse> addNeighborhood(
      $0.AddNeighborhoodRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$addNeighborhood, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.GetMyNeighborhoodResponse> getMyNeighborhoodList(
      $0.GetMyNeighborhoodRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getMyNeighborhoodList, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.GetOtherNeighborhoodResponse>
      getOtherNeighborhoodList($0.GetOtherNeighborhoodRequest request,
          {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getOtherNeighborhoodList, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.GetUsersByNeighborhoodResponse>
      getUsersByNeighborhood($0.GetUsersByNeighborhoodRequest request,
          {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getUsersByNeighborhood, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.AddManagerResponse> addManager(
      $0.AddManagerRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$addManager, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.IsManagerResponse> isManager(
      $0.IsManagerRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$isManager, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.AddUserToNeighborhoodResponse> addUserToNeighborhood(
      $0.AddUserToNeighborhoodRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$addUserToNeighborhood, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.ApproveUserToNeighborhoodResponse>
      approveUserToNeighborhood($0.ApproveUserToNeighborhoodRequest request,
          {$grpc.CallOptions options}) {
    final call = $createCall(
        _$approveUserToNeighborhood, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.RejectUserToNeighborhoodResponse>
      rejectUserFromNeighborhood($0.RejectUserToNeighborhoodRequest request,
          {$grpc.CallOptions options}) {
    final call = $createCall(
        _$rejectUserFromNeighborhood, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.GetUserRequestListResponse> getUserRequestList(
      $0.GetUserRequestListRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getUserRequestList, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.AddItemToUserResponse> addItemToUser(
      $0.AddItemToUserRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$addItemToUser, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.DeleteItemToUserResponse> deleteItemFromUser(
      $0.DeleteItemToUserRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$deleteItemFromUser, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.SearchItemResponse> searchItem(
      $0.SearchItemRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$searchItem, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.AddPostResponse> addPost($0.AddPostRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$addPost, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.DeletePostResponse> deletePost(
      $0.DeletePostRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$deletePost, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.GetPostResponse> getPosts($0.GetPostRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$getPosts, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.AddTaskResponse> addTask($0.AddTaskRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$addTask, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.GetTaskResponse> getTask($0.GetTaskRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$getTask, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.GetTaskByNeighborhoodResponse> getTaskByNeighborhood(
      $0.GetTaskByNeighborhoodRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getTaskByNeighborhood, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.AddSubTaskResponse> addSubTask(
      $0.AddSubTaskRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$addSubTask, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.GetUserTasksResponse> getUserTasks(
      $0.GetUserTasksRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getUserTasks, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.ChangeSubTaskStatusResponse> changeSubTaskStatus(
      $0.ChangeSubTaskStatusRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$changeSubTaskStatus, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.AddCommentResponse> addComment(
      $0.AddCommentRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$addComment, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.AddCarResponse> addCar($0.AddCarRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$addCar, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.GetCarResponse> getCar($0.GetCarRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$getCar, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.GetContactByCarResponse> getContactByCar(
      $0.GetContactByCarRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getContactByCar, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class ServiceBase extends $grpc.Service {
  $core.String get $name => 'neighborhood.server.Service';

  ServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$0.RegisterUserRequest, $0.RegisterUserResponse>(
            'RegisterUser',
            registerUser_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.RegisterUserRequest.fromBuffer(value),
            ($0.RegisterUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.LoginUserRequest, $0.LoginUserResponse>(
        'LoginUser',
        loginUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LoginUserRequest.fromBuffer(value),
        ($0.LoginUserResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.UserProfileRequest, $0.UserProfileResponse>(
            'UserProfile',
            userProfile_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.UserProfileRequest.fromBuffer(value),
            ($0.UserProfileResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UserIdRequest, $0.UserIdResponse>(
        'UserId',
        userId_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UserIdRequest.fromBuffer(value),
        ($0.UserIdResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.EditPhoneNumberRequest,
            $0.EditPhoneNumberResponse>(
        'EditPhoneNumber',
        editPhoneNumber_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.EditPhoneNumberRequest.fromBuffer(value),
        ($0.EditPhoneNumberResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.EditPlateNumberRequest,
            $0.EditPlateNumberResponse>(
        'EditPlateNumber',
        editPlateNumber_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.EditPlateNumberRequest.fromBuffer(value),
        ($0.EditPlateNumberResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.ResetPasswordRequest, $0.ResetPasswordResponse>(
            'ResetPassword',
            resetPassword_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.ResetPasswordRequest.fromBuffer(value),
            ($0.ResetPasswordResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.DeleteContactRequest, $0.DeleteContactResponse>(
            'DeleteContact',
            deleteContact_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.DeleteContactRequest.fromBuffer(value),
            ($0.DeleteContactResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AddNeighborhoodRequest,
            $0.AddNeighborhoodResponse>(
        'AddNeighborhood',
        addNeighborhood_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AddNeighborhoodRequest.fromBuffer(value),
        ($0.AddNeighborhoodResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetMyNeighborhoodRequest,
            $0.GetMyNeighborhoodResponse>(
        'GetMyNeighborhoodList',
        getMyNeighborhoodList_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetMyNeighborhoodRequest.fromBuffer(value),
        ($0.GetMyNeighborhoodResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetOtherNeighborhoodRequest,
            $0.GetOtherNeighborhoodResponse>(
        'GetOtherNeighborhoodList',
        getOtherNeighborhoodList_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetOtherNeighborhoodRequest.fromBuffer(value),
        ($0.GetOtherNeighborhoodResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetUsersByNeighborhoodRequest,
            $0.GetUsersByNeighborhoodResponse>(
        'GetUsersByNeighborhood',
        getUsersByNeighborhood_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetUsersByNeighborhoodRequest.fromBuffer(value),
        ($0.GetUsersByNeighborhoodResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AddManagerRequest, $0.AddManagerResponse>(
        'AddManager',
        addManager_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AddManagerRequest.fromBuffer(value),
        ($0.AddManagerResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.IsManagerRequest, $0.IsManagerResponse>(
        'IsManager',
        isManager_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.IsManagerRequest.fromBuffer(value),
        ($0.IsManagerResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AddUserToNeighborhoodRequest,
            $0.AddUserToNeighborhoodResponse>(
        'AddUserToNeighborhood',
        addUserToNeighborhood_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AddUserToNeighborhoodRequest.fromBuffer(value),
        ($0.AddUserToNeighborhoodResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ApproveUserToNeighborhoodRequest,
            $0.ApproveUserToNeighborhoodResponse>(
        'ApproveUserToNeighborhood',
        approveUserToNeighborhood_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ApproveUserToNeighborhoodRequest.fromBuffer(value),
        ($0.ApproveUserToNeighborhoodResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RejectUserToNeighborhoodRequest,
            $0.RejectUserToNeighborhoodResponse>(
        'RejectUserFromNeighborhood',
        rejectUserFromNeighborhood_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.RejectUserToNeighborhoodRequest.fromBuffer(value),
        ($0.RejectUserToNeighborhoodResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetUserRequestListRequest,
            $0.GetUserRequestListResponse>(
        'GetUserRequestList',
        getUserRequestList_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetUserRequestListRequest.fromBuffer(value),
        ($0.GetUserRequestListResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.AddItemToUserRequest, $0.AddItemToUserResponse>(
            'AddItemToUser',
            addItemToUser_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.AddItemToUserRequest.fromBuffer(value),
            ($0.AddItemToUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteItemToUserRequest,
            $0.DeleteItemToUserResponse>(
        'DeleteItemFromUser',
        deleteItemFromUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.DeleteItemToUserRequest.fromBuffer(value),
        ($0.DeleteItemToUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SearchItemRequest, $0.SearchItemResponse>(
        'SearchItem',
        searchItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SearchItemRequest.fromBuffer(value),
        ($0.SearchItemResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AddPostRequest, $0.AddPostResponse>(
        'AddPost',
        addPost_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AddPostRequest.fromBuffer(value),
        ($0.AddPostResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeletePostRequest, $0.DeletePostResponse>(
        'DeletePost',
        deletePost_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeletePostRequest.fromBuffer(value),
        ($0.DeletePostResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetPostRequest, $0.GetPostResponse>(
        'GetPosts',
        getPosts_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetPostRequest.fromBuffer(value),
        ($0.GetPostResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AddTaskRequest, $0.AddTaskResponse>(
        'AddTask',
        addTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AddTaskRequest.fromBuffer(value),
        ($0.AddTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetTaskRequest, $0.GetTaskResponse>(
        'GetTask',
        getTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetTaskRequest.fromBuffer(value),
        ($0.GetTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetTaskByNeighborhoodRequest,
            $0.GetTaskByNeighborhoodResponse>(
        'GetTaskByNeighborhood',
        getTaskByNeighborhood_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetTaskByNeighborhoodRequest.fromBuffer(value),
        ($0.GetTaskByNeighborhoodResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AddSubTaskRequest, $0.AddSubTaskResponse>(
        'AddSubTask',
        addSubTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AddSubTaskRequest.fromBuffer(value),
        ($0.AddSubTaskResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.GetUserTasksRequest, $0.GetUserTasksResponse>(
            'GetUserTasks',
            getUserTasks_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.GetUserTasksRequest.fromBuffer(value),
            ($0.GetUserTasksResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ChangeSubTaskStatusRequest,
            $0.ChangeSubTaskStatusResponse>(
        'ChangeSubTaskStatus',
        changeSubTaskStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ChangeSubTaskStatusRequest.fromBuffer(value),
        ($0.ChangeSubTaskStatusResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AddCommentRequest, $0.AddCommentResponse>(
        'AddComment',
        addComment_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AddCommentRequest.fromBuffer(value),
        ($0.AddCommentResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AddCarRequest, $0.AddCarResponse>(
        'AddCar',
        addCar_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AddCarRequest.fromBuffer(value),
        ($0.AddCarResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetCarRequest, $0.GetCarResponse>(
        'GetCar',
        getCar_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetCarRequest.fromBuffer(value),
        ($0.GetCarResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetContactByCarRequest,
            $0.GetContactByCarResponse>(
        'GetContactByCar',
        getContactByCar_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetContactByCarRequest.fromBuffer(value),
        ($0.GetContactByCarResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.RegisterUserResponse> registerUser_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.RegisterUserRequest> request) async {
    return registerUser(call, await request);
  }

  $async.Future<$0.LoginUserResponse> loginUser_Pre($grpc.ServiceCall call,
      $async.Future<$0.LoginUserRequest> request) async {
    return loginUser(call, await request);
  }

  $async.Future<$0.UserProfileResponse> userProfile_Pre($grpc.ServiceCall call,
      $async.Future<$0.UserProfileRequest> request) async {
    return userProfile(call, await request);
  }

  $async.Future<$0.UserIdResponse> userId_Pre(
      $grpc.ServiceCall call, $async.Future<$0.UserIdRequest> request) async {
    return userId(call, await request);
  }

  $async.Future<$0.EditPhoneNumberResponse> editPhoneNumber_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.EditPhoneNumberRequest> request) async {
    return editPhoneNumber(call, await request);
  }

  $async.Future<$0.EditPlateNumberResponse> editPlateNumber_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.EditPlateNumberRequest> request) async {
    return editPlateNumber(call, await request);
  }

  $async.Future<$0.ResetPasswordResponse> resetPassword_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.ResetPasswordRequest> request) async {
    return resetPassword(call, await request);
  }

  $async.Future<$0.DeleteContactResponse> deleteContact_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.DeleteContactRequest> request) async {
    return deleteContact(call, await request);
  }

  $async.Future<$0.AddNeighborhoodResponse> addNeighborhood_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AddNeighborhoodRequest> request) async {
    return addNeighborhood(call, await request);
  }

  $async.Future<$0.GetMyNeighborhoodResponse> getMyNeighborhoodList_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetMyNeighborhoodRequest> request) async {
    return getMyNeighborhoodList(call, await request);
  }

  $async.Future<$0.GetOtherNeighborhoodResponse> getOtherNeighborhoodList_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetOtherNeighborhoodRequest> request) async {
    return getOtherNeighborhoodList(call, await request);
  }

  $async.Future<$0.GetUsersByNeighborhoodResponse> getUsersByNeighborhood_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetUsersByNeighborhoodRequest> request) async {
    return getUsersByNeighborhood(call, await request);
  }

  $async.Future<$0.AddManagerResponse> addManager_Pre($grpc.ServiceCall call,
      $async.Future<$0.AddManagerRequest> request) async {
    return addManager(call, await request);
  }

  $async.Future<$0.IsManagerResponse> isManager_Pre($grpc.ServiceCall call,
      $async.Future<$0.IsManagerRequest> request) async {
    return isManager(call, await request);
  }

  $async.Future<$0.AddUserToNeighborhoodResponse> addUserToNeighborhood_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AddUserToNeighborhoodRequest> request) async {
    return addUserToNeighborhood(call, await request);
  }

  $async.Future<$0.ApproveUserToNeighborhoodResponse>
      approveUserToNeighborhood_Pre($grpc.ServiceCall call,
          $async.Future<$0.ApproveUserToNeighborhoodRequest> request) async {
    return approveUserToNeighborhood(call, await request);
  }

  $async.Future<$0.RejectUserToNeighborhoodResponse>
      rejectUserFromNeighborhood_Pre($grpc.ServiceCall call,
          $async.Future<$0.RejectUserToNeighborhoodRequest> request) async {
    return rejectUserFromNeighborhood(call, await request);
  }

  $async.Future<$0.GetUserRequestListResponse> getUserRequestList_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetUserRequestListRequest> request) async {
    return getUserRequestList(call, await request);
  }

  $async.Future<$0.AddItemToUserResponse> addItemToUser_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AddItemToUserRequest> request) async {
    return addItemToUser(call, await request);
  }

  $async.Future<$0.DeleteItemToUserResponse> deleteItemFromUser_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.DeleteItemToUserRequest> request) async {
    return deleteItemFromUser(call, await request);
  }

  $async.Future<$0.SearchItemResponse> searchItem_Pre($grpc.ServiceCall call,
      $async.Future<$0.SearchItemRequest> request) async {
    return searchItem(call, await request);
  }

  $async.Future<$0.AddPostResponse> addPost_Pre(
      $grpc.ServiceCall call, $async.Future<$0.AddPostRequest> request) async {
    return addPost(call, await request);
  }

  $async.Future<$0.DeletePostResponse> deletePost_Pre($grpc.ServiceCall call,
      $async.Future<$0.DeletePostRequest> request) async {
    return deletePost(call, await request);
  }

  $async.Future<$0.GetPostResponse> getPosts_Pre(
      $grpc.ServiceCall call, $async.Future<$0.GetPostRequest> request) async {
    return getPosts(call, await request);
  }

  $async.Future<$0.AddTaskResponse> addTask_Pre(
      $grpc.ServiceCall call, $async.Future<$0.AddTaskRequest> request) async {
    return addTask(call, await request);
  }

  $async.Future<$0.GetTaskResponse> getTask_Pre(
      $grpc.ServiceCall call, $async.Future<$0.GetTaskRequest> request) async {
    return getTask(call, await request);
  }

  $async.Future<$0.GetTaskByNeighborhoodResponse> getTaskByNeighborhood_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetTaskByNeighborhoodRequest> request) async {
    return getTaskByNeighborhood(call, await request);
  }

  $async.Future<$0.AddSubTaskResponse> addSubTask_Pre($grpc.ServiceCall call,
      $async.Future<$0.AddSubTaskRequest> request) async {
    return addSubTask(call, await request);
  }

  $async.Future<$0.GetUserTasksResponse> getUserTasks_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetUserTasksRequest> request) async {
    return getUserTasks(call, await request);
  }

  $async.Future<$0.ChangeSubTaskStatusResponse> changeSubTaskStatus_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.ChangeSubTaskStatusRequest> request) async {
    return changeSubTaskStatus(call, await request);
  }

  $async.Future<$0.AddCommentResponse> addComment_Pre($grpc.ServiceCall call,
      $async.Future<$0.AddCommentRequest> request) async {
    return addComment(call, await request);
  }

  $async.Future<$0.AddCarResponse> addCar_Pre(
      $grpc.ServiceCall call, $async.Future<$0.AddCarRequest> request) async {
    return addCar(call, await request);
  }

  $async.Future<$0.GetCarResponse> getCar_Pre(
      $grpc.ServiceCall call, $async.Future<$0.GetCarRequest> request) async {
    return getCar(call, await request);
  }

  $async.Future<$0.GetContactByCarResponse> getContactByCar_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetContactByCarRequest> request) async {
    return getContactByCar(call, await request);
  }

  $async.Future<$0.RegisterUserResponse> registerUser(
      $grpc.ServiceCall call, $0.RegisterUserRequest request);
  $async.Future<$0.LoginUserResponse> loginUser(
      $grpc.ServiceCall call, $0.LoginUserRequest request);
  $async.Future<$0.UserProfileResponse> userProfile(
      $grpc.ServiceCall call, $0.UserProfileRequest request);
  $async.Future<$0.UserIdResponse> userId(
      $grpc.ServiceCall call, $0.UserIdRequest request);
  $async.Future<$0.EditPhoneNumberResponse> editPhoneNumber(
      $grpc.ServiceCall call, $0.EditPhoneNumberRequest request);
  $async.Future<$0.EditPlateNumberResponse> editPlateNumber(
      $grpc.ServiceCall call, $0.EditPlateNumberRequest request);
  $async.Future<$0.ResetPasswordResponse> resetPassword(
      $grpc.ServiceCall call, $0.ResetPasswordRequest request);
  $async.Future<$0.DeleteContactResponse> deleteContact(
      $grpc.ServiceCall call, $0.DeleteContactRequest request);
  $async.Future<$0.AddNeighborhoodResponse> addNeighborhood(
      $grpc.ServiceCall call, $0.AddNeighborhoodRequest request);
  $async.Future<$0.GetMyNeighborhoodResponse> getMyNeighborhoodList(
      $grpc.ServiceCall call, $0.GetMyNeighborhoodRequest request);
  $async.Future<$0.GetOtherNeighborhoodResponse> getOtherNeighborhoodList(
      $grpc.ServiceCall call, $0.GetOtherNeighborhoodRequest request);
  $async.Future<$0.GetUsersByNeighborhoodResponse> getUsersByNeighborhood(
      $grpc.ServiceCall call, $0.GetUsersByNeighborhoodRequest request);
  $async.Future<$0.AddManagerResponse> addManager(
      $grpc.ServiceCall call, $0.AddManagerRequest request);
  $async.Future<$0.IsManagerResponse> isManager(
      $grpc.ServiceCall call, $0.IsManagerRequest request);
  $async.Future<$0.AddUserToNeighborhoodResponse> addUserToNeighborhood(
      $grpc.ServiceCall call, $0.AddUserToNeighborhoodRequest request);
  $async.Future<$0.ApproveUserToNeighborhoodResponse> approveUserToNeighborhood(
      $grpc.ServiceCall call, $0.ApproveUserToNeighborhoodRequest request);
  $async.Future<$0.RejectUserToNeighborhoodResponse> rejectUserFromNeighborhood(
      $grpc.ServiceCall call, $0.RejectUserToNeighborhoodRequest request);
  $async.Future<$0.GetUserRequestListResponse> getUserRequestList(
      $grpc.ServiceCall call, $0.GetUserRequestListRequest request);
  $async.Future<$0.AddItemToUserResponse> addItemToUser(
      $grpc.ServiceCall call, $0.AddItemToUserRequest request);
  $async.Future<$0.DeleteItemToUserResponse> deleteItemFromUser(
      $grpc.ServiceCall call, $0.DeleteItemToUserRequest request);
  $async.Future<$0.SearchItemResponse> searchItem(
      $grpc.ServiceCall call, $0.SearchItemRequest request);
  $async.Future<$0.AddPostResponse> addPost(
      $grpc.ServiceCall call, $0.AddPostRequest request);
  $async.Future<$0.DeletePostResponse> deletePost(
      $grpc.ServiceCall call, $0.DeletePostRequest request);
  $async.Future<$0.GetPostResponse> getPosts(
      $grpc.ServiceCall call, $0.GetPostRequest request);
  $async.Future<$0.AddTaskResponse> addTask(
      $grpc.ServiceCall call, $0.AddTaskRequest request);
  $async.Future<$0.GetTaskResponse> getTask(
      $grpc.ServiceCall call, $0.GetTaskRequest request);
  $async.Future<$0.GetTaskByNeighborhoodResponse> getTaskByNeighborhood(
      $grpc.ServiceCall call, $0.GetTaskByNeighborhoodRequest request);
  $async.Future<$0.AddSubTaskResponse> addSubTask(
      $grpc.ServiceCall call, $0.AddSubTaskRequest request);
  $async.Future<$0.GetUserTasksResponse> getUserTasks(
      $grpc.ServiceCall call, $0.GetUserTasksRequest request);
  $async.Future<$0.ChangeSubTaskStatusResponse> changeSubTaskStatus(
      $grpc.ServiceCall call, $0.ChangeSubTaskStatusRequest request);
  $async.Future<$0.AddCommentResponse> addComment(
      $grpc.ServiceCall call, $0.AddCommentRequest request);
  $async.Future<$0.AddCarResponse> addCar(
      $grpc.ServiceCall call, $0.AddCarRequest request);
  $async.Future<$0.GetCarResponse> getCar(
      $grpc.ServiceCall call, $0.GetCarRequest request);
  $async.Future<$0.GetContactByCarResponse> getContactByCar(
      $grpc.ServiceCall call, $0.GetContactByCarRequest request);
}
