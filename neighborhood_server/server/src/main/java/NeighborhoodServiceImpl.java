import io.grpc.stub.*;
import neighborhood.server.*;

public class NeighborhoodServiceImpl implements ServiceGrpc.Service {

    @Override
    public void registerUser(NeighborhoodAPI.RegisterUserRequest request, StreamObserver<NeighborhoodAPI.RegisterUserResponse> responseObserver) {

    }

    @Override
    public void loginUser(NeighborhoodAPI.LoginUserRequest request, StreamObserver<NeighborhoodAPI.LoginUserResponse> responseObserver) {

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