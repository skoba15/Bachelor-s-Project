import io.grpc.stub.*;
import jwt.*;
import models.*;
import neighborhood.server.*;
import org.slf4j.*;
import services.*;

import javax.validation.*;

import java.sql.*;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.Date;

import static io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall;


public class NeighborhoodServiceImpl extends ServiceGrpc.ServiceImplBase {

    private final Logger log = LoggerFactory.getLogger(getClass());

    private UserService userService = new UserServiceImpl();
    private NeighborhoodManagementService neighborhoodService = new NeighborhoodManagementServiceImpl();
    private ItemService itemService = new ItemServiceImpl();
    private TaskService taskService = new TaskServiceImpl();


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
        int userId = Integer.valueOf(Constant.CLIENT_ID_CONTEXT_KEY.get());

        NeighborhoodAPI.Neighborhood nr = request.getNeighborhood();
        NeighborhoodEntity newNeighborhood = new NeighborhoodEntity(nr.getName(), nr.getCity(), nr.getDistrict(), nr.getAddress());
        Long result = neighborhoodService.save(newNeighborhood);

        String resultCodeStr = "Fail";

        if(result != null) {
            int addManagerStatus = neighborhoodService.addUserToNeighborhood((long) userId, result, UserRole.MANAGER, UserToNeighborhoodStatus.ACTIVE);
            if(addManagerStatus == 0) {
                resultCodeStr = "Success";
            }
        }

        responseObserver.onNext(NeighborhoodAPI.AddNeighborhoodResponse.newBuilder()
                .setResultCode(resultCodeStr).setNeighborhoodId(result != null ? result.intValue() : -1)
                .build());
        responseObserver.onCompleted();
    }

    @Override
    public void isManager(NeighborhoodAPI.IsManagerRequest request, StreamObserver<NeighborhoodAPI.IsManagerResponse> responseObserver) {
        int userId = Integer.valueOf(Constant.CLIENT_ID_CONTEXT_KEY.get());
        int neighborhoodId = request.getNeighborhoodId();

        UserToNeighborhoodEntity utn = neighborhoodService.getUserToNeighborhoodEntity((long) userId, (long)neighborhoodId);

        String response = "N";

        if(utn != null && utn.getStatus() == UserToNeighborhoodStatus.ACTIVE && utn.getUserRole() == UserRole.MANAGER) {
            response = "Y";
        }

        responseObserver.onNext(NeighborhoodAPI.IsManagerResponse.newBuilder()
                .setResultCode(response)
                .build());
        responseObserver.onCompleted();
    }

    @Override
    public void getMyNeighborhoodList(NeighborhoodAPI.GetMyNeighborhoodRequest request, StreamObserver<NeighborhoodAPI.GetMyNeighborhoodResponse> responseObserver) {
        int id = Integer.valueOf(Constant.CLIENT_ID_CONTEXT_KEY.get());
        UserEntity user = userService.findUserById((long)id);
        System.out.println("===============================" + id);
        NeighborhoodAPI.GetMyNeighborhoodResponse.Builder builder = NeighborhoodAPI.GetMyNeighborhoodResponse.newBuilder();
        for(UserToNeighborhoodEntity utn : user.getNeighborhoodsList()) {
            if(utn.getStatus() != UserToNeighborhoodStatus.ACTIVE) continue;
            NeighborhoodEntity n = utn.getNeighborhoodEntity();
            int isManager = utn.getUserRole() == UserRole.MANAGER ? 1 : 0;
            builder.addNeighborhood(NeighborhoodAPI.Neighborhood.newBuilder().setId(n.getId().intValue()).setName(n.getName()).setCity(n.getCity()).setAddress(n.getAddress()).setDistrict(n.getDistrict()).setIsManager(isManager).setStatus(0));
        }

        responseObserver.onNext(builder.build());
        responseObserver.onCompleted();
    }

    @Override
    public void getOtherNeighborhoodList(NeighborhoodAPI.GetOtherNeighborhoodRequest request, StreamObserver<NeighborhoodAPI.GetOtherNeighborhoodResponse> responseObserver) {
        int userId = Integer.valueOf(Constant.CLIENT_ID_CONTEXT_KEY.get());
        UserEntity user = userService.findUserById((long)userId);
        System.out.println("===============================" + userId);
        NeighborhoodAPI.GetOtherNeighborhoodResponse.Builder builder = NeighborhoodAPI.GetOtherNeighborhoodResponse.newBuilder();

        Set<NeighborhoodEntity> otherNeighborhoods = new HashSet<>(neighborhoodService.getNeighborhoodList());

        for(UserToNeighborhoodEntity utn : user.getNeighborhoodsList()) {
            if(utn.getStatus() == UserToNeighborhoodStatus.ACTIVE) {
                otherNeighborhoods.remove(utn.getNeighborhoodEntity());
            }
        }

        for(NeighborhoodEntity n : otherNeighborhoods) {
            UserToNeighborhoodEntity utn = neighborhoodService.getUserToNeighborhoodEntity((long)userId, n.getId());
            int isPending = 0;
            if (utn != null && utn.getStatus() == UserToNeighborhoodStatus.PENDING) {
                isPending = 1;
            }
            builder.addNeighborhood(NeighborhoodAPI.Neighborhood.newBuilder().setId(n.getId().intValue()).setName(n.getName()).setCity(n.getCity()).setAddress(n.getAddress()).setDistrict(n.getDistrict()).setIsManager(0).setStatus(isPending));
        }

        responseObserver.onNext(builder.build());
        responseObserver.onCompleted();
    }

    @Override
    public void addManager(NeighborhoodAPI.AddManagerRequest request, StreamObserver<NeighborhoodAPI.AddManagerResponse> responseObserver) {

    }

    @Override
    public void addUserToNeighborhood(NeighborhoodAPI.AddUserToNeighborhoodRequest request, StreamObserver<NeighborhoodAPI.AddUserToNeighborhoodResponse> responseObserver) {
        int userId = Integer.valueOf(Constant.CLIENT_ID_CONTEXT_KEY.get());
        int neighborhoodId = request.getNeighborhoodId();

        int resultCode = neighborhoodService.addUserToNeighborhood((long) userId, (long) neighborhoodId, UserRole.NEIGHBOUR, UserToNeighborhoodStatus.PENDING);

        String resultCodeStr = resultCode == 0 ? "Success" : "Fail";
        responseObserver.onNext(NeighborhoodAPI.AddUserToNeighborhoodResponse.newBuilder()
                .setResultCode(resultCodeStr)
                .build());
    }

    @Override
    public void approveUserToNeighborhood(NeighborhoodAPI.ApproveUserToNeighborhoodRequest request, StreamObserver<NeighborhoodAPI.ApproveUserToNeighborhoodResponse> responseObserver) {
        int managerId = Integer.valueOf(Constant.CLIENT_ID_CONTEXT_KEY.get());
        int userId = request.getUserId();
        int neighborhoodId = request.getNeighborhoodId();

        int statusCode = neighborhoodService.processUserRequest((long) userId, (long) neighborhoodId, UserToNeighborhoodStatus.ACTIVE);

        String resultCodeStr = statusCode == 0 ? "Success" : "Fail";
        responseObserver.onNext(NeighborhoodAPI.ApproveUserToNeighborhoodResponse.newBuilder()
                .setResultCode(resultCodeStr)
                .build());
    }

    @Override
    public void rejectUserFromNeighborhood(NeighborhoodAPI.RejectUserToNeighborhoodRequest request, StreamObserver<NeighborhoodAPI.RejectUserToNeighborhoodResponse> responseObserver) {
        int managerId = Integer.valueOf(Constant.CLIENT_ID_CONTEXT_KEY.get());
        int userId = request.getUserId();
        int neighborhoodId = request.getNeighborhoodId();

        int statusCode = neighborhoodService.processUserRequest((long) userId, (long) neighborhoodId, UserToNeighborhoodStatus.DECLINED);

        String resultCodeStr = statusCode == 0 ? "Success" : "Fail";
        responseObserver.onNext(NeighborhoodAPI.RejectUserToNeighborhoodResponse.newBuilder()
                .setResultCode(resultCodeStr)
                .build());
    }

    @Override
    public void getUserRequestList(NeighborhoodAPI.GetUserRequestListRequest request, StreamObserver<NeighborhoodAPI.GetUserRequestListResponse> responseObserver) {
        int userId = Integer.valueOf(Constant.CLIENT_ID_CONTEXT_KEY.get());
        int neighborhoodId = request.getNeighborhoodId();

        NeighborhoodAPI.GetUserRequestListResponse.Builder builder = NeighborhoodAPI.GetUserRequestListResponse.newBuilder();

        List<UserToNeighborhoodEntity> requests = neighborhoodService.getUserRequestListByNeighborhood((long) neighborhoodId);
        System.out.println("===================" + requests.size());
        for(UserToNeighborhoodEntity utn : requests) {
            UserEntity user = utn.getUserEntity();
            builder.addRequests(NeighborhoodAPI.GetUserRequestListResponseItem.newBuilder().setUserId(user.getId().intValue()).setUserName(user.getUserName()));
        }

        responseObserver.onNext(builder.build());
        responseObserver.onCompleted();
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
        String resultCode;

//        int creatorId = Integer.valueOf(Constant.CLIENT_ID_CONTEXT_KEY.get());
        int creatorId = 1;

        NeighborhoodAPI.Task taskInfo = request.getTask();
        UserEntity creator = userService.findUserById((long)creatorId);
        NeighborhoodEntity neighborhood = neighborhoodService.getNeighborhoodById((long)taskInfo.getNeighborhoodId());

        if(creator == null) {
            resultCode = "User does not exist";
        } else if(neighborhood == null) {
            resultCode = "Neighborhood does not exist";
        } else {
            TaskEntity task = new TaskEntity();
            task.setTitle(taskInfo.getTitle());
            task.setDescription(taskInfo.getDescription());
            task.setStatus(TaskStatus.NEW);
            task.setCreateDate(new Timestamp(new Date().getTime()));
            task.setStartDate(convertToTimestamp(taskInfo.getStartDate()));
            task.setCloseDate(convertToTimestamp(taskInfo.getCloseDate()));
            task.setCreator(creator);
            task.setNeighborhood(neighborhood);

            Long addTaskResult = taskService.addTask(task);
            resultCode = addTaskResult != null ? "Task " + addTaskResult + " added" : "Could not add Task";
        }

        responseObserver.onNext(NeighborhoodAPI.AddTaskResponse.newBuilder().setResultCode(resultCode).build());
        responseObserver.onCompleted();

    }

    @Override
    public void getTask(NeighborhoodAPI.GetTaskRequest request, StreamObserver<NeighborhoodAPI.GetTaskResponse> responseObserver) {

        TaskEntity task = taskService.getTaskById((long)request.getTaskId());

        NeighborhoodAPI.GetTaskResponse.Builder builder = NeighborhoodAPI.GetTaskResponse.newBuilder();

        if(task != null) {
            NeighborhoodAPI.Task.Builder taskBuilder = NeighborhoodAPI.Task.newBuilder();

            taskBuilder.setId(task.getId().intValue())
                    .setTitle(task.getTitle())
                    .setDescription(task.getDescription())
                    .setStatus(task.getStatus().name())
                    .setStartDate(convertFromTimestamp(task.getStartDate()))
                    .setCloseDate(convertFromTimestamp(task.getCloseDate()))
                    .setCreatorId(task.getCreator().getId().intValue());

            for(SubTaskEntity subTask : task.getSubTasks()) {
                UserEntity assignee = subTask.getAssignee();
                taskBuilder.addSubTask(NeighborhoodAPI.SubTask.newBuilder()
                        .setId(subTask.getId().intValue())
                        .setTitle(subTask.getTitle())
                        .setDescription(subTask.getTitle())
                        .setStatus(subTask.getStatus().name())
                        .setAssigneeId(assignee.getId().intValue())
                        .setAssigneeName(assignee.getFirstName() + " " + assignee.getLastName())
                        .setTaskId(task.getId().intValue()));
            }

            builder.setTask(taskBuilder).setResultCode("200");
        }

        responseObserver.onNext(builder.build());
        responseObserver.onCompleted();
    }

    @Override
    public void getTaskByNeighborhood(NeighborhoodAPI.GetTaskByNeighborhoodRequest request, StreamObserver<NeighborhoodAPI.GetTaskByNeighborhoodResponse> responseObserver) {

        NeighborhoodEntity neighborhood = neighborhoodService.getNeighborhoodById((long)request.getNeighborhoodId());

        NeighborhoodAPI.GetTaskByNeighborhoodResponse.Builder builder = NeighborhoodAPI.GetTaskByNeighborhoodResponse.newBuilder();

        if(neighborhood != null) {
            for(TaskEntity task : neighborhood.getTaskList()) {
                builder.addTasks(NeighborhoodAPI.Task.newBuilder()
                        .setId(task.getId().intValue())
                        .setTitle(task.getTitle())
                        .setDescription(task.getDescription())
                        .setStatus(task.getStatus().name())
                        .setStartDate(convertFromTimestamp(task.getStartDate()))
                        .setCloseDate(convertFromTimestamp(task.getCloseDate()))
                        .setCreatorId(task.getCreator().getId().intValue()));
            }
        }

        responseObserver.onNext(builder.build());
        responseObserver.onCompleted();
    }

    @Override
    public void changeTaskStatus(NeighborhoodAPI.ChangeTaskStatusRequest request, StreamObserver<NeighborhoodAPI.ChangeTaskStatusResponse> responseObserver) {

    }

    @Override
    public void addSubTask(NeighborhoodAPI.AddSubTaskRequest request, StreamObserver<NeighborhoodAPI.AddSubTaskResponse> responseObserver) {
        String resultCode;

        NeighborhoodAPI.SubTask subTaskInfo = request.getSubTask();
        UserEntity assignee = userService.findUserById((long)subTaskInfo.getAssigneeId());
        TaskEntity parentTask = taskService.getTaskById((long)subTaskInfo.getTaskId());

        if(assignee == null) {
            resultCode = "Assignee does not exist";
        } else if (parentTask == null) {
            resultCode = "Parent task does not exist";
        } else {
            SubTaskEntity subTask = new SubTaskEntity();
            subTask.setTitle(subTaskInfo.getTitle());
            subTask.setDescription(subTaskInfo.getDescription());
            subTask.setStatus(TaskStatus.NEW);
            subTask.setAssignee(assignee);
            subTask.setParentTask(parentTask);

            Long addSubTaskResult = taskService.addSubTask(subTask);
            resultCode = addSubTaskResult != null ? "SubTask " + addSubTaskResult + " added to task " + parentTask.getId() : "Could not add Task";
        }

        responseObserver.onNext(NeighborhoodAPI.AddSubTaskResponse.newBuilder().setResultCode(resultCode).build());
        responseObserver.onCompleted();
    }

    @Override
    public void getUserTasks(NeighborhoodAPI.getUserTasksRequest request, StreamObserver<NeighborhoodAPI.getUserTasksResponse> responseObserver) {

    }

    @Override
    public void changeSubTaskStatus(NeighborhoodAPI.ChangeSubTaskStatusRequest request, StreamObserver<NeighborhoodAPI.ChangeSubTaskStatusResponse> responseObserver) {

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

    private Timestamp convertToTimestamp(NeighborhoodAPI.Date dateInfo) {
        DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
        Date date = new Date();
        try {
            date = dateFormat.parse(dateInfo.getDay() + "/" + dateInfo.getMonth() + "/" + dateInfo.getYear());
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return new Timestamp(date.getTime());
    }

    private NeighborhoodAPI.Date.Builder convertFromTimestamp(Timestamp timestamp) {
        Calendar cal = Calendar.getInstance();
        cal.setTime(new Date(timestamp.getTime()));

        NeighborhoodAPI.Date.Builder builder = NeighborhoodAPI.Date.newBuilder()
                .setDay(cal.get(Calendar.DAY_OF_MONTH))
                .setMonth(cal.get(Calendar.MONTH))
                .setYear(cal.get(Calendar.YEAR));
        return builder;
    }
}
