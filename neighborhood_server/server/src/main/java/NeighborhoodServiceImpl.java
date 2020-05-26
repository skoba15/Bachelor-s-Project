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


public class NeighborhoodServiceImpl extends ServiceGrpc.ServiceImplBase {

    private final Logger log = LoggerFactory.getLogger(getClass());

    private UserService userService = new UserServiceImpl();

    private NeighborhoodManagementService neighborhoodService = new NeighborhoodManagementServiceImpl();

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
    public void getMyNeighborhoodList(NeighborhoodAPI.GetMyNeighborhoodRequest request, StreamObserver<NeighborhoodAPI.GetMyNeighborhoodResponse> responseObserver) {
//        Long id = Long.valueOf(Constant.CLIENT_ID_CONTEXT_KEY.get());
        int id = 5;
        UserEntity user = userService.findUserById((long)id);
        System.out.println("===============================" + id);
        NeighborhoodAPI.GetMyNeighborhoodResponse.Builder builder = NeighborhoodAPI.GetMyNeighborhoodResponse.newBuilder();

        for(UserToNeighborhoodEntity utn : user.getNeighborhoodsList()) {
            NeighborhoodEntity n = utn.getNeighborhoodEntity();
            int isManager = utn.getStatus().equals(UserRole.MANAGER.name()) ? 1 : 0;
            builder.addNeighborhood(NeighborhoodAPI.Neighborhood.newBuilder().setName(n.getName()).setCity(n.getCity()).setAddress(n.getAddress()).setDistrict(n.getDistrict()).setIsManager(isManager).setStatus(0));
        }

        responseObserver.onNext(builder.build());
        responseObserver.onCompleted();
    }

    @Override
    public void getOtherNeighborhoodList(NeighborhoodAPI.GetOtherNeighborhoodRequest request, StreamObserver<NeighborhoodAPI.GetOtherNeighborhoodResponse> responseObserver) {
        int userId = 5;
        UserEntity user = userService.findUserById((long)userId);
        System.out.println("===============================" + userId);
        NeighborhoodAPI.GetOtherNeighborhoodResponse.Builder builder = NeighborhoodAPI.GetOtherNeighborhoodResponse.newBuilder();

        Set<NeighborhoodEntity> otherNeighborhoods = new HashSet<>(neighborhoodService.getNeighborhoodList());

        for(UserToNeighborhoodEntity utn : user.getNeighborhoodsList()) {
            otherNeighborhoods.remove(utn.getNeighborhoodEntity());
        }

        for(NeighborhoodEntity n : otherNeighborhoods) {
            int isPending = neighborhoodService.getUserToNeighborhoodEntity((long)userId, n.getId()).getStatus().equals(UserToNeighborhoodStatus.PENDING.name()) ? 1 : 0;
            builder.addNeighborhood(NeighborhoodAPI.Neighborhood.newBuilder().setName(n.getName()).setCity(n.getCity()).setAddress(n.getAddress()).setDistrict(n.getDistrict()).setIsManager(0).setStatus(isPending));
        }

        responseObserver.onNext(builder.build());
        responseObserver.onCompleted();
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

    }

    @Override
    public void deleteItemFromUser(NeighborhoodAPI.DeleteItemToUserRequest request, StreamObserver<NeighborhoodAPI.DeleteItemToUserResponse> responseObserver) {

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
