import io.grpc.stub.*;
import jwt.*;
import models.*;
import neighborhood.server.*;
import org.slf4j.*;
import services.*;

import javax.validation.*;

import java.sql.*;
import java.util.*;
import java.util.Date;

import static io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall;


public class NeighborhoodServiceImpl extends ServiceGrpc.ServiceImplBase {

    private final Logger log = LoggerFactory.getLogger(getClass());

    private ArrayList<UserEntity> users = new ArrayList<UserEntity>();


    private UserService userService = new UserServiceImpl();

    private ItemService itemService = new ItemServiceImpl();


    @Override
    public void registerUser(NeighborhoodAPI.RegisterUserRequest request, StreamObserver<NeighborhoodAPI.RegisterUserResponse> responseObserver) {
           log.info(" Username  {}", request.getUsername());
           UserEntity newUser = new UserEntity(request.getUsername(), request.getPassword(), request.getFirstName(), request.getLastName(), request.getPhoneNumber(), new Timestamp(new Date().getTime()));
           Long result = userService.save(newUser);
           String resultCode = "User Successfully registered!";
           if(result == null) {
               resultCode = "failed";
           }
           responseObserver.onNext(NeighborhoodAPI.RegisterUserResponse.newBuilder()
                   .setResultCode(resultCode)
                   .build());
           responseObserver.onCompleted();
    }

    @Override
    public void loginUser(NeighborhoodAPI.LoginUserRequest request, StreamObserver<NeighborhoodAPI.LoginUserResponse> responseObserver) {
        log.info(" Username  {}", request.getUsername());
        UserEntity user = userService.findUserByUsername(request.getUsername());
        log.info(" ===========================================  {}", user.toString());
        if(user != null && user.getPassword().equals(request.getPassword())) {
            responseObserver.onNext(NeighborhoodAPI.LoginUserResponse.newBuilder()
                    .setResultCode(JwtUtil.createJWT(""+user.getId()))
                    .build());
        } else {
            responseObserver.onNext(NeighborhoodAPI.LoginUserResponse.newBuilder()
                    .setResultCode("failed")
                    .build());
        }
        responseObserver.onCompleted();
    }

    private List<String> getItemNames(Set<ItemEntity> items) {
        List<String> itemNames = new ArrayList<String>();
        for(ItemEntity item : items) {
            itemNames.add(item.getName());
        }
        return itemNames;
    }

    @Override
    public void userProfile(NeighborhoodAPI.UserProfileRequest request, StreamObserver<neighborhood.server.NeighborhoodAPI.UserProfileResponse> responseObserver) {
        UserEntity user = userService.findUserById((long) request.getUserId());
        log.info(" ===========================================  {}", user.toString());
        responseObserver.onNext(NeighborhoodAPI.UserProfileResponse.newBuilder()
                .setUsername(user.getUserName()).setFirstName(user.getFirstName()).setLastName(user.getLastName())
                .setPhoneNumber(user.getPhoneNumber()).setCarPlateNumber(user.getCar() != null ? user.getCar().getPlateNumber() : "N/A").addAllItems(getItemNames(user.getItems()))
                .build());
        responseObserver.onCompleted();
    }


    @Override
    public void editPhoneNumber(NeighborhoodAPI.EditPhoneNumberRequest request, StreamObserver<NeighborhoodAPI.EditPhoneNumberResponse> responseObserver) {
        int id = Integer.valueOf(Constant.CLIENT_ID_CONTEXT_KEY.get());
        String result = userService.editPhoneNumber((long) id, request.getPhoneNumber());
        responseObserver.onNext(NeighborhoodAPI.EditPhoneNumberResponse.newBuilder()
                .setResultCode(result)
                .build());
        responseObserver.onCompleted();
    }

    @Override
    public void editPlateNumber(NeighborhoodAPI.EditPlateNumberRequest request, StreamObserver<NeighborhoodAPI.EditPlateNumberResponse> responseObserver) {
        int id = Integer.valueOf(Constant.CLIENT_ID_CONTEXT_KEY.get());
        String result = userService.editCarPlateNUmber((long) id, request.getPlateNumber());
        responseObserver.onNext(NeighborhoodAPI.EditPlateNumberResponse.newBuilder()
                .setResultCode(result)
                .build());
        responseObserver.onCompleted();
    }


    @Override
    public void userId(NeighborhoodAPI.UserIdRequest request, StreamObserver<NeighborhoodAPI.UserIdResponse> responseObserver) {
        responseObserver.onNext(NeighborhoodAPI.UserIdResponse.newBuilder().setId(Integer.valueOf(Constant.CLIENT_ID_CONTEXT_KEY.get()))
               .build());
        responseObserver.onCompleted();
    }



    @Override
    public void resetPassword(NeighborhoodAPI.ResetPasswordRequest request, StreamObserver<NeighborhoodAPI.ResetPasswordResponse> responseObserver) {

    }

    @Override
    public void deleteContact(NeighborhoodAPI.DeleteContactRequest request, StreamObserver<NeighborhoodAPI.DeleteContactResponse> responseObserver) {

    }

    @Override
    public void addNeighborhood(NeighborhoodAPI.AddNeighborhoodRequest request, StreamObserver<NeighborhoodAPI.AddNeighborhoodResponse> responseObserver) {

    }

    @Override
    public void getNeighborhoodList(NeighborhoodAPI.GetNeighborhoodRequest request, StreamObserver<NeighborhoodAPI.GetNeighborhoodResponse> responseObserver) {

    }

    @Override
    public void addManager(NeighborhoodAPI.AddManagerRequest request, StreamObserver<NeighborhoodAPI.AddManagerResponse> responseObserver) {

    }

    @Override
    public void addUserToNeighborhood(NeighborhoodAPI.AddUserToNeighborhoodRequest request, StreamObserver<NeighborhoodAPI.AddUserToNeighborhoodResponse> responseObserver) {

    }

    @Override
    public void approveUserToNeighborhood(NeighborhoodAPI.ApproveUserToNeighborhoodRequest request, StreamObserver<NeighborhoodAPI.ApproveUserToNeighborhoodResponse> responseObserver) {

    }

    @Override
    public void rejectUserFromNeighborhood(NeighborhoodAPI.RejectUserToNeighborhoodRequest request, StreamObserver<NeighborhoodAPI.RejectUserToNeighborhoodResponse> responseObserver) {

    }

    @Override
    public void getUserRequestList(NeighborhoodAPI.GetUserRequestListRequest request, StreamObserver<NeighborhoodAPI.GetUserRequestListResponse> responseObserver) {

    }

    @Override
    public void addItemToUser(NeighborhoodAPI.AddItemToUserRequest request, StreamObserver<NeighborhoodAPI.AddItemToUserResponse> responseObserver) {
        int id = Integer.valueOf(Constant.CLIENT_ID_CONTEXT_KEY.get());
        responseObserver.onNext(NeighborhoodAPI.AddItemToUserResponse.newBuilder().setResultCode(itemService.add((long) id, request.getItemName()))
                .build());
        responseObserver.onCompleted();
    }

    @Override
    public void deleteItemFromUser(NeighborhoodAPI.DeleteItemToUserRequest request, StreamObserver<NeighborhoodAPI.DeleteItemToUserResponse> responseObserver) {
        int id = Integer.valueOf(Constant.CLIENT_ID_CONTEXT_KEY.get());
        itemService.remove((long) id, request.getItemName());
        responseObserver.onNext(NeighborhoodAPI.DeleteItemToUserResponse.newBuilder().setResultCode("ok")
                .build());
        responseObserver.onCompleted();
    }

    @Override
    public void searchItem(NeighborhoodAPI.SearchItemRequest request, StreamObserver<NeighborhoodAPI.SearchItemResponse> responseObserver) {

    }

    @Override
    public void addPost(NeighborhoodAPI.AddPostRequest request, StreamObserver<NeighborhoodAPI.AddPostResponse> responseObserver) {

    }

    @Override
    public void deletePost(NeighborhoodAPI.DeletePostRequest request, StreamObserver<NeighborhoodAPI.DeletePostResponse> responseObserver) {

    }

    @Override
    public void getPosts(NeighborhoodAPI.GetPostRequest request, StreamObserver<NeighborhoodAPI.GetPostResponse> responseObserver) {

    }

    @Override
    public void addTask(NeighborhoodAPI.AddTaskRequest request, StreamObserver<NeighborhoodAPI.AddTaskResponse> responseObserver) {

    }

    @Override
    public void getTask(NeighborhoodAPI.GetTaskRequest request, StreamObserver<NeighborhoodAPI.GetTaskResponse> responseObserver) {

    }

    @Override
    public void getTaskByNeighborhood(NeighborhoodAPI.GetTaskByNeighborhoodRequest request, StreamObserver<NeighborhoodAPI.GetTaskByNeighborhoodResponse> responseObserver) {

    }

    @Override
    public void changeTaskStatus(NeighborhoodAPI.ChangeTaskStatusRequest request, StreamObserver<NeighborhoodAPI.ChangeTaskStatusResponse> responseObserver) {

    }

    @Override
    public void addComment(NeighborhoodAPI.AddCommentRequest request, StreamObserver<NeighborhoodAPI.AddCommentResponse> responseObserver) {

    }

    @Override
    public void addCar(NeighborhoodAPI.AddCarRequest request, StreamObserver<NeighborhoodAPI.AddCarResponse> responseObserver) {

    }

    @Override
    public void getCar(NeighborhoodAPI.GetCarRequest request, StreamObserver<NeighborhoodAPI.GetCarResponse> responseObserver) {

    }

    @Override
    public void getContactByCar(NeighborhoodAPI.GetContactByCarRequest request, StreamObserver<NeighborhoodAPI.GetContactByCarResponse> responseObserver) {

    }
}
