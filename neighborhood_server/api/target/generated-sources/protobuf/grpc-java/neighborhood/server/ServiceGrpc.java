package neighborhood.server;

import static io.grpc.stub.ClientCalls.asyncUnaryCall;
import static io.grpc.stub.ClientCalls.asyncServerStreamingCall;
import static io.grpc.stub.ClientCalls.asyncClientStreamingCall;
import static io.grpc.stub.ClientCalls.asyncBidiStreamingCall;
import static io.grpc.stub.ClientCalls.blockingUnaryCall;
import static io.grpc.stub.ClientCalls.blockingServerStreamingCall;
import static io.grpc.stub.ClientCalls.futureUnaryCall;
import static io.grpc.MethodDescriptor.generateFullMethodName;
import static io.grpc.stub.ServerCalls.asyncUnaryCall;
import static io.grpc.stub.ServerCalls.asyncServerStreamingCall;
import static io.grpc.stub.ServerCalls.asyncClientStreamingCall;
import static io.grpc.stub.ServerCalls.asyncBidiStreamingCall;

@javax.annotation.Generated("by gRPC proto compiler")
public class ServiceGrpc {

  private ServiceGrpc() {}

  public static final String SERVICE_NAME = "neighborhood.server.Service";

  // Static method descriptors that strictly reflect the proto.
  @io.grpc.ExperimentalApi
  public static final io.grpc.MethodDescriptor<neighborhood.server.NeighborhoodAPI.RegisterUserRequest,
      neighborhood.server.NeighborhoodAPI.RegisterUserResponse> METHOD_REGISTER_USER =
      io.grpc.MethodDescriptor.create(
          io.grpc.MethodDescriptor.MethodType.UNARY,
          generateFullMethodName(
              "neighborhood.server.Service", "RegisterUser"),
          io.grpc.protobuf.ProtoUtils.marshaller(neighborhood.server.NeighborhoodAPI.RegisterUserRequest.getDefaultInstance()),
          io.grpc.protobuf.ProtoUtils.marshaller(neighborhood.server.NeighborhoodAPI.RegisterUserResponse.getDefaultInstance()));
  @io.grpc.ExperimentalApi
  public static final io.grpc.MethodDescriptor<neighborhood.server.NeighborhoodAPI.LoginUserRequest,
      neighborhood.server.NeighborhoodAPI.LoginUserResponse> METHOD_LOGIN_USER =
      io.grpc.MethodDescriptor.create(
          io.grpc.MethodDescriptor.MethodType.UNARY,
          generateFullMethodName(
              "neighborhood.server.Service", "LoginUser"),
          io.grpc.protobuf.ProtoUtils.marshaller(neighborhood.server.NeighborhoodAPI.LoginUserRequest.getDefaultInstance()),
          io.grpc.protobuf.ProtoUtils.marshaller(neighborhood.server.NeighborhoodAPI.LoginUserResponse.getDefaultInstance()));
  @io.grpc.ExperimentalApi
  public static final io.grpc.MethodDescriptor<neighborhood.server.NeighborhoodAPI.ResetPasswordRequest,
      neighborhood.server.NeighborhoodAPI.ResetPasswordResponse> METHOD_RESET_PASSWORD =
      io.grpc.MethodDescriptor.create(
          io.grpc.MethodDescriptor.MethodType.UNARY,
          generateFullMethodName(
              "neighborhood.server.Service", "ResetPassword"),
          io.grpc.protobuf.ProtoUtils.marshaller(neighborhood.server.NeighborhoodAPI.ResetPasswordRequest.getDefaultInstance()),
          io.grpc.protobuf.ProtoUtils.marshaller(neighborhood.server.NeighborhoodAPI.ResetPasswordResponse.getDefaultInstance()));
  @io.grpc.ExperimentalApi
  public static final io.grpc.MethodDescriptor<neighborhood.server.NeighborhoodAPI.DeleteContactRequest,
      neighborhood.server.NeighborhoodAPI.DeleteContactResponse> METHOD_DELETE_CONTACT =
      io.grpc.MethodDescriptor.create(
          io.grpc.MethodDescriptor.MethodType.UNARY,
          generateFullMethodName(
              "neighborhood.server.Service", "DeleteContact"),
          io.grpc.protobuf.ProtoUtils.marshaller(neighborhood.server.NeighborhoodAPI.DeleteContactRequest.getDefaultInstance()),
          io.grpc.protobuf.ProtoUtils.marshaller(neighborhood.server.NeighborhoodAPI.DeleteContactResponse.getDefaultInstance()));
  @io.grpc.ExperimentalApi
  public static final io.grpc.MethodDescriptor<neighborhood.server.NeighborhoodAPI.AddNeighborhoodRequest,
      neighborhood.server.NeighborhoodAPI.AddNeighborhoodResponse> METHOD_ADD_NEIGHBORHOOD =
      io.grpc.MethodDescriptor.create(
          io.grpc.MethodDescriptor.MethodType.UNARY,
          generateFullMethodName(
              "neighborhood.server.Service", "AddNeighborhood"),
          io.grpc.protobuf.ProtoUtils.marshaller(neighborhood.server.NeighborhoodAPI.AddNeighborhoodRequest.getDefaultInstance()),
          io.grpc.protobuf.ProtoUtils.marshaller(neighborhood.server.NeighborhoodAPI.AddNeighborhoodResponse.getDefaultInstance()));
  @io.grpc.ExperimentalApi
  public static final io.grpc.MethodDescriptor<neighborhood.server.NeighborhoodAPI.GetNeighborhoodRequest,
      neighborhood.server.NeighborhoodAPI.GetNeighborhoodResponse> METHOD_GET_NEIGHBORHOOD_LIST =
      io.grpc.MethodDescriptor.create(
          io.grpc.MethodDescriptor.MethodType.UNARY,
          generateFullMethodName(
              "neighborhood.server.Service", "GetNeighborhoodList"),
          io.grpc.protobuf.ProtoUtils.marshaller(neighborhood.server.NeighborhoodAPI.GetNeighborhoodRequest.getDefaultInstance()),
          io.grpc.protobuf.ProtoUtils.marshaller(neighborhood.server.NeighborhoodAPI.GetNeighborhoodResponse.getDefaultInstance()));
  @io.grpc.ExperimentalApi
  public static final io.grpc.MethodDescriptor<neighborhood.server.NeighborhoodAPI.AddManagerRequest,
      neighborhood.server.NeighborhoodAPI.AddManagerResponse> METHOD_ADD_MANAGER =
      io.grpc.MethodDescriptor.create(
          io.grpc.MethodDescriptor.MethodType.UNARY,
          generateFullMethodName(
              "neighborhood.server.Service", "AddManager"),
          io.grpc.protobuf.ProtoUtils.marshaller(neighborhood.server.NeighborhoodAPI.AddManagerRequest.getDefaultInstance()),
          io.grpc.protobuf.ProtoUtils.marshaller(neighborhood.server.NeighborhoodAPI.AddManagerResponse.getDefaultInstance()));
  @io.grpc.ExperimentalApi
  public static final io.grpc.MethodDescriptor<neighborhood.server.NeighborhoodAPI.AddUserToNeighborhoodRequest,
      neighborhood.server.NeighborhoodAPI.AddUserToNeighborhoodResponse> METHOD_ADD_USER_TO_NEIGHBORHOOD =
      io.grpc.MethodDescriptor.create(
          io.grpc.MethodDescriptor.MethodType.UNARY,
          generateFullMethodName(
              "neighborhood.server.Service", "AddUserToNeighborhood"),
          io.grpc.protobuf.ProtoUtils.marshaller(neighborhood.server.NeighborhoodAPI.AddUserToNeighborhoodRequest.getDefaultInstance()),
          io.grpc.protobuf.ProtoUtils.marshaller(neighborhood.server.NeighborhoodAPI.AddUserToNeighborhoodResponse.getDefaultInstance()));
  @io.grpc.ExperimentalApi
  public static final io.grpc.MethodDescriptor<neighborhood.server.NeighborhoodAPI.ApproveUserToNeighborhoodRequest,
      neighborhood.server.NeighborhoodAPI.ApproveUserToNeighborhoodResponse> METHOD_APPROVE_USER_TO_NEIGHBORHOOD =
      io.grpc.MethodDescriptor.create(
          io.grpc.MethodDescriptor.MethodType.UNARY,
          generateFullMethodName(
              "neighborhood.server.Service", "ApproveUserToNeighborhood"),
          io.grpc.protobuf.ProtoUtils.marshaller(neighborhood.server.NeighborhoodAPI.ApproveUserToNeighborhoodRequest.getDefaultInstance()),
          io.grpc.protobuf.ProtoUtils.marshaller(neighborhood.server.NeighborhoodAPI.ApproveUserToNeighborhoodResponse.getDefaultInstance()));
  @io.grpc.ExperimentalApi
  public static final io.grpc.MethodDescriptor<neighborhood.server.NeighborhoodAPI.RejectUserToNeighborhoodRequest,
      neighborhood.server.NeighborhoodAPI.RejectUserToNeighborhoodResponse> METHOD_REJECT_USER_FROM_NEIGHBORHOOD =
      io.grpc.MethodDescriptor.create(
          io.grpc.MethodDescriptor.MethodType.UNARY,
          generateFullMethodName(
              "neighborhood.server.Service", "RejectUserFromNeighborhood"),
          io.grpc.protobuf.ProtoUtils.marshaller(neighborhood.server.NeighborhoodAPI.RejectUserToNeighborhoodRequest.getDefaultInstance()),
          io.grpc.protobuf.ProtoUtils.marshaller(neighborhood.server.NeighborhoodAPI.RejectUserToNeighborhoodResponse.getDefaultInstance()));
  @io.grpc.ExperimentalApi
  public static final io.grpc.MethodDescriptor<neighborhood.server.NeighborhoodAPI.GetUserRequestListRequest,
      neighborhood.server.NeighborhoodAPI.GetUserRequestListResponse> METHOD_GET_USER_REQUEST_LIST =
      io.grpc.MethodDescriptor.create(
          io.grpc.MethodDescriptor.MethodType.UNARY,
          generateFullMethodName(
              "neighborhood.server.Service", "GetUserRequestList"),
          io.grpc.protobuf.ProtoUtils.marshaller(neighborhood.server.NeighborhoodAPI.GetUserRequestListRequest.getDefaultInstance()),
          io.grpc.protobuf.ProtoUtils.marshaller(neighborhood.server.NeighborhoodAPI.GetUserRequestListResponse.getDefaultInstance()));
  @io.grpc.ExperimentalApi
  public static final io.grpc.MethodDescriptor<neighborhood.server.NeighborhoodAPI.AddItemToUserRequest,
      neighborhood.server.NeighborhoodAPI.AddItemToUserResponse> METHOD_ADD_ITEM_TO_USER =
      io.grpc.MethodDescriptor.create(
          io.grpc.MethodDescriptor.MethodType.UNARY,
          generateFullMethodName(
              "neighborhood.server.Service", "AddItemToUser"),
          io.grpc.protobuf.ProtoUtils.marshaller(neighborhood.server.NeighborhoodAPI.AddItemToUserRequest.getDefaultInstance()),
          io.grpc.protobuf.ProtoUtils.marshaller(neighborhood.server.NeighborhoodAPI.AddItemToUserResponse.getDefaultInstance()));
  @io.grpc.ExperimentalApi
  public static final io.grpc.MethodDescriptor<neighborhood.server.NeighborhoodAPI.DeleteItemToUserRequest,
      neighborhood.server.NeighborhoodAPI.DeleteItemToUserResponse> METHOD_DELETE_ITEM_FROM_USER =
      io.grpc.MethodDescriptor.create(
          io.grpc.MethodDescriptor.MethodType.UNARY,
          generateFullMethodName(
              "neighborhood.server.Service", "DeleteItemFromUser"),
          io.grpc.protobuf.ProtoUtils.marshaller(neighborhood.server.NeighborhoodAPI.DeleteItemToUserRequest.getDefaultInstance()),
          io.grpc.protobuf.ProtoUtils.marshaller(neighborhood.server.NeighborhoodAPI.DeleteItemToUserResponse.getDefaultInstance()));
  @io.grpc.ExperimentalApi
  public static final io.grpc.MethodDescriptor<neighborhood.server.NeighborhoodAPI.SearchItemRequest,
      neighborhood.server.NeighborhoodAPI.SearchItemResponse> METHOD_SEARCH_ITEM =
      io.grpc.MethodDescriptor.create(
          io.grpc.MethodDescriptor.MethodType.UNARY,
          generateFullMethodName(
              "neighborhood.server.Service", "SearchItem"),
          io.grpc.protobuf.ProtoUtils.marshaller(neighborhood.server.NeighborhoodAPI.SearchItemRequest.getDefaultInstance()),
          io.grpc.protobuf.ProtoUtils.marshaller(neighborhood.server.NeighborhoodAPI.SearchItemResponse.getDefaultInstance()));
  @io.grpc.ExperimentalApi
  public static final io.grpc.MethodDescriptor<neighborhood.server.NeighborhoodAPI.AddPostRequest,
      neighborhood.server.NeighborhoodAPI.AddPostResponse> METHOD_ADD_POST =
      io.grpc.MethodDescriptor.create(
          io.grpc.MethodDescriptor.MethodType.UNARY,
          generateFullMethodName(
              "neighborhood.server.Service", "AddPost"),
          io.grpc.protobuf.ProtoUtils.marshaller(neighborhood.server.NeighborhoodAPI.AddPostRequest.getDefaultInstance()),
          io.grpc.protobuf.ProtoUtils.marshaller(neighborhood.server.NeighborhoodAPI.AddPostResponse.getDefaultInstance()));
  @io.grpc.ExperimentalApi
  public static final io.grpc.MethodDescriptor<neighborhood.server.NeighborhoodAPI.DeletePostRequest,
      neighborhood.server.NeighborhoodAPI.DeletePostResponse> METHOD_DELETE_POST =
      io.grpc.MethodDescriptor.create(
          io.grpc.MethodDescriptor.MethodType.UNARY,
          generateFullMethodName(
              "neighborhood.server.Service", "DeletePost"),
          io.grpc.protobuf.ProtoUtils.marshaller(neighborhood.server.NeighborhoodAPI.DeletePostRequest.getDefaultInstance()),
          io.grpc.protobuf.ProtoUtils.marshaller(neighborhood.server.NeighborhoodAPI.DeletePostResponse.getDefaultInstance()));
  @io.grpc.ExperimentalApi
  public static final io.grpc.MethodDescriptor<neighborhood.server.NeighborhoodAPI.GetPostRequest,
      neighborhood.server.NeighborhoodAPI.GetPostResponse> METHOD_GET_POSTS =
      io.grpc.MethodDescriptor.create(
          io.grpc.MethodDescriptor.MethodType.UNARY,
          generateFullMethodName(
              "neighborhood.server.Service", "GetPosts"),
          io.grpc.protobuf.ProtoUtils.marshaller(neighborhood.server.NeighborhoodAPI.GetPostRequest.getDefaultInstance()),
          io.grpc.protobuf.ProtoUtils.marshaller(neighborhood.server.NeighborhoodAPI.GetPostResponse.getDefaultInstance()));
  @io.grpc.ExperimentalApi
  public static final io.grpc.MethodDescriptor<neighborhood.server.NeighborhoodAPI.AddTaskRequest,
      neighborhood.server.NeighborhoodAPI.AddTaskResponse> METHOD_ADD_TASK =
      io.grpc.MethodDescriptor.create(
          io.grpc.MethodDescriptor.MethodType.UNARY,
          generateFullMethodName(
              "neighborhood.server.Service", "AddTask"),
          io.grpc.protobuf.ProtoUtils.marshaller(neighborhood.server.NeighborhoodAPI.AddTaskRequest.getDefaultInstance()),
          io.grpc.protobuf.ProtoUtils.marshaller(neighborhood.server.NeighborhoodAPI.AddTaskResponse.getDefaultInstance()));
  @io.grpc.ExperimentalApi
  public static final io.grpc.MethodDescriptor<neighborhood.server.NeighborhoodAPI.GetTaskRequest,
      neighborhood.server.NeighborhoodAPI.GetTaskResponse> METHOD_GET_TASK =
      io.grpc.MethodDescriptor.create(
          io.grpc.MethodDescriptor.MethodType.UNARY,
          generateFullMethodName(
              "neighborhood.server.Service", "GetTask"),
          io.grpc.protobuf.ProtoUtils.marshaller(neighborhood.server.NeighborhoodAPI.GetTaskRequest.getDefaultInstance()),
          io.grpc.protobuf.ProtoUtils.marshaller(neighborhood.server.NeighborhoodAPI.GetTaskResponse.getDefaultInstance()));
  @io.grpc.ExperimentalApi
  public static final io.grpc.MethodDescriptor<neighborhood.server.NeighborhoodAPI.GetTaskByNeighborhoodRequest,
      neighborhood.server.NeighborhoodAPI.GetTaskByNeighborhoodResponse> METHOD_GET_TASK_BY_NEIGHBORHOOD =
      io.grpc.MethodDescriptor.create(
          io.grpc.MethodDescriptor.MethodType.UNARY,
          generateFullMethodName(
              "neighborhood.server.Service", "GetTaskByNeighborhood"),
          io.grpc.protobuf.ProtoUtils.marshaller(neighborhood.server.NeighborhoodAPI.GetTaskByNeighborhoodRequest.getDefaultInstance()),
          io.grpc.protobuf.ProtoUtils.marshaller(neighborhood.server.NeighborhoodAPI.GetTaskByNeighborhoodResponse.getDefaultInstance()));
  @io.grpc.ExperimentalApi
  public static final io.grpc.MethodDescriptor<neighborhood.server.NeighborhoodAPI.ChangeTaskStatusRequest,
      neighborhood.server.NeighborhoodAPI.ChangeTaskStatusResponse> METHOD_CHANGE_TASK_STATUS =
      io.grpc.MethodDescriptor.create(
          io.grpc.MethodDescriptor.MethodType.UNARY,
          generateFullMethodName(
              "neighborhood.server.Service", "ChangeTaskStatus"),
          io.grpc.protobuf.ProtoUtils.marshaller(neighborhood.server.NeighborhoodAPI.ChangeTaskStatusRequest.getDefaultInstance()),
          io.grpc.protobuf.ProtoUtils.marshaller(neighborhood.server.NeighborhoodAPI.ChangeTaskStatusResponse.getDefaultInstance()));
  @io.grpc.ExperimentalApi
  public static final io.grpc.MethodDescriptor<neighborhood.server.NeighborhoodAPI.AddCommentRequest,
      neighborhood.server.NeighborhoodAPI.AddCommentResponse> METHOD_ADD_COMMENT =
      io.grpc.MethodDescriptor.create(
          io.grpc.MethodDescriptor.MethodType.UNARY,
          generateFullMethodName(
              "neighborhood.server.Service", "AddComment"),
          io.grpc.protobuf.ProtoUtils.marshaller(neighborhood.server.NeighborhoodAPI.AddCommentRequest.getDefaultInstance()),
          io.grpc.protobuf.ProtoUtils.marshaller(neighborhood.server.NeighborhoodAPI.AddCommentResponse.getDefaultInstance()));
  @io.grpc.ExperimentalApi
  public static final io.grpc.MethodDescriptor<neighborhood.server.NeighborhoodAPI.AddCarRequest,
      neighborhood.server.NeighborhoodAPI.AddCarResponse> METHOD_ADD_CAR =
      io.grpc.MethodDescriptor.create(
          io.grpc.MethodDescriptor.MethodType.UNARY,
          generateFullMethodName(
              "neighborhood.server.Service", "AddCar"),
          io.grpc.protobuf.ProtoUtils.marshaller(neighborhood.server.NeighborhoodAPI.AddCarRequest.getDefaultInstance()),
          io.grpc.protobuf.ProtoUtils.marshaller(neighborhood.server.NeighborhoodAPI.AddCarResponse.getDefaultInstance()));
  @io.grpc.ExperimentalApi
  public static final io.grpc.MethodDescriptor<neighborhood.server.NeighborhoodAPI.GetCarRequest,
      neighborhood.server.NeighborhoodAPI.GetCarResponse> METHOD_GET_CAR =
      io.grpc.MethodDescriptor.create(
          io.grpc.MethodDescriptor.MethodType.UNARY,
          generateFullMethodName(
              "neighborhood.server.Service", "GetCar"),
          io.grpc.protobuf.ProtoUtils.marshaller(neighborhood.server.NeighborhoodAPI.GetCarRequest.getDefaultInstance()),
          io.grpc.protobuf.ProtoUtils.marshaller(neighborhood.server.NeighborhoodAPI.GetCarResponse.getDefaultInstance()));
  @io.grpc.ExperimentalApi
  public static final io.grpc.MethodDescriptor<neighborhood.server.NeighborhoodAPI.GetContactByCarRequest,
      neighborhood.server.NeighborhoodAPI.GetContactByCarResponse> METHOD_GET_CONTACT_BY_CAR =
      io.grpc.MethodDescriptor.create(
          io.grpc.MethodDescriptor.MethodType.UNARY,
          generateFullMethodName(
              "neighborhood.server.Service", "GetContactByCar"),
          io.grpc.protobuf.ProtoUtils.marshaller(neighborhood.server.NeighborhoodAPI.GetContactByCarRequest.getDefaultInstance()),
          io.grpc.protobuf.ProtoUtils.marshaller(neighborhood.server.NeighborhoodAPI.GetContactByCarResponse.getDefaultInstance()));

  public static ServiceStub newStub(io.grpc.Channel channel) {
    return new ServiceStub(channel);
  }

  public static ServiceBlockingStub newBlockingStub(
      io.grpc.Channel channel) {
    return new ServiceBlockingStub(channel);
  }

  public static ServiceFutureStub newFutureStub(
      io.grpc.Channel channel) {
    return new ServiceFutureStub(channel);
  }

  public static interface Service {

    public void registerUser(neighborhood.server.NeighborhoodAPI.RegisterUserRequest request,
        io.grpc.stub.StreamObserver<neighborhood.server.NeighborhoodAPI.RegisterUserResponse> responseObserver);

    public void loginUser(neighborhood.server.NeighborhoodAPI.LoginUserRequest request,
        io.grpc.stub.StreamObserver<neighborhood.server.NeighborhoodAPI.LoginUserResponse> responseObserver);

    public void resetPassword(neighborhood.server.NeighborhoodAPI.ResetPasswordRequest request,
        io.grpc.stub.StreamObserver<neighborhood.server.NeighborhoodAPI.ResetPasswordResponse> responseObserver);

    public void deleteContact(neighborhood.server.NeighborhoodAPI.DeleteContactRequest request,
        io.grpc.stub.StreamObserver<neighborhood.server.NeighborhoodAPI.DeleteContactResponse> responseObserver);

    public void addNeighborhood(neighborhood.server.NeighborhoodAPI.AddNeighborhoodRequest request,
        io.grpc.stub.StreamObserver<neighborhood.server.NeighborhoodAPI.AddNeighborhoodResponse> responseObserver);

    public void getNeighborhoodList(neighborhood.server.NeighborhoodAPI.GetNeighborhoodRequest request,
        io.grpc.stub.StreamObserver<neighborhood.server.NeighborhoodAPI.GetNeighborhoodResponse> responseObserver);

    public void addManager(neighborhood.server.NeighborhoodAPI.AddManagerRequest request,
        io.grpc.stub.StreamObserver<neighborhood.server.NeighborhoodAPI.AddManagerResponse> responseObserver);

    public void addUserToNeighborhood(neighborhood.server.NeighborhoodAPI.AddUserToNeighborhoodRequest request,
        io.grpc.stub.StreamObserver<neighborhood.server.NeighborhoodAPI.AddUserToNeighborhoodResponse> responseObserver);

    public void approveUserToNeighborhood(neighborhood.server.NeighborhoodAPI.ApproveUserToNeighborhoodRequest request,
        io.grpc.stub.StreamObserver<neighborhood.server.NeighborhoodAPI.ApproveUserToNeighborhoodResponse> responseObserver);

    public void rejectUserFromNeighborhood(neighborhood.server.NeighborhoodAPI.RejectUserToNeighborhoodRequest request,
        io.grpc.stub.StreamObserver<neighborhood.server.NeighborhoodAPI.RejectUserToNeighborhoodResponse> responseObserver);

    public void getUserRequestList(neighborhood.server.NeighborhoodAPI.GetUserRequestListRequest request,
        io.grpc.stub.StreamObserver<neighborhood.server.NeighborhoodAPI.GetUserRequestListResponse> responseObserver);

    public void addItemToUser(neighborhood.server.NeighborhoodAPI.AddItemToUserRequest request,
        io.grpc.stub.StreamObserver<neighborhood.server.NeighborhoodAPI.AddItemToUserResponse> responseObserver);

    public void deleteItemFromUser(neighborhood.server.NeighborhoodAPI.DeleteItemToUserRequest request,
        io.grpc.stub.StreamObserver<neighborhood.server.NeighborhoodAPI.DeleteItemToUserResponse> responseObserver);

    public void searchItem(neighborhood.server.NeighborhoodAPI.SearchItemRequest request,
        io.grpc.stub.StreamObserver<neighborhood.server.NeighborhoodAPI.SearchItemResponse> responseObserver);

    public void addPost(neighborhood.server.NeighborhoodAPI.AddPostRequest request,
        io.grpc.stub.StreamObserver<neighborhood.server.NeighborhoodAPI.AddPostResponse> responseObserver);

    public void deletePost(neighborhood.server.NeighborhoodAPI.DeletePostRequest request,
        io.grpc.stub.StreamObserver<neighborhood.server.NeighborhoodAPI.DeletePostResponse> responseObserver);

    public void getPosts(neighborhood.server.NeighborhoodAPI.GetPostRequest request,
        io.grpc.stub.StreamObserver<neighborhood.server.NeighborhoodAPI.GetPostResponse> responseObserver);

    public void addTask(neighborhood.server.NeighborhoodAPI.AddTaskRequest request,
        io.grpc.stub.StreamObserver<neighborhood.server.NeighborhoodAPI.AddTaskResponse> responseObserver);

    public void getTask(neighborhood.server.NeighborhoodAPI.GetTaskRequest request,
        io.grpc.stub.StreamObserver<neighborhood.server.NeighborhoodAPI.GetTaskResponse> responseObserver);

    public void getTaskByNeighborhood(neighborhood.server.NeighborhoodAPI.GetTaskByNeighborhoodRequest request,
        io.grpc.stub.StreamObserver<neighborhood.server.NeighborhoodAPI.GetTaskByNeighborhoodResponse> responseObserver);

    public void changeTaskStatus(neighborhood.server.NeighborhoodAPI.ChangeTaskStatusRequest request,
        io.grpc.stub.StreamObserver<neighborhood.server.NeighborhoodAPI.ChangeTaskStatusResponse> responseObserver);

    public void addComment(neighborhood.server.NeighborhoodAPI.AddCommentRequest request,
        io.grpc.stub.StreamObserver<neighborhood.server.NeighborhoodAPI.AddCommentResponse> responseObserver);

    public void addCar(neighborhood.server.NeighborhoodAPI.AddCarRequest request,
        io.grpc.stub.StreamObserver<neighborhood.server.NeighborhoodAPI.AddCarResponse> responseObserver);

    public void getCar(neighborhood.server.NeighborhoodAPI.GetCarRequest request,
        io.grpc.stub.StreamObserver<neighborhood.server.NeighborhoodAPI.GetCarResponse> responseObserver);

    public void getContactByCar(neighborhood.server.NeighborhoodAPI.GetContactByCarRequest request,
        io.grpc.stub.StreamObserver<neighborhood.server.NeighborhoodAPI.GetContactByCarResponse> responseObserver);
  }

  public static interface ServiceBlockingClient {

    public neighborhood.server.NeighborhoodAPI.RegisterUserResponse registerUser(neighborhood.server.NeighborhoodAPI.RegisterUserRequest request);

    public neighborhood.server.NeighborhoodAPI.LoginUserResponse loginUser(neighborhood.server.NeighborhoodAPI.LoginUserRequest request);

    public neighborhood.server.NeighborhoodAPI.ResetPasswordResponse resetPassword(neighborhood.server.NeighborhoodAPI.ResetPasswordRequest request);

    public neighborhood.server.NeighborhoodAPI.DeleteContactResponse deleteContact(neighborhood.server.NeighborhoodAPI.DeleteContactRequest request);

    public neighborhood.server.NeighborhoodAPI.AddNeighborhoodResponse addNeighborhood(neighborhood.server.NeighborhoodAPI.AddNeighborhoodRequest request);

    public neighborhood.server.NeighborhoodAPI.GetNeighborhoodResponse getNeighborhoodList(neighborhood.server.NeighborhoodAPI.GetNeighborhoodRequest request);

    public neighborhood.server.NeighborhoodAPI.AddManagerResponse addManager(neighborhood.server.NeighborhoodAPI.AddManagerRequest request);

    public neighborhood.server.NeighborhoodAPI.AddUserToNeighborhoodResponse addUserToNeighborhood(neighborhood.server.NeighborhoodAPI.AddUserToNeighborhoodRequest request);

    public neighborhood.server.NeighborhoodAPI.ApproveUserToNeighborhoodResponse approveUserToNeighborhood(neighborhood.server.NeighborhoodAPI.ApproveUserToNeighborhoodRequest request);

    public neighborhood.server.NeighborhoodAPI.RejectUserToNeighborhoodResponse rejectUserFromNeighborhood(neighborhood.server.NeighborhoodAPI.RejectUserToNeighborhoodRequest request);

    public neighborhood.server.NeighborhoodAPI.GetUserRequestListResponse getUserRequestList(neighborhood.server.NeighborhoodAPI.GetUserRequestListRequest request);

    public neighborhood.server.NeighborhoodAPI.AddItemToUserResponse addItemToUser(neighborhood.server.NeighborhoodAPI.AddItemToUserRequest request);

    public neighborhood.server.NeighborhoodAPI.DeleteItemToUserResponse deleteItemFromUser(neighborhood.server.NeighborhoodAPI.DeleteItemToUserRequest request);

    public neighborhood.server.NeighborhoodAPI.SearchItemResponse searchItem(neighborhood.server.NeighborhoodAPI.SearchItemRequest request);

    public neighborhood.server.NeighborhoodAPI.AddPostResponse addPost(neighborhood.server.NeighborhoodAPI.AddPostRequest request);

    public neighborhood.server.NeighborhoodAPI.DeletePostResponse deletePost(neighborhood.server.NeighborhoodAPI.DeletePostRequest request);

    public neighborhood.server.NeighborhoodAPI.GetPostResponse getPosts(neighborhood.server.NeighborhoodAPI.GetPostRequest request);

    public neighborhood.server.NeighborhoodAPI.AddTaskResponse addTask(neighborhood.server.NeighborhoodAPI.AddTaskRequest request);

    public neighborhood.server.NeighborhoodAPI.GetTaskResponse getTask(neighborhood.server.NeighborhoodAPI.GetTaskRequest request);

    public neighborhood.server.NeighborhoodAPI.GetTaskByNeighborhoodResponse getTaskByNeighborhood(neighborhood.server.NeighborhoodAPI.GetTaskByNeighborhoodRequest request);

    public neighborhood.server.NeighborhoodAPI.ChangeTaskStatusResponse changeTaskStatus(neighborhood.server.NeighborhoodAPI.ChangeTaskStatusRequest request);

    public neighborhood.server.NeighborhoodAPI.AddCommentResponse addComment(neighborhood.server.NeighborhoodAPI.AddCommentRequest request);

    public neighborhood.server.NeighborhoodAPI.AddCarResponse addCar(neighborhood.server.NeighborhoodAPI.AddCarRequest request);

    public neighborhood.server.NeighborhoodAPI.GetCarResponse getCar(neighborhood.server.NeighborhoodAPI.GetCarRequest request);

    public neighborhood.server.NeighborhoodAPI.GetContactByCarResponse getContactByCar(neighborhood.server.NeighborhoodAPI.GetContactByCarRequest request);
  }

  public static interface ServiceFutureClient {

    public com.google.common.util.concurrent.ListenableFuture<neighborhood.server.NeighborhoodAPI.RegisterUserResponse> registerUser(
        neighborhood.server.NeighborhoodAPI.RegisterUserRequest request);

    public com.google.common.util.concurrent.ListenableFuture<neighborhood.server.NeighborhoodAPI.LoginUserResponse> loginUser(
        neighborhood.server.NeighborhoodAPI.LoginUserRequest request);

    public com.google.common.util.concurrent.ListenableFuture<neighborhood.server.NeighborhoodAPI.ResetPasswordResponse> resetPassword(
        neighborhood.server.NeighborhoodAPI.ResetPasswordRequest request);

    public com.google.common.util.concurrent.ListenableFuture<neighborhood.server.NeighborhoodAPI.DeleteContactResponse> deleteContact(
        neighborhood.server.NeighborhoodAPI.DeleteContactRequest request);

    public com.google.common.util.concurrent.ListenableFuture<neighborhood.server.NeighborhoodAPI.AddNeighborhoodResponse> addNeighborhood(
        neighborhood.server.NeighborhoodAPI.AddNeighborhoodRequest request);

    public com.google.common.util.concurrent.ListenableFuture<neighborhood.server.NeighborhoodAPI.GetNeighborhoodResponse> getNeighborhoodList(
        neighborhood.server.NeighborhoodAPI.GetNeighborhoodRequest request);

    public com.google.common.util.concurrent.ListenableFuture<neighborhood.server.NeighborhoodAPI.AddManagerResponse> addManager(
        neighborhood.server.NeighborhoodAPI.AddManagerRequest request);

    public com.google.common.util.concurrent.ListenableFuture<neighborhood.server.NeighborhoodAPI.AddUserToNeighborhoodResponse> addUserToNeighborhood(
        neighborhood.server.NeighborhoodAPI.AddUserToNeighborhoodRequest request);

    public com.google.common.util.concurrent.ListenableFuture<neighborhood.server.NeighborhoodAPI.ApproveUserToNeighborhoodResponse> approveUserToNeighborhood(
        neighborhood.server.NeighborhoodAPI.ApproveUserToNeighborhoodRequest request);

    public com.google.common.util.concurrent.ListenableFuture<neighborhood.server.NeighborhoodAPI.RejectUserToNeighborhoodResponse> rejectUserFromNeighborhood(
        neighborhood.server.NeighborhoodAPI.RejectUserToNeighborhoodRequest request);

    public com.google.common.util.concurrent.ListenableFuture<neighborhood.server.NeighborhoodAPI.GetUserRequestListResponse> getUserRequestList(
        neighborhood.server.NeighborhoodAPI.GetUserRequestListRequest request);

    public com.google.common.util.concurrent.ListenableFuture<neighborhood.server.NeighborhoodAPI.AddItemToUserResponse> addItemToUser(
        neighborhood.server.NeighborhoodAPI.AddItemToUserRequest request);

    public com.google.common.util.concurrent.ListenableFuture<neighborhood.server.NeighborhoodAPI.DeleteItemToUserResponse> deleteItemFromUser(
        neighborhood.server.NeighborhoodAPI.DeleteItemToUserRequest request);

    public com.google.common.util.concurrent.ListenableFuture<neighborhood.server.NeighborhoodAPI.SearchItemResponse> searchItem(
        neighborhood.server.NeighborhoodAPI.SearchItemRequest request);

    public com.google.common.util.concurrent.ListenableFuture<neighborhood.server.NeighborhoodAPI.AddPostResponse> addPost(
        neighborhood.server.NeighborhoodAPI.AddPostRequest request);

    public com.google.common.util.concurrent.ListenableFuture<neighborhood.server.NeighborhoodAPI.DeletePostResponse> deletePost(
        neighborhood.server.NeighborhoodAPI.DeletePostRequest request);

    public com.google.common.util.concurrent.ListenableFuture<neighborhood.server.NeighborhoodAPI.GetPostResponse> getPosts(
        neighborhood.server.NeighborhoodAPI.GetPostRequest request);

    public com.google.common.util.concurrent.ListenableFuture<neighborhood.server.NeighborhoodAPI.AddTaskResponse> addTask(
        neighborhood.server.NeighborhoodAPI.AddTaskRequest request);

    public com.google.common.util.concurrent.ListenableFuture<neighborhood.server.NeighborhoodAPI.GetTaskResponse> getTask(
        neighborhood.server.NeighborhoodAPI.GetTaskRequest request);

    public com.google.common.util.concurrent.ListenableFuture<neighborhood.server.NeighborhoodAPI.GetTaskByNeighborhoodResponse> getTaskByNeighborhood(
        neighborhood.server.NeighborhoodAPI.GetTaskByNeighborhoodRequest request);

    public com.google.common.util.concurrent.ListenableFuture<neighborhood.server.NeighborhoodAPI.ChangeTaskStatusResponse> changeTaskStatus(
        neighborhood.server.NeighborhoodAPI.ChangeTaskStatusRequest request);

    public com.google.common.util.concurrent.ListenableFuture<neighborhood.server.NeighborhoodAPI.AddCommentResponse> addComment(
        neighborhood.server.NeighborhoodAPI.AddCommentRequest request);

    public com.google.common.util.concurrent.ListenableFuture<neighborhood.server.NeighborhoodAPI.AddCarResponse> addCar(
        neighborhood.server.NeighborhoodAPI.AddCarRequest request);

    public com.google.common.util.concurrent.ListenableFuture<neighborhood.server.NeighborhoodAPI.GetCarResponse> getCar(
        neighborhood.server.NeighborhoodAPI.GetCarRequest request);

    public com.google.common.util.concurrent.ListenableFuture<neighborhood.server.NeighborhoodAPI.GetContactByCarResponse> getContactByCar(
        neighborhood.server.NeighborhoodAPI.GetContactByCarRequest request);
  }

  public static class ServiceStub extends io.grpc.stub.AbstractStub<ServiceStub>
      implements Service {
    private ServiceStub(io.grpc.Channel channel) {
      super(channel);
    }

    private ServiceStub(io.grpc.Channel channel,
        io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @java.lang.Override
    protected ServiceStub build(io.grpc.Channel channel,
        io.grpc.CallOptions callOptions) {
      return new ServiceStub(channel, callOptions);
    }

    @java.lang.Override
    public void registerUser(neighborhood.server.NeighborhoodAPI.RegisterUserRequest request,
        io.grpc.stub.StreamObserver<neighborhood.server.NeighborhoodAPI.RegisterUserResponse> responseObserver) {
      asyncUnaryCall(
          getChannel().newCall(METHOD_REGISTER_USER, getCallOptions()), request, responseObserver);
    }

    @java.lang.Override
    public void loginUser(neighborhood.server.NeighborhoodAPI.LoginUserRequest request,
        io.grpc.stub.StreamObserver<neighborhood.server.NeighborhoodAPI.LoginUserResponse> responseObserver) {
      asyncUnaryCall(
          getChannel().newCall(METHOD_LOGIN_USER, getCallOptions()), request, responseObserver);
    }

    @java.lang.Override
    public void resetPassword(neighborhood.server.NeighborhoodAPI.ResetPasswordRequest request,
        io.grpc.stub.StreamObserver<neighborhood.server.NeighborhoodAPI.ResetPasswordResponse> responseObserver) {
      asyncUnaryCall(
          getChannel().newCall(METHOD_RESET_PASSWORD, getCallOptions()), request, responseObserver);
    }

    @java.lang.Override
    public void deleteContact(neighborhood.server.NeighborhoodAPI.DeleteContactRequest request,
        io.grpc.stub.StreamObserver<neighborhood.server.NeighborhoodAPI.DeleteContactResponse> responseObserver) {
      asyncUnaryCall(
          getChannel().newCall(METHOD_DELETE_CONTACT, getCallOptions()), request, responseObserver);
    }

    @java.lang.Override
    public void addNeighborhood(neighborhood.server.NeighborhoodAPI.AddNeighborhoodRequest request,
        io.grpc.stub.StreamObserver<neighborhood.server.NeighborhoodAPI.AddNeighborhoodResponse> responseObserver) {
      asyncUnaryCall(
          getChannel().newCall(METHOD_ADD_NEIGHBORHOOD, getCallOptions()), request, responseObserver);
    }

    @java.lang.Override
    public void getNeighborhoodList(neighborhood.server.NeighborhoodAPI.GetNeighborhoodRequest request,
        io.grpc.stub.StreamObserver<neighborhood.server.NeighborhoodAPI.GetNeighborhoodResponse> responseObserver) {
      asyncUnaryCall(
          getChannel().newCall(METHOD_GET_NEIGHBORHOOD_LIST, getCallOptions()), request, responseObserver);
    }

    @java.lang.Override
    public void addManager(neighborhood.server.NeighborhoodAPI.AddManagerRequest request,
        io.grpc.stub.StreamObserver<neighborhood.server.NeighborhoodAPI.AddManagerResponse> responseObserver) {
      asyncUnaryCall(
          getChannel().newCall(METHOD_ADD_MANAGER, getCallOptions()), request, responseObserver);
    }

    @java.lang.Override
    public void addUserToNeighborhood(neighborhood.server.NeighborhoodAPI.AddUserToNeighborhoodRequest request,
        io.grpc.stub.StreamObserver<neighborhood.server.NeighborhoodAPI.AddUserToNeighborhoodResponse> responseObserver) {
      asyncUnaryCall(
          getChannel().newCall(METHOD_ADD_USER_TO_NEIGHBORHOOD, getCallOptions()), request, responseObserver);
    }

    @java.lang.Override
    public void approveUserToNeighborhood(neighborhood.server.NeighborhoodAPI.ApproveUserToNeighborhoodRequest request,
        io.grpc.stub.StreamObserver<neighborhood.server.NeighborhoodAPI.ApproveUserToNeighborhoodResponse> responseObserver) {
      asyncUnaryCall(
          getChannel().newCall(METHOD_APPROVE_USER_TO_NEIGHBORHOOD, getCallOptions()), request, responseObserver);
    }

    @java.lang.Override
    public void rejectUserFromNeighborhood(neighborhood.server.NeighborhoodAPI.RejectUserToNeighborhoodRequest request,
        io.grpc.stub.StreamObserver<neighborhood.server.NeighborhoodAPI.RejectUserToNeighborhoodResponse> responseObserver) {
      asyncUnaryCall(
          getChannel().newCall(METHOD_REJECT_USER_FROM_NEIGHBORHOOD, getCallOptions()), request, responseObserver);
    }

    @java.lang.Override
    public void getUserRequestList(neighborhood.server.NeighborhoodAPI.GetUserRequestListRequest request,
        io.grpc.stub.StreamObserver<neighborhood.server.NeighborhoodAPI.GetUserRequestListResponse> responseObserver) {
      asyncUnaryCall(
          getChannel().newCall(METHOD_GET_USER_REQUEST_LIST, getCallOptions()), request, responseObserver);
    }

    @java.lang.Override
    public void addItemToUser(neighborhood.server.NeighborhoodAPI.AddItemToUserRequest request,
        io.grpc.stub.StreamObserver<neighborhood.server.NeighborhoodAPI.AddItemToUserResponse> responseObserver) {
      asyncUnaryCall(
          getChannel().newCall(METHOD_ADD_ITEM_TO_USER, getCallOptions()), request, responseObserver);
    }

    @java.lang.Override
    public void deleteItemFromUser(neighborhood.server.NeighborhoodAPI.DeleteItemToUserRequest request,
        io.grpc.stub.StreamObserver<neighborhood.server.NeighborhoodAPI.DeleteItemToUserResponse> responseObserver) {
      asyncUnaryCall(
          getChannel().newCall(METHOD_DELETE_ITEM_FROM_USER, getCallOptions()), request, responseObserver);
    }

    @java.lang.Override
    public void searchItem(neighborhood.server.NeighborhoodAPI.SearchItemRequest request,
        io.grpc.stub.StreamObserver<neighborhood.server.NeighborhoodAPI.SearchItemResponse> responseObserver) {
      asyncUnaryCall(
          getChannel().newCall(METHOD_SEARCH_ITEM, getCallOptions()), request, responseObserver);
    }

    @java.lang.Override
    public void addPost(neighborhood.server.NeighborhoodAPI.AddPostRequest request,
        io.grpc.stub.StreamObserver<neighborhood.server.NeighborhoodAPI.AddPostResponse> responseObserver) {
      asyncUnaryCall(
          getChannel().newCall(METHOD_ADD_POST, getCallOptions()), request, responseObserver);
    }

    @java.lang.Override
    public void deletePost(neighborhood.server.NeighborhoodAPI.DeletePostRequest request,
        io.grpc.stub.StreamObserver<neighborhood.server.NeighborhoodAPI.DeletePostResponse> responseObserver) {
      asyncUnaryCall(
          getChannel().newCall(METHOD_DELETE_POST, getCallOptions()), request, responseObserver);
    }

    @java.lang.Override
    public void getPosts(neighborhood.server.NeighborhoodAPI.GetPostRequest request,
        io.grpc.stub.StreamObserver<neighborhood.server.NeighborhoodAPI.GetPostResponse> responseObserver) {
      asyncUnaryCall(
          getChannel().newCall(METHOD_GET_POSTS, getCallOptions()), request, responseObserver);
    }

    @java.lang.Override
    public void addTask(neighborhood.server.NeighborhoodAPI.AddTaskRequest request,
        io.grpc.stub.StreamObserver<neighborhood.server.NeighborhoodAPI.AddTaskResponse> responseObserver) {
      asyncUnaryCall(
          getChannel().newCall(METHOD_ADD_TASK, getCallOptions()), request, responseObserver);
    }

    @java.lang.Override
    public void getTask(neighborhood.server.NeighborhoodAPI.GetTaskRequest request,
        io.grpc.stub.StreamObserver<neighborhood.server.NeighborhoodAPI.GetTaskResponse> responseObserver) {
      asyncUnaryCall(
          getChannel().newCall(METHOD_GET_TASK, getCallOptions()), request, responseObserver);
    }

    @java.lang.Override
    public void getTaskByNeighborhood(neighborhood.server.NeighborhoodAPI.GetTaskByNeighborhoodRequest request,
        io.grpc.stub.StreamObserver<neighborhood.server.NeighborhoodAPI.GetTaskByNeighborhoodResponse> responseObserver) {
      asyncUnaryCall(
          getChannel().newCall(METHOD_GET_TASK_BY_NEIGHBORHOOD, getCallOptions()), request, responseObserver);
    }

    @java.lang.Override
    public void changeTaskStatus(neighborhood.server.NeighborhoodAPI.ChangeTaskStatusRequest request,
        io.grpc.stub.StreamObserver<neighborhood.server.NeighborhoodAPI.ChangeTaskStatusResponse> responseObserver) {
      asyncUnaryCall(
          getChannel().newCall(METHOD_CHANGE_TASK_STATUS, getCallOptions()), request, responseObserver);
    }

    @java.lang.Override
    public void addComment(neighborhood.server.NeighborhoodAPI.AddCommentRequest request,
        io.grpc.stub.StreamObserver<neighborhood.server.NeighborhoodAPI.AddCommentResponse> responseObserver) {
      asyncUnaryCall(
          getChannel().newCall(METHOD_ADD_COMMENT, getCallOptions()), request, responseObserver);
    }

    @java.lang.Override
    public void addCar(neighborhood.server.NeighborhoodAPI.AddCarRequest request,
        io.grpc.stub.StreamObserver<neighborhood.server.NeighborhoodAPI.AddCarResponse> responseObserver) {
      asyncUnaryCall(
          getChannel().newCall(METHOD_ADD_CAR, getCallOptions()), request, responseObserver);
    }

    @java.lang.Override
    public void getCar(neighborhood.server.NeighborhoodAPI.GetCarRequest request,
        io.grpc.stub.StreamObserver<neighborhood.server.NeighborhoodAPI.GetCarResponse> responseObserver) {
      asyncUnaryCall(
          getChannel().newCall(METHOD_GET_CAR, getCallOptions()), request, responseObserver);
    }

    @java.lang.Override
    public void getContactByCar(neighborhood.server.NeighborhoodAPI.GetContactByCarRequest request,
        io.grpc.stub.StreamObserver<neighborhood.server.NeighborhoodAPI.GetContactByCarResponse> responseObserver) {
      asyncUnaryCall(
          getChannel().newCall(METHOD_GET_CONTACT_BY_CAR, getCallOptions()), request, responseObserver);
    }
  }

  public static class ServiceBlockingStub extends io.grpc.stub.AbstractStub<ServiceBlockingStub>
      implements ServiceBlockingClient {
    private ServiceBlockingStub(io.grpc.Channel channel) {
      super(channel);
    }

    private ServiceBlockingStub(io.grpc.Channel channel,
        io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @java.lang.Override
    protected ServiceBlockingStub build(io.grpc.Channel channel,
        io.grpc.CallOptions callOptions) {
      return new ServiceBlockingStub(channel, callOptions);
    }

    @java.lang.Override
    public neighborhood.server.NeighborhoodAPI.RegisterUserResponse registerUser(neighborhood.server.NeighborhoodAPI.RegisterUserRequest request) {
      return blockingUnaryCall(
          getChannel(), METHOD_REGISTER_USER, getCallOptions(), request);
    }

    @java.lang.Override
    public neighborhood.server.NeighborhoodAPI.LoginUserResponse loginUser(neighborhood.server.NeighborhoodAPI.LoginUserRequest request) {
      return blockingUnaryCall(
          getChannel(), METHOD_LOGIN_USER, getCallOptions(), request);
    }

    @java.lang.Override
    public neighborhood.server.NeighborhoodAPI.ResetPasswordResponse resetPassword(neighborhood.server.NeighborhoodAPI.ResetPasswordRequest request) {
      return blockingUnaryCall(
          getChannel(), METHOD_RESET_PASSWORD, getCallOptions(), request);
    }

    @java.lang.Override
    public neighborhood.server.NeighborhoodAPI.DeleteContactResponse deleteContact(neighborhood.server.NeighborhoodAPI.DeleteContactRequest request) {
      return blockingUnaryCall(
          getChannel(), METHOD_DELETE_CONTACT, getCallOptions(), request);
    }

    @java.lang.Override
    public neighborhood.server.NeighborhoodAPI.AddNeighborhoodResponse addNeighborhood(neighborhood.server.NeighborhoodAPI.AddNeighborhoodRequest request) {
      return blockingUnaryCall(
          getChannel(), METHOD_ADD_NEIGHBORHOOD, getCallOptions(), request);
    }

    @java.lang.Override
    public neighborhood.server.NeighborhoodAPI.GetNeighborhoodResponse getNeighborhoodList(neighborhood.server.NeighborhoodAPI.GetNeighborhoodRequest request) {
      return blockingUnaryCall(
          getChannel(), METHOD_GET_NEIGHBORHOOD_LIST, getCallOptions(), request);
    }

    @java.lang.Override
    public neighborhood.server.NeighborhoodAPI.AddManagerResponse addManager(neighborhood.server.NeighborhoodAPI.AddManagerRequest request) {
      return blockingUnaryCall(
          getChannel(), METHOD_ADD_MANAGER, getCallOptions(), request);
    }

    @java.lang.Override
    public neighborhood.server.NeighborhoodAPI.AddUserToNeighborhoodResponse addUserToNeighborhood(neighborhood.server.NeighborhoodAPI.AddUserToNeighborhoodRequest request) {
      return blockingUnaryCall(
          getChannel(), METHOD_ADD_USER_TO_NEIGHBORHOOD, getCallOptions(), request);
    }

    @java.lang.Override
    public neighborhood.server.NeighborhoodAPI.ApproveUserToNeighborhoodResponse approveUserToNeighborhood(neighborhood.server.NeighborhoodAPI.ApproveUserToNeighborhoodRequest request) {
      return blockingUnaryCall(
          getChannel(), METHOD_APPROVE_USER_TO_NEIGHBORHOOD, getCallOptions(), request);
    }

    @java.lang.Override
    public neighborhood.server.NeighborhoodAPI.RejectUserToNeighborhoodResponse rejectUserFromNeighborhood(neighborhood.server.NeighborhoodAPI.RejectUserToNeighborhoodRequest request) {
      return blockingUnaryCall(
          getChannel(), METHOD_REJECT_USER_FROM_NEIGHBORHOOD, getCallOptions(), request);
    }

    @java.lang.Override
    public neighborhood.server.NeighborhoodAPI.GetUserRequestListResponse getUserRequestList(neighborhood.server.NeighborhoodAPI.GetUserRequestListRequest request) {
      return blockingUnaryCall(
          getChannel(), METHOD_GET_USER_REQUEST_LIST, getCallOptions(), request);
    }

    @java.lang.Override
    public neighborhood.server.NeighborhoodAPI.AddItemToUserResponse addItemToUser(neighborhood.server.NeighborhoodAPI.AddItemToUserRequest request) {
      return blockingUnaryCall(
          getChannel(), METHOD_ADD_ITEM_TO_USER, getCallOptions(), request);
    }

    @java.lang.Override
    public neighborhood.server.NeighborhoodAPI.DeleteItemToUserResponse deleteItemFromUser(neighborhood.server.NeighborhoodAPI.DeleteItemToUserRequest request) {
      return blockingUnaryCall(
          getChannel(), METHOD_DELETE_ITEM_FROM_USER, getCallOptions(), request);
    }

    @java.lang.Override
    public neighborhood.server.NeighborhoodAPI.SearchItemResponse searchItem(neighborhood.server.NeighborhoodAPI.SearchItemRequest request) {
      return blockingUnaryCall(
          getChannel(), METHOD_SEARCH_ITEM, getCallOptions(), request);
    }

    @java.lang.Override
    public neighborhood.server.NeighborhoodAPI.AddPostResponse addPost(neighborhood.server.NeighborhoodAPI.AddPostRequest request) {
      return blockingUnaryCall(
          getChannel(), METHOD_ADD_POST, getCallOptions(), request);
    }

    @java.lang.Override
    public neighborhood.server.NeighborhoodAPI.DeletePostResponse deletePost(neighborhood.server.NeighborhoodAPI.DeletePostRequest request) {
      return blockingUnaryCall(
          getChannel(), METHOD_DELETE_POST, getCallOptions(), request);
    }

    @java.lang.Override
    public neighborhood.server.NeighborhoodAPI.GetPostResponse getPosts(neighborhood.server.NeighborhoodAPI.GetPostRequest request) {
      return blockingUnaryCall(
          getChannel(), METHOD_GET_POSTS, getCallOptions(), request);
    }

    @java.lang.Override
    public neighborhood.server.NeighborhoodAPI.AddTaskResponse addTask(neighborhood.server.NeighborhoodAPI.AddTaskRequest request) {
      return blockingUnaryCall(
          getChannel(), METHOD_ADD_TASK, getCallOptions(), request);
    }

    @java.lang.Override
    public neighborhood.server.NeighborhoodAPI.GetTaskResponse getTask(neighborhood.server.NeighborhoodAPI.GetTaskRequest request) {
      return blockingUnaryCall(
          getChannel(), METHOD_GET_TASK, getCallOptions(), request);
    }

    @java.lang.Override
    public neighborhood.server.NeighborhoodAPI.GetTaskByNeighborhoodResponse getTaskByNeighborhood(neighborhood.server.NeighborhoodAPI.GetTaskByNeighborhoodRequest request) {
      return blockingUnaryCall(
          getChannel(), METHOD_GET_TASK_BY_NEIGHBORHOOD, getCallOptions(), request);
    }

    @java.lang.Override
    public neighborhood.server.NeighborhoodAPI.ChangeTaskStatusResponse changeTaskStatus(neighborhood.server.NeighborhoodAPI.ChangeTaskStatusRequest request) {
      return blockingUnaryCall(
          getChannel(), METHOD_CHANGE_TASK_STATUS, getCallOptions(), request);
    }

    @java.lang.Override
    public neighborhood.server.NeighborhoodAPI.AddCommentResponse addComment(neighborhood.server.NeighborhoodAPI.AddCommentRequest request) {
      return blockingUnaryCall(
          getChannel(), METHOD_ADD_COMMENT, getCallOptions(), request);
    }

    @java.lang.Override
    public neighborhood.server.NeighborhoodAPI.AddCarResponse addCar(neighborhood.server.NeighborhoodAPI.AddCarRequest request) {
      return blockingUnaryCall(
          getChannel(), METHOD_ADD_CAR, getCallOptions(), request);
    }

    @java.lang.Override
    public neighborhood.server.NeighborhoodAPI.GetCarResponse getCar(neighborhood.server.NeighborhoodAPI.GetCarRequest request) {
      return blockingUnaryCall(
          getChannel(), METHOD_GET_CAR, getCallOptions(), request);
    }

    @java.lang.Override
    public neighborhood.server.NeighborhoodAPI.GetContactByCarResponse getContactByCar(neighborhood.server.NeighborhoodAPI.GetContactByCarRequest request) {
      return blockingUnaryCall(
          getChannel(), METHOD_GET_CONTACT_BY_CAR, getCallOptions(), request);
    }
  }

  public static class ServiceFutureStub extends io.grpc.stub.AbstractStub<ServiceFutureStub>
      implements ServiceFutureClient {
    private ServiceFutureStub(io.grpc.Channel channel) {
      super(channel);
    }

    private ServiceFutureStub(io.grpc.Channel channel,
        io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @java.lang.Override
    protected ServiceFutureStub build(io.grpc.Channel channel,
        io.grpc.CallOptions callOptions) {
      return new ServiceFutureStub(channel, callOptions);
    }

    @java.lang.Override
    public com.google.common.util.concurrent.ListenableFuture<neighborhood.server.NeighborhoodAPI.RegisterUserResponse> registerUser(
        neighborhood.server.NeighborhoodAPI.RegisterUserRequest request) {
      return futureUnaryCall(
          getChannel().newCall(METHOD_REGISTER_USER, getCallOptions()), request);
    }

    @java.lang.Override
    public com.google.common.util.concurrent.ListenableFuture<neighborhood.server.NeighborhoodAPI.LoginUserResponse> loginUser(
        neighborhood.server.NeighborhoodAPI.LoginUserRequest request) {
      return futureUnaryCall(
          getChannel().newCall(METHOD_LOGIN_USER, getCallOptions()), request);
    }

    @java.lang.Override
    public com.google.common.util.concurrent.ListenableFuture<neighborhood.server.NeighborhoodAPI.ResetPasswordResponse> resetPassword(
        neighborhood.server.NeighborhoodAPI.ResetPasswordRequest request) {
      return futureUnaryCall(
          getChannel().newCall(METHOD_RESET_PASSWORD, getCallOptions()), request);
    }

    @java.lang.Override
    public com.google.common.util.concurrent.ListenableFuture<neighborhood.server.NeighborhoodAPI.DeleteContactResponse> deleteContact(
        neighborhood.server.NeighborhoodAPI.DeleteContactRequest request) {
      return futureUnaryCall(
          getChannel().newCall(METHOD_DELETE_CONTACT, getCallOptions()), request);
    }

    @java.lang.Override
    public com.google.common.util.concurrent.ListenableFuture<neighborhood.server.NeighborhoodAPI.AddNeighborhoodResponse> addNeighborhood(
        neighborhood.server.NeighborhoodAPI.AddNeighborhoodRequest request) {
      return futureUnaryCall(
          getChannel().newCall(METHOD_ADD_NEIGHBORHOOD, getCallOptions()), request);
    }

    @java.lang.Override
    public com.google.common.util.concurrent.ListenableFuture<neighborhood.server.NeighborhoodAPI.GetNeighborhoodResponse> getNeighborhoodList(
        neighborhood.server.NeighborhoodAPI.GetNeighborhoodRequest request) {
      return futureUnaryCall(
          getChannel().newCall(METHOD_GET_NEIGHBORHOOD_LIST, getCallOptions()), request);
    }

    @java.lang.Override
    public com.google.common.util.concurrent.ListenableFuture<neighborhood.server.NeighborhoodAPI.AddManagerResponse> addManager(
        neighborhood.server.NeighborhoodAPI.AddManagerRequest request) {
      return futureUnaryCall(
          getChannel().newCall(METHOD_ADD_MANAGER, getCallOptions()), request);
    }

    @java.lang.Override
    public com.google.common.util.concurrent.ListenableFuture<neighborhood.server.NeighborhoodAPI.AddUserToNeighborhoodResponse> addUserToNeighborhood(
        neighborhood.server.NeighborhoodAPI.AddUserToNeighborhoodRequest request) {
      return futureUnaryCall(
          getChannel().newCall(METHOD_ADD_USER_TO_NEIGHBORHOOD, getCallOptions()), request);
    }

    @java.lang.Override
    public com.google.common.util.concurrent.ListenableFuture<neighborhood.server.NeighborhoodAPI.ApproveUserToNeighborhoodResponse> approveUserToNeighborhood(
        neighborhood.server.NeighborhoodAPI.ApproveUserToNeighborhoodRequest request) {
      return futureUnaryCall(
          getChannel().newCall(METHOD_APPROVE_USER_TO_NEIGHBORHOOD, getCallOptions()), request);
    }

    @java.lang.Override
    public com.google.common.util.concurrent.ListenableFuture<neighborhood.server.NeighborhoodAPI.RejectUserToNeighborhoodResponse> rejectUserFromNeighborhood(
        neighborhood.server.NeighborhoodAPI.RejectUserToNeighborhoodRequest request) {
      return futureUnaryCall(
          getChannel().newCall(METHOD_REJECT_USER_FROM_NEIGHBORHOOD, getCallOptions()), request);
    }

    @java.lang.Override
    public com.google.common.util.concurrent.ListenableFuture<neighborhood.server.NeighborhoodAPI.GetUserRequestListResponse> getUserRequestList(
        neighborhood.server.NeighborhoodAPI.GetUserRequestListRequest request) {
      return futureUnaryCall(
          getChannel().newCall(METHOD_GET_USER_REQUEST_LIST, getCallOptions()), request);
    }

    @java.lang.Override
    public com.google.common.util.concurrent.ListenableFuture<neighborhood.server.NeighborhoodAPI.AddItemToUserResponse> addItemToUser(
        neighborhood.server.NeighborhoodAPI.AddItemToUserRequest request) {
      return futureUnaryCall(
          getChannel().newCall(METHOD_ADD_ITEM_TO_USER, getCallOptions()), request);
    }

    @java.lang.Override
    public com.google.common.util.concurrent.ListenableFuture<neighborhood.server.NeighborhoodAPI.DeleteItemToUserResponse> deleteItemFromUser(
        neighborhood.server.NeighborhoodAPI.DeleteItemToUserRequest request) {
      return futureUnaryCall(
          getChannel().newCall(METHOD_DELETE_ITEM_FROM_USER, getCallOptions()), request);
    }

    @java.lang.Override
    public com.google.common.util.concurrent.ListenableFuture<neighborhood.server.NeighborhoodAPI.SearchItemResponse> searchItem(
        neighborhood.server.NeighborhoodAPI.SearchItemRequest request) {
      return futureUnaryCall(
          getChannel().newCall(METHOD_SEARCH_ITEM, getCallOptions()), request);
    }

    @java.lang.Override
    public com.google.common.util.concurrent.ListenableFuture<neighborhood.server.NeighborhoodAPI.AddPostResponse> addPost(
        neighborhood.server.NeighborhoodAPI.AddPostRequest request) {
      return futureUnaryCall(
          getChannel().newCall(METHOD_ADD_POST, getCallOptions()), request);
    }

    @java.lang.Override
    public com.google.common.util.concurrent.ListenableFuture<neighborhood.server.NeighborhoodAPI.DeletePostResponse> deletePost(
        neighborhood.server.NeighborhoodAPI.DeletePostRequest request) {
      return futureUnaryCall(
          getChannel().newCall(METHOD_DELETE_POST, getCallOptions()), request);
    }

    @java.lang.Override
    public com.google.common.util.concurrent.ListenableFuture<neighborhood.server.NeighborhoodAPI.GetPostResponse> getPosts(
        neighborhood.server.NeighborhoodAPI.GetPostRequest request) {
      return futureUnaryCall(
          getChannel().newCall(METHOD_GET_POSTS, getCallOptions()), request);
    }

    @java.lang.Override
    public com.google.common.util.concurrent.ListenableFuture<neighborhood.server.NeighborhoodAPI.AddTaskResponse> addTask(
        neighborhood.server.NeighborhoodAPI.AddTaskRequest request) {
      return futureUnaryCall(
          getChannel().newCall(METHOD_ADD_TASK, getCallOptions()), request);
    }

    @java.lang.Override
    public com.google.common.util.concurrent.ListenableFuture<neighborhood.server.NeighborhoodAPI.GetTaskResponse> getTask(
        neighborhood.server.NeighborhoodAPI.GetTaskRequest request) {
      return futureUnaryCall(
          getChannel().newCall(METHOD_GET_TASK, getCallOptions()), request);
    }

    @java.lang.Override
    public com.google.common.util.concurrent.ListenableFuture<neighborhood.server.NeighborhoodAPI.GetTaskByNeighborhoodResponse> getTaskByNeighborhood(
        neighborhood.server.NeighborhoodAPI.GetTaskByNeighborhoodRequest request) {
      return futureUnaryCall(
          getChannel().newCall(METHOD_GET_TASK_BY_NEIGHBORHOOD, getCallOptions()), request);
    }

    @java.lang.Override
    public com.google.common.util.concurrent.ListenableFuture<neighborhood.server.NeighborhoodAPI.ChangeTaskStatusResponse> changeTaskStatus(
        neighborhood.server.NeighborhoodAPI.ChangeTaskStatusRequest request) {
      return futureUnaryCall(
          getChannel().newCall(METHOD_CHANGE_TASK_STATUS, getCallOptions()), request);
    }

    @java.lang.Override
    public com.google.common.util.concurrent.ListenableFuture<neighborhood.server.NeighborhoodAPI.AddCommentResponse> addComment(
        neighborhood.server.NeighborhoodAPI.AddCommentRequest request) {
      return futureUnaryCall(
          getChannel().newCall(METHOD_ADD_COMMENT, getCallOptions()), request);
    }

    @java.lang.Override
    public com.google.common.util.concurrent.ListenableFuture<neighborhood.server.NeighborhoodAPI.AddCarResponse> addCar(
        neighborhood.server.NeighborhoodAPI.AddCarRequest request) {
      return futureUnaryCall(
          getChannel().newCall(METHOD_ADD_CAR, getCallOptions()), request);
    }

    @java.lang.Override
    public com.google.common.util.concurrent.ListenableFuture<neighborhood.server.NeighborhoodAPI.GetCarResponse> getCar(
        neighborhood.server.NeighborhoodAPI.GetCarRequest request) {
      return futureUnaryCall(
          getChannel().newCall(METHOD_GET_CAR, getCallOptions()), request);
    }

    @java.lang.Override
    public com.google.common.util.concurrent.ListenableFuture<neighborhood.server.NeighborhoodAPI.GetContactByCarResponse> getContactByCar(
        neighborhood.server.NeighborhoodAPI.GetContactByCarRequest request) {
      return futureUnaryCall(
          getChannel().newCall(METHOD_GET_CONTACT_BY_CAR, getCallOptions()), request);
    }
  }

  private static final int METHODID_REGISTER_USER = 0;
  private static final int METHODID_LOGIN_USER = 1;
  private static final int METHODID_RESET_PASSWORD = 2;
  private static final int METHODID_DELETE_CONTACT = 3;
  private static final int METHODID_ADD_NEIGHBORHOOD = 4;
  private static final int METHODID_GET_NEIGHBORHOOD_LIST = 5;
  private static final int METHODID_ADD_MANAGER = 6;
  private static final int METHODID_ADD_USER_TO_NEIGHBORHOOD = 7;
  private static final int METHODID_APPROVE_USER_TO_NEIGHBORHOOD = 8;
  private static final int METHODID_REJECT_USER_FROM_NEIGHBORHOOD = 9;
  private static final int METHODID_GET_USER_REQUEST_LIST = 10;
  private static final int METHODID_ADD_ITEM_TO_USER = 11;
  private static final int METHODID_DELETE_ITEM_FROM_USER = 12;
  private static final int METHODID_SEARCH_ITEM = 13;
  private static final int METHODID_ADD_POST = 14;
  private static final int METHODID_DELETE_POST = 15;
  private static final int METHODID_GET_POSTS = 16;
  private static final int METHODID_ADD_TASK = 17;
  private static final int METHODID_GET_TASK = 18;
  private static final int METHODID_GET_TASK_BY_NEIGHBORHOOD = 19;
  private static final int METHODID_CHANGE_TASK_STATUS = 20;
  private static final int METHODID_ADD_COMMENT = 21;
  private static final int METHODID_ADD_CAR = 22;
  private static final int METHODID_GET_CAR = 23;
  private static final int METHODID_GET_CONTACT_BY_CAR = 24;

  private static class MethodHandlers<Req, Resp> implements
      io.grpc.stub.ServerCalls.UnaryMethod<Req, Resp>,
      io.grpc.stub.ServerCalls.ServerStreamingMethod<Req, Resp>,
      io.grpc.stub.ServerCalls.ClientStreamingMethod<Req, Resp>,
      io.grpc.stub.ServerCalls.BidiStreamingMethod<Req, Resp> {
    private final Service serviceImpl;
    private final int methodId;

    public MethodHandlers(Service serviceImpl, int methodId) {
      this.serviceImpl = serviceImpl;
      this.methodId = methodId;
    }

    @java.lang.SuppressWarnings("unchecked")
    public void invoke(Req request, io.grpc.stub.StreamObserver<Resp> responseObserver) {
      switch (methodId) {
        case METHODID_REGISTER_USER:
          serviceImpl.registerUser((neighborhood.server.NeighborhoodAPI.RegisterUserRequest) request,
              (io.grpc.stub.StreamObserver<neighborhood.server.NeighborhoodAPI.RegisterUserResponse>) responseObserver);
          break;
        case METHODID_LOGIN_USER:
          serviceImpl.loginUser((neighborhood.server.NeighborhoodAPI.LoginUserRequest) request,
              (io.grpc.stub.StreamObserver<neighborhood.server.NeighborhoodAPI.LoginUserResponse>) responseObserver);
          break;
        case METHODID_RESET_PASSWORD:
          serviceImpl.resetPassword((neighborhood.server.NeighborhoodAPI.ResetPasswordRequest) request,
              (io.grpc.stub.StreamObserver<neighborhood.server.NeighborhoodAPI.ResetPasswordResponse>) responseObserver);
          break;
        case METHODID_DELETE_CONTACT:
          serviceImpl.deleteContact((neighborhood.server.NeighborhoodAPI.DeleteContactRequest) request,
              (io.grpc.stub.StreamObserver<neighborhood.server.NeighborhoodAPI.DeleteContactResponse>) responseObserver);
          break;
        case METHODID_ADD_NEIGHBORHOOD:
          serviceImpl.addNeighborhood((neighborhood.server.NeighborhoodAPI.AddNeighborhoodRequest) request,
              (io.grpc.stub.StreamObserver<neighborhood.server.NeighborhoodAPI.AddNeighborhoodResponse>) responseObserver);
          break;
        case METHODID_GET_NEIGHBORHOOD_LIST:
          serviceImpl.getNeighborhoodList((neighborhood.server.NeighborhoodAPI.GetNeighborhoodRequest) request,
              (io.grpc.stub.StreamObserver<neighborhood.server.NeighborhoodAPI.GetNeighborhoodResponse>) responseObserver);
          break;
        case METHODID_ADD_MANAGER:
          serviceImpl.addManager((neighborhood.server.NeighborhoodAPI.AddManagerRequest) request,
              (io.grpc.stub.StreamObserver<neighborhood.server.NeighborhoodAPI.AddManagerResponse>) responseObserver);
          break;
        case METHODID_ADD_USER_TO_NEIGHBORHOOD:
          serviceImpl.addUserToNeighborhood((neighborhood.server.NeighborhoodAPI.AddUserToNeighborhoodRequest) request,
              (io.grpc.stub.StreamObserver<neighborhood.server.NeighborhoodAPI.AddUserToNeighborhoodResponse>) responseObserver);
          break;
        case METHODID_APPROVE_USER_TO_NEIGHBORHOOD:
          serviceImpl.approveUserToNeighborhood((neighborhood.server.NeighborhoodAPI.ApproveUserToNeighborhoodRequest) request,
              (io.grpc.stub.StreamObserver<neighborhood.server.NeighborhoodAPI.ApproveUserToNeighborhoodResponse>) responseObserver);
          break;
        case METHODID_REJECT_USER_FROM_NEIGHBORHOOD:
          serviceImpl.rejectUserFromNeighborhood((neighborhood.server.NeighborhoodAPI.RejectUserToNeighborhoodRequest) request,
              (io.grpc.stub.StreamObserver<neighborhood.server.NeighborhoodAPI.RejectUserToNeighborhoodResponse>) responseObserver);
          break;
        case METHODID_GET_USER_REQUEST_LIST:
          serviceImpl.getUserRequestList((neighborhood.server.NeighborhoodAPI.GetUserRequestListRequest) request,
              (io.grpc.stub.StreamObserver<neighborhood.server.NeighborhoodAPI.GetUserRequestListResponse>) responseObserver);
          break;
        case METHODID_ADD_ITEM_TO_USER:
          serviceImpl.addItemToUser((neighborhood.server.NeighborhoodAPI.AddItemToUserRequest) request,
              (io.grpc.stub.StreamObserver<neighborhood.server.NeighborhoodAPI.AddItemToUserResponse>) responseObserver);
          break;
        case METHODID_DELETE_ITEM_FROM_USER:
          serviceImpl.deleteItemFromUser((neighborhood.server.NeighborhoodAPI.DeleteItemToUserRequest) request,
              (io.grpc.stub.StreamObserver<neighborhood.server.NeighborhoodAPI.DeleteItemToUserResponse>) responseObserver);
          break;
        case METHODID_SEARCH_ITEM:
          serviceImpl.searchItem((neighborhood.server.NeighborhoodAPI.SearchItemRequest) request,
              (io.grpc.stub.StreamObserver<neighborhood.server.NeighborhoodAPI.SearchItemResponse>) responseObserver);
          break;
        case METHODID_ADD_POST:
          serviceImpl.addPost((neighborhood.server.NeighborhoodAPI.AddPostRequest) request,
              (io.grpc.stub.StreamObserver<neighborhood.server.NeighborhoodAPI.AddPostResponse>) responseObserver);
          break;
        case METHODID_DELETE_POST:
          serviceImpl.deletePost((neighborhood.server.NeighborhoodAPI.DeletePostRequest) request,
              (io.grpc.stub.StreamObserver<neighborhood.server.NeighborhoodAPI.DeletePostResponse>) responseObserver);
          break;
        case METHODID_GET_POSTS:
          serviceImpl.getPosts((neighborhood.server.NeighborhoodAPI.GetPostRequest) request,
              (io.grpc.stub.StreamObserver<neighborhood.server.NeighborhoodAPI.GetPostResponse>) responseObserver);
          break;
        case METHODID_ADD_TASK:
          serviceImpl.addTask((neighborhood.server.NeighborhoodAPI.AddTaskRequest) request,
              (io.grpc.stub.StreamObserver<neighborhood.server.NeighborhoodAPI.AddTaskResponse>) responseObserver);
          break;
        case METHODID_GET_TASK:
          serviceImpl.getTask((neighborhood.server.NeighborhoodAPI.GetTaskRequest) request,
              (io.grpc.stub.StreamObserver<neighborhood.server.NeighborhoodAPI.GetTaskResponse>) responseObserver);
          break;
        case METHODID_GET_TASK_BY_NEIGHBORHOOD:
          serviceImpl.getTaskByNeighborhood((neighborhood.server.NeighborhoodAPI.GetTaskByNeighborhoodRequest) request,
              (io.grpc.stub.StreamObserver<neighborhood.server.NeighborhoodAPI.GetTaskByNeighborhoodResponse>) responseObserver);
          break;
        case METHODID_CHANGE_TASK_STATUS:
          serviceImpl.changeTaskStatus((neighborhood.server.NeighborhoodAPI.ChangeTaskStatusRequest) request,
              (io.grpc.stub.StreamObserver<neighborhood.server.NeighborhoodAPI.ChangeTaskStatusResponse>) responseObserver);
          break;
        case METHODID_ADD_COMMENT:
          serviceImpl.addComment((neighborhood.server.NeighborhoodAPI.AddCommentRequest) request,
              (io.grpc.stub.StreamObserver<neighborhood.server.NeighborhoodAPI.AddCommentResponse>) responseObserver);
          break;
        case METHODID_ADD_CAR:
          serviceImpl.addCar((neighborhood.server.NeighborhoodAPI.AddCarRequest) request,
              (io.grpc.stub.StreamObserver<neighborhood.server.NeighborhoodAPI.AddCarResponse>) responseObserver);
          break;
        case METHODID_GET_CAR:
          serviceImpl.getCar((neighborhood.server.NeighborhoodAPI.GetCarRequest) request,
              (io.grpc.stub.StreamObserver<neighborhood.server.NeighborhoodAPI.GetCarResponse>) responseObserver);
          break;
        case METHODID_GET_CONTACT_BY_CAR:
          serviceImpl.getContactByCar((neighborhood.server.NeighborhoodAPI.GetContactByCarRequest) request,
              (io.grpc.stub.StreamObserver<neighborhood.server.NeighborhoodAPI.GetContactByCarResponse>) responseObserver);
          break;
        default:
          throw new AssertionError();
      }
    }

    @java.lang.SuppressWarnings("unchecked")
    public io.grpc.stub.StreamObserver<Req> invoke(
        io.grpc.stub.StreamObserver<Resp> responseObserver) {
      switch (methodId) {
        default:
          throw new AssertionError();
      }
    }
  }

  public static io.grpc.ServerServiceDefinition bindService(
      final Service serviceImpl) {
    return io.grpc.ServerServiceDefinition.builder(SERVICE_NAME)
        .addMethod(
          METHOD_REGISTER_USER,
          asyncUnaryCall(
            new MethodHandlers<
              neighborhood.server.NeighborhoodAPI.RegisterUserRequest,
              neighborhood.server.NeighborhoodAPI.RegisterUserResponse>(
                serviceImpl, METHODID_REGISTER_USER)))
        .addMethod(
          METHOD_LOGIN_USER,
          asyncUnaryCall(
            new MethodHandlers<
              neighborhood.server.NeighborhoodAPI.LoginUserRequest,
              neighborhood.server.NeighborhoodAPI.LoginUserResponse>(
                serviceImpl, METHODID_LOGIN_USER)))
        .addMethod(
          METHOD_RESET_PASSWORD,
          asyncUnaryCall(
            new MethodHandlers<
              neighborhood.server.NeighborhoodAPI.ResetPasswordRequest,
              neighborhood.server.NeighborhoodAPI.ResetPasswordResponse>(
                serviceImpl, METHODID_RESET_PASSWORD)))
        .addMethod(
          METHOD_DELETE_CONTACT,
          asyncUnaryCall(
            new MethodHandlers<
              neighborhood.server.NeighborhoodAPI.DeleteContactRequest,
              neighborhood.server.NeighborhoodAPI.DeleteContactResponse>(
                serviceImpl, METHODID_DELETE_CONTACT)))
        .addMethod(
          METHOD_ADD_NEIGHBORHOOD,
          asyncUnaryCall(
            new MethodHandlers<
              neighborhood.server.NeighborhoodAPI.AddNeighborhoodRequest,
              neighborhood.server.NeighborhoodAPI.AddNeighborhoodResponse>(
                serviceImpl, METHODID_ADD_NEIGHBORHOOD)))
        .addMethod(
          METHOD_GET_NEIGHBORHOOD_LIST,
          asyncUnaryCall(
            new MethodHandlers<
              neighborhood.server.NeighborhoodAPI.GetNeighborhoodRequest,
              neighborhood.server.NeighborhoodAPI.GetNeighborhoodResponse>(
                serviceImpl, METHODID_GET_NEIGHBORHOOD_LIST)))
        .addMethod(
          METHOD_ADD_MANAGER,
          asyncUnaryCall(
            new MethodHandlers<
              neighborhood.server.NeighborhoodAPI.AddManagerRequest,
              neighborhood.server.NeighborhoodAPI.AddManagerResponse>(
                serviceImpl, METHODID_ADD_MANAGER)))
        .addMethod(
          METHOD_ADD_USER_TO_NEIGHBORHOOD,
          asyncUnaryCall(
            new MethodHandlers<
              neighborhood.server.NeighborhoodAPI.AddUserToNeighborhoodRequest,
              neighborhood.server.NeighborhoodAPI.AddUserToNeighborhoodResponse>(
                serviceImpl, METHODID_ADD_USER_TO_NEIGHBORHOOD)))
        .addMethod(
          METHOD_APPROVE_USER_TO_NEIGHBORHOOD,
          asyncUnaryCall(
            new MethodHandlers<
              neighborhood.server.NeighborhoodAPI.ApproveUserToNeighborhoodRequest,
              neighborhood.server.NeighborhoodAPI.ApproveUserToNeighborhoodResponse>(
                serviceImpl, METHODID_APPROVE_USER_TO_NEIGHBORHOOD)))
        .addMethod(
          METHOD_REJECT_USER_FROM_NEIGHBORHOOD,
          asyncUnaryCall(
            new MethodHandlers<
              neighborhood.server.NeighborhoodAPI.RejectUserToNeighborhoodRequest,
              neighborhood.server.NeighborhoodAPI.RejectUserToNeighborhoodResponse>(
                serviceImpl, METHODID_REJECT_USER_FROM_NEIGHBORHOOD)))
        .addMethod(
          METHOD_GET_USER_REQUEST_LIST,
          asyncUnaryCall(
            new MethodHandlers<
              neighborhood.server.NeighborhoodAPI.GetUserRequestListRequest,
              neighborhood.server.NeighborhoodAPI.GetUserRequestListResponse>(
                serviceImpl, METHODID_GET_USER_REQUEST_LIST)))
        .addMethod(
          METHOD_ADD_ITEM_TO_USER,
          asyncUnaryCall(
            new MethodHandlers<
              neighborhood.server.NeighborhoodAPI.AddItemToUserRequest,
              neighborhood.server.NeighborhoodAPI.AddItemToUserResponse>(
                serviceImpl, METHODID_ADD_ITEM_TO_USER)))
        .addMethod(
          METHOD_DELETE_ITEM_FROM_USER,
          asyncUnaryCall(
            new MethodHandlers<
              neighborhood.server.NeighborhoodAPI.DeleteItemToUserRequest,
              neighborhood.server.NeighborhoodAPI.DeleteItemToUserResponse>(
                serviceImpl, METHODID_DELETE_ITEM_FROM_USER)))
        .addMethod(
          METHOD_SEARCH_ITEM,
          asyncUnaryCall(
            new MethodHandlers<
              neighborhood.server.NeighborhoodAPI.SearchItemRequest,
              neighborhood.server.NeighborhoodAPI.SearchItemResponse>(
                serviceImpl, METHODID_SEARCH_ITEM)))
        .addMethod(
          METHOD_ADD_POST,
          asyncUnaryCall(
            new MethodHandlers<
              neighborhood.server.NeighborhoodAPI.AddPostRequest,
              neighborhood.server.NeighborhoodAPI.AddPostResponse>(
                serviceImpl, METHODID_ADD_POST)))
        .addMethod(
          METHOD_DELETE_POST,
          asyncUnaryCall(
            new MethodHandlers<
              neighborhood.server.NeighborhoodAPI.DeletePostRequest,
              neighborhood.server.NeighborhoodAPI.DeletePostResponse>(
                serviceImpl, METHODID_DELETE_POST)))
        .addMethod(
          METHOD_GET_POSTS,
          asyncUnaryCall(
            new MethodHandlers<
              neighborhood.server.NeighborhoodAPI.GetPostRequest,
              neighborhood.server.NeighborhoodAPI.GetPostResponse>(
                serviceImpl, METHODID_GET_POSTS)))
        .addMethod(
          METHOD_ADD_TASK,
          asyncUnaryCall(
            new MethodHandlers<
              neighborhood.server.NeighborhoodAPI.AddTaskRequest,
              neighborhood.server.NeighborhoodAPI.AddTaskResponse>(
                serviceImpl, METHODID_ADD_TASK)))
        .addMethod(
          METHOD_GET_TASK,
          asyncUnaryCall(
            new MethodHandlers<
              neighborhood.server.NeighborhoodAPI.GetTaskRequest,
              neighborhood.server.NeighborhoodAPI.GetTaskResponse>(
                serviceImpl, METHODID_GET_TASK)))
        .addMethod(
          METHOD_GET_TASK_BY_NEIGHBORHOOD,
          asyncUnaryCall(
            new MethodHandlers<
              neighborhood.server.NeighborhoodAPI.GetTaskByNeighborhoodRequest,
              neighborhood.server.NeighborhoodAPI.GetTaskByNeighborhoodResponse>(
                serviceImpl, METHODID_GET_TASK_BY_NEIGHBORHOOD)))
        .addMethod(
          METHOD_CHANGE_TASK_STATUS,
          asyncUnaryCall(
            new MethodHandlers<
              neighborhood.server.NeighborhoodAPI.ChangeTaskStatusRequest,
              neighborhood.server.NeighborhoodAPI.ChangeTaskStatusResponse>(
                serviceImpl, METHODID_CHANGE_TASK_STATUS)))
        .addMethod(
          METHOD_ADD_COMMENT,
          asyncUnaryCall(
            new MethodHandlers<
              neighborhood.server.NeighborhoodAPI.AddCommentRequest,
              neighborhood.server.NeighborhoodAPI.AddCommentResponse>(
                serviceImpl, METHODID_ADD_COMMENT)))
        .addMethod(
          METHOD_ADD_CAR,
          asyncUnaryCall(
            new MethodHandlers<
              neighborhood.server.NeighborhoodAPI.AddCarRequest,
              neighborhood.server.NeighborhoodAPI.AddCarResponse>(
                serviceImpl, METHODID_ADD_CAR)))
        .addMethod(
          METHOD_GET_CAR,
          asyncUnaryCall(
            new MethodHandlers<
              neighborhood.server.NeighborhoodAPI.GetCarRequest,
              neighborhood.server.NeighborhoodAPI.GetCarResponse>(
                serviceImpl, METHODID_GET_CAR)))
        .addMethod(
          METHOD_GET_CONTACT_BY_CAR,
          asyncUnaryCall(
            new MethodHandlers<
              neighborhood.server.NeighborhoodAPI.GetContactByCarRequest,
              neighborhood.server.NeighborhoodAPI.GetContactByCarResponse>(
                serviceImpl, METHODID_GET_CONTACT_BY_CAR)))
        .build();
  }
}
