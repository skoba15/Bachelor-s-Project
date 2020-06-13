///
//  Generated code. Do not modify.
//  source: bachelors.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const Date$json = const {
  '1': 'Date',
  '2': const [
    const {'1': 'day', '3': 1, '4': 1, '5': 5, '10': 'day'},
    const {'1': 'month', '3': 2, '4': 1, '5': 5, '10': 'month'},
    const {'1': 'year', '3': 3, '4': 1, '5': 5, '10': 'year'},
  ],
};

const Task$json = const {
  '1': 'Task',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'status', '3': 4, '4': 1, '5': 5, '10': 'status'},
    const {'1': 'creator_id', '3': 5, '4': 1, '5': 5, '10': 'creatorId'},
    const {'1': 'neighborhood_id', '3': 6, '4': 1, '5': 5, '10': 'neighborhoodId'},
    const {'1': 'start_date', '3': 7, '4': 1, '5': 11, '6': '.neighborhood.server.Date', '10': 'startDate'},
    const {'1': 'close_date', '3': 8, '4': 1, '5': 11, '6': '.neighborhood.server.Date', '10': 'closeDate'},
    const {'1': 'sub_task', '3': 9, '4': 3, '5': 11, '6': '.neighborhood.server.SubTask', '10': 'subTask'},
  ],
};

const SubTask$json = const {
  '1': 'SubTask',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'status', '3': 4, '4': 1, '5': 5, '10': 'status'},
    const {'1': 'assignee_id', '3': 5, '4': 1, '5': 5, '10': 'assigneeId'},
    const {'1': 'assignee_name', '3': 6, '4': 1, '5': 9, '10': 'assigneeName'},
    const {'1': 'task_id', '3': 7, '4': 1, '5': 5, '10': 'taskId'},
  ],
};

const Post$json = const {
  '1': 'Post',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'user_id', '3': 2, '4': 1, '5': 5, '10': 'userId'},
    const {'1': 'user_full_name', '3': 3, '4': 1, '5': 9, '10': 'userFullName'},
    const {'1': 'neighborhood_id', '3': 4, '4': 1, '5': 5, '10': 'neighborhoodId'},
    const {'1': 'text', '3': 5, '4': 1, '5': 9, '10': 'text'},
    const {'1': 'create_date', '3': 6, '4': 1, '5': 11, '6': '.neighborhood.server.Date', '10': 'createDate'},
    const {'1': 'comment', '3': 7, '4': 3, '5': 11, '6': '.neighborhood.server.Comment', '10': 'comment'},
  ],
};

const Comment$json = const {
  '1': 'Comment',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'text', '3': 2, '4': 1, '5': 9, '10': 'text'},
    const {'1': 'user_id', '3': 3, '4': 1, '5': 5, '10': 'userId'},
    const {'1': 'user_full_name', '3': 4, '4': 1, '5': 9, '10': 'userFullName'},
    const {'1': 'post_id', '3': 5, '4': 1, '5': 5, '10': 'postId'},
    const {'1': 'create_date', '3': 6, '4': 1, '5': 11, '6': '.neighborhood.server.Date', '10': 'createDate'},
  ],
};

const Neighborhood$json = const {
  '1': 'Neighborhood',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'city', '3': 3, '4': 1, '5': 9, '10': 'city'},
    const {'1': 'district', '3': 4, '4': 1, '5': 9, '10': 'district'},
    const {'1': 'address', '3': 5, '4': 1, '5': 9, '10': 'address'},
    const {'1': 'is_manager', '3': 6, '4': 1, '5': 5, '10': 'isManager'},
    const {'1': 'status', '3': 7, '4': 1, '5': 5, '10': 'status'},
  ],
};

const Item$json = const {
  '1': 'Item',
  '2': const [
    const {'1': 'tag', '3': 1, '4': 1, '5': 9, '10': 'tag'},
  ],
};

const LoginUserRequest$json = const {
  '1': 'LoginUserRequest',
  '2': const [
    const {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
  ],
};

const LoginUserResponse$json = const {
  '1': 'LoginUserResponse',
  '2': const [
    const {'1': 'result_code', '3': 1, '4': 1, '5': 9, '10': 'resultCode'},
  ],
};

const RegisterUserRequest$json = const {
  '1': 'RegisterUserRequest',
  '2': const [
    const {'1': 'first_name', '3': 1, '4': 1, '5': 9, '10': 'firstName'},
    const {'1': 'last_name', '3': 2, '4': 1, '5': 9, '10': 'lastName'},
    const {'1': 'username', '3': 3, '4': 1, '5': 9, '10': 'username'},
    const {'1': 'phone_number', '3': 4, '4': 1, '5': 9, '10': 'phoneNumber'},
    const {'1': 'password', '3': 5, '4': 1, '5': 9, '10': 'password'},
  ],
};

const RegisterUserResponse$json = const {
  '1': 'RegisterUserResponse',
  '2': const [
    const {'1': 'result_code', '3': 1, '4': 1, '5': 9, '10': 'resultCode'},
  ],
};

const EditPlateNumberRequest$json = const {
  '1': 'EditPlateNumberRequest',
  '2': const [
    const {'1': 'plate_number', '3': 1, '4': 1, '5': 9, '10': 'plateNumber'},
  ],
};

const EditPlateNumberResponse$json = const {
  '1': 'EditPlateNumberResponse',
  '2': const [
    const {'1': 'result_code', '3': 1, '4': 1, '5': 9, '10': 'resultCode'},
  ],
};

const UserProfileRequest$json = const {
  '1': 'UserProfileRequest',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 5, '10': 'userId'},
  ],
};

const UserIdRequest$json = const {
  '1': 'UserIdRequest',
  '2': const [
    const {'1': 'dummy', '3': 1, '4': 1, '5': 5, '10': 'dummy'},
  ],
};

const UserIdResponse$json = const {
  '1': 'UserIdResponse',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

const EditPhoneNumberRequest$json = const {
  '1': 'EditPhoneNumberRequest',
  '2': const [
    const {'1': 'phone_number', '3': 1, '4': 1, '5': 9, '10': 'phoneNumber'},
  ],
};

const EditPhoneNumberResponse$json = const {
  '1': 'EditPhoneNumberResponse',
  '2': const [
    const {'1': 'result_code', '3': 1, '4': 1, '5': 9, '10': 'resultCode'},
  ],
};

const UserProfileResponse$json = const {
  '1': 'UserProfileResponse',
  '2': const [
    const {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
    const {'1': 'first_name', '3': 2, '4': 1, '5': 9, '10': 'firstName'},
    const {'1': 'last_name', '3': 3, '4': 1, '5': 9, '10': 'lastName'},
    const {'1': 'phone_number', '3': 4, '4': 1, '5': 9, '10': 'phoneNumber'},
    const {'1': 'car_plate_number', '3': 5, '4': 1, '5': 9, '10': 'carPlateNumber'},
    const {'1': 'items', '3': 6, '4': 3, '5': 9, '10': 'items'},
  ],
};

const ItemListRequest$json = const {
  '1': 'ItemListRequest',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 5, '10': 'userId'},
  ],
};

const ItemListResponse$json = const {
  '1': 'ItemListResponse',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 9, '10': 'items'},
  ],
};

const ResetPasswordRequest$json = const {
  '1': 'ResetPasswordRequest',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 5, '10': 'userId'},
    const {'1': 'old_password', '3': 2, '4': 1, '5': 9, '10': 'oldPassword'},
    const {'1': 'new_password', '3': 3, '4': 1, '5': 9, '10': 'newPassword'},
    const {'1': 'repeat_new_password', '3': 4, '4': 1, '5': 9, '10': 'repeatNewPassword'},
  ],
};

const ResetPasswordResponse$json = const {
  '1': 'ResetPasswordResponse',
  '2': const [
    const {'1': 'result_code', '3': 1, '4': 1, '5': 9, '10': 'resultCode'},
  ],
};

const DeleteContactRequest$json = const {
  '1': 'DeleteContactRequest',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 5, '10': 'userId'},
    const {'1': 'phone_number', '3': 2, '4': 1, '5': 9, '10': 'phoneNumber'},
  ],
};

const DeleteContactResponse$json = const {
  '1': 'DeleteContactResponse',
  '2': const [
    const {'1': 'result_code', '3': 1, '4': 1, '5': 9, '10': 'resultCode'},
  ],
};

const AddNeighborhoodRequest$json = const {
  '1': 'AddNeighborhoodRequest',
  '2': const [
    const {'1': 'neighborhood', '3': 1, '4': 1, '5': 11, '6': '.neighborhood.server.Neighborhood', '10': 'neighborhood'},
  ],
};

const AddNeighborhoodResponse$json = const {
  '1': 'AddNeighborhoodResponse',
  '2': const [
    const {'1': 'result_code', '3': 1, '4': 1, '5': 9, '10': 'resultCode'},
    const {'1': 'neighborhood_id', '3': 2, '4': 1, '5': 5, '10': 'neighborhoodId'},
  ],
};

const GetMyNeighborhoodRequest$json = const {
  '1': 'GetMyNeighborhoodRequest',
  '2': const [
    const {'1': 'dummy', '3': 1, '4': 1, '5': 5, '10': 'dummy'},
  ],
};

const GetMyNeighborhoodResponse$json = const {
  '1': 'GetMyNeighborhoodResponse',
  '2': const [
    const {'1': 'result_code', '3': 1, '4': 1, '5': 9, '10': 'resultCode'},
    const {'1': 'neighborhood', '3': 2, '4': 3, '5': 11, '6': '.neighborhood.server.Neighborhood', '10': 'neighborhood'},
  ],
};

const GetOtherNeighborhoodRequest$json = const {
  '1': 'GetOtherNeighborhoodRequest',
  '2': const [
    const {'1': 'dummy', '3': 1, '4': 1, '5': 5, '10': 'dummy'},
  ],
};

const GetOtherNeighborhoodResponse$json = const {
  '1': 'GetOtherNeighborhoodResponse',
  '2': const [
    const {'1': 'result_code', '3': 1, '4': 1, '5': 9, '10': 'resultCode'},
    const {'1': 'neighborhood', '3': 2, '4': 3, '5': 11, '6': '.neighborhood.server.Neighborhood', '10': 'neighborhood'},
  ],
};

const UserInfoItem$json = const {
  '1': 'UserInfoItem',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 5, '10': 'userId'},
    const {'1': 'user_full_name', '3': 2, '4': 1, '5': 9, '10': 'userFullName'},
  ],
};

const GetUsersByNeighborhoodRequest$json = const {
  '1': 'GetUsersByNeighborhoodRequest',
  '2': const [
    const {'1': 'neighborhood_id', '3': 1, '4': 1, '5': 5, '10': 'neighborhoodId'},
  ],
};

const GetUsersByNeighborhoodResponse$json = const {
  '1': 'GetUsersByNeighborhoodResponse',
  '2': const [
    const {'1': 'users', '3': 1, '4': 3, '5': 11, '6': '.neighborhood.server.UserInfoItem', '10': 'users'},
  ],
};

const AddManagerRequest$json = const {
  '1': 'AddManagerRequest',
  '2': const [
    const {'1': 'new_manager_id', '3': 1, '4': 1, '5': 5, '10': 'newManagerId'},
    const {'1': 'neighborhood_id', '3': 2, '4': 1, '5': 5, '10': 'neighborhoodId'},
  ],
};

const AddManagerResponse$json = const {
  '1': 'AddManagerResponse',
  '2': const [
    const {'1': 'result_code', '3': 1, '4': 1, '5': 9, '10': 'resultCode'},
  ],
};

const IsManagerRequest$json = const {
  '1': 'IsManagerRequest',
  '2': const [
    const {'1': 'neighborhood_id', '3': 1, '4': 1, '5': 5, '10': 'neighborhoodId'},
  ],
};

const IsManagerResponse$json = const {
  '1': 'IsManagerResponse',
  '2': const [
    const {'1': 'result_code', '3': 1, '4': 1, '5': 9, '10': 'resultCode'},
  ],
};

const AddUserToNeighborhoodRequest$json = const {
  '1': 'AddUserToNeighborhoodRequest',
  '2': const [
    const {'1': 'neighborhood_id', '3': 1, '4': 1, '5': 5, '10': 'neighborhoodId'},
  ],
};

const AddUserToNeighborhoodResponse$json = const {
  '1': 'AddUserToNeighborhoodResponse',
  '2': const [
    const {'1': 'result_code', '3': 1, '4': 1, '5': 9, '10': 'resultCode'},
  ],
};

const ApproveUserToNeighborhoodRequest$json = const {
  '1': 'ApproveUserToNeighborhoodRequest',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 5, '10': 'userId'},
    const {'1': 'neighborhood_id', '3': 2, '4': 1, '5': 5, '10': 'neighborhoodId'},
  ],
};

const RejectUserToNeighborhoodRequest$json = const {
  '1': 'RejectUserToNeighborhoodRequest',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 5, '10': 'userId'},
    const {'1': 'neighborhood_id', '3': 2, '4': 1, '5': 5, '10': 'neighborhoodId'},
  ],
};

const ApproveUserToNeighborhoodResponse$json = const {
  '1': 'ApproveUserToNeighborhoodResponse',
  '2': const [
    const {'1': 'result_code', '3': 1, '4': 1, '5': 9, '10': 'resultCode'},
  ],
};

const RejectUserToNeighborhoodResponse$json = const {
  '1': 'RejectUserToNeighborhoodResponse',
  '2': const [
    const {'1': 'result_code', '3': 1, '4': 1, '5': 9, '10': 'resultCode'},
  ],
};

const GetUserRequestListResponseItem$json = const {
  '1': 'GetUserRequestListResponseItem',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 5, '10': 'userId'},
    const {'1': 'user_name', '3': 2, '4': 1, '5': 9, '10': 'userName'},
  ],
};

const GetUserRequestListRequest$json = const {
  '1': 'GetUserRequestListRequest',
  '2': const [
    const {'1': 'neighborhood_id', '3': 1, '4': 1, '5': 5, '10': 'neighborhoodId'},
  ],
};

const GetUserRequestListResponse$json = const {
  '1': 'GetUserRequestListResponse',
  '2': const [
    const {'1': 'requests', '3': 1, '4': 3, '5': 11, '6': '.neighborhood.server.GetUserRequestListResponseItem', '10': 'requests'},
  ],
};

const AddItemToUserRequest$json = const {
  '1': 'AddItemToUserRequest',
  '2': const [
    const {'1': 'item_name', '3': 1, '4': 1, '5': 9, '10': 'itemName'},
  ],
};

const DeleteItemToUserRequest$json = const {
  '1': 'DeleteItemToUserRequest',
  '2': const [
    const {'1': 'item_name', '3': 1, '4': 1, '5': 9, '10': 'itemName'},
  ],
};

const AddItemToUserResponse$json = const {
  '1': 'AddItemToUserResponse',
  '2': const [
    const {'1': 'result_code', '3': 1, '4': 1, '5': 9, '10': 'resultCode'},
  ],
};

const DeleteItemToUserResponse$json = const {
  '1': 'DeleteItemToUserResponse',
  '2': const [
    const {'1': 'result_code', '3': 1, '4': 1, '5': 9, '10': 'resultCode'},
  ],
};

const SearchItemRequest$json = const {
  '1': 'SearchItemRequest',
  '2': const [
    const {'1': 'neighborhood_id', '3': 1, '4': 1, '5': 5, '10': 'neighborhoodId'},
    const {'1': 'item_name', '3': 2, '4': 1, '5': 9, '10': 'itemName'},
  ],
};

const SearchItemResponse$json = const {
  '1': 'SearchItemResponse',
  '2': const [
    const {'1': 'users', '3': 1, '4': 3, '5': 11, '6': '.neighborhood.server.UserInfoItem', '10': 'users'},
  ],
};

const AddPostRequest$json = const {
  '1': 'AddPostRequest',
  '2': const [
    const {'1': 'post', '3': 1, '4': 1, '5': 11, '6': '.neighborhood.server.Post', '10': 'post'},
  ],
};

const AddPostResponse$json = const {
  '1': 'AddPostResponse',
  '2': const [
    const {'1': 'result_code', '3': 1, '4': 1, '5': 9, '10': 'resultCode'},
    const {'1': 'post', '3': 2, '4': 1, '5': 11, '6': '.neighborhood.server.Post', '10': 'post'},
  ],
};

const DeletePostRequest$json = const {
  '1': 'DeletePostRequest',
  '2': const [
    const {'1': 'post_id', '3': 1, '4': 1, '5': 5, '10': 'postId'},
  ],
};

const DeletePostResponse$json = const {
  '1': 'DeletePostResponse',
  '2': const [
    const {'1': 'result_code', '3': 1, '4': 1, '5': 9, '10': 'resultCode'},
  ],
};

const GetPostRequest$json = const {
  '1': 'GetPostRequest',
  '2': const [
    const {'1': 'post_id', '3': 1, '4': 1, '5': 5, '10': 'postId'},
  ],
};

const GetPostResponse$json = const {
  '1': 'GetPostResponse',
  '2': const [
    const {'1': 'result_code', '3': 1, '4': 1, '5': 9, '10': 'resultCode'},
    const {'1': 'post', '3': 2, '4': 1, '5': 11, '6': '.neighborhood.server.Post', '10': 'post'},
  ],
};

const GetPostsByNeighborhoodRequest$json = const {
  '1': 'GetPostsByNeighborhoodRequest',
  '2': const [
    const {'1': 'neighborhood_id', '3': 1, '4': 1, '5': 5, '10': 'neighborhoodId'},
  ],
};

const GetPostsByNeighborhoodResponse$json = const {
  '1': 'GetPostsByNeighborhoodResponse',
  '2': const [
    const {'1': 'post', '3': 1, '4': 3, '5': 11, '6': '.neighborhood.server.Post', '10': 'post'},
  ],
};

const AddTaskRequest$json = const {
  '1': 'AddTaskRequest',
  '2': const [
    const {'1': 'task', '3': 1, '4': 1, '5': 11, '6': '.neighborhood.server.Task', '10': 'task'},
  ],
};

const AddTaskResponse$json = const {
  '1': 'AddTaskResponse',
  '2': const [
    const {'1': 'result_code', '3': 1, '4': 1, '5': 9, '10': 'resultCode'},
    const {'1': 'task_id', '3': 2, '4': 1, '5': 5, '10': 'taskId'},
  ],
};

const GetTaskRequest$json = const {
  '1': 'GetTaskRequest',
  '2': const [
    const {'1': 'task_id', '3': 1, '4': 1, '5': 5, '10': 'taskId'},
  ],
};

const GetTaskResponse$json = const {
  '1': 'GetTaskResponse',
  '2': const [
    const {'1': 'result_code', '3': 1, '4': 1, '5': 9, '10': 'resultCode'},
    const {'1': 'task', '3': 2, '4': 1, '5': 11, '6': '.neighborhood.server.Task', '10': 'task'},
  ],
};

const GetTaskByNeighborhoodRequest$json = const {
  '1': 'GetTaskByNeighborhoodRequest',
  '2': const [
    const {'1': 'neighborhood_id', '3': 1, '4': 1, '5': 5, '10': 'neighborhoodId'},
  ],
};

const GetTaskByNeighborhoodResponse$json = const {
  '1': 'GetTaskByNeighborhoodResponse',
  '2': const [
    const {'1': 'tasks', '3': 1, '4': 3, '5': 11, '6': '.neighborhood.server.Task', '10': 'tasks'},
  ],
};

const AddSubTaskRequest$json = const {
  '1': 'AddSubTaskRequest',
  '2': const [
    const {'1': 'sub_task', '3': 1, '4': 1, '5': 11, '6': '.neighborhood.server.SubTask', '10': 'subTask'},
  ],
};

const AddSubTaskResponse$json = const {
  '1': 'AddSubTaskResponse',
  '2': const [
    const {'1': 'result_code', '3': 1, '4': 1, '5': 9, '10': 'resultCode'},
  ],
};

const GetUserTasksRequest$json = const {
  '1': 'GetUserTasksRequest',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 5, '10': 'userId'},
    const {'1': 'neighborhood_id', '3': 2, '4': 1, '5': 5, '10': 'neighborhoodId'},
  ],
};

const GetUserTasksResponse$json = const {
  '1': 'GetUserTasksResponse',
  '2': const [
    const {'1': 'sub_task', '3': 1, '4': 3, '5': 11, '6': '.neighborhood.server.SubTask', '10': 'subTask'},
  ],
};

const ChangeSubTaskStatusRequest$json = const {
  '1': 'ChangeSubTaskStatusRequest',
  '2': const [
    const {'1': 'sub_task_id', '3': 1, '4': 1, '5': 5, '10': 'subTaskId'},
    const {'1': 'status', '3': 2, '4': 1, '5': 5, '10': 'status'},
  ],
};

const ChangeSubTaskStatusResponse$json = const {
  '1': 'ChangeSubTaskStatusResponse',
  '2': const [
    const {'1': 'result_code', '3': 1, '4': 1, '5': 9, '10': 'resultCode'},
    const {'1': 'sub_task_new_status', '3': 2, '4': 1, '5': 5, '10': 'subTaskNewStatus'},
    const {'1': 'parent_task_new_status', '3': 3, '4': 1, '5': 5, '10': 'parentTaskNewStatus'},
  ],
};

const AddCommentRequest$json = const {
  '1': 'AddCommentRequest',
  '2': const [
    const {'1': 'comment', '3': 1, '4': 1, '5': 11, '6': '.neighborhood.server.Comment', '10': 'comment'},
  ],
};

const AddCommentResponse$json = const {
  '1': 'AddCommentResponse',
  '2': const [
    const {'1': 'result_code', '3': 1, '4': 1, '5': 9, '10': 'resultCode'},
    const {'1': 'comment', '3': 2, '4': 1, '5': 11, '6': '.neighborhood.server.Comment', '10': 'comment'},
  ],
};

const GetContactByCarRequest$json = const {
  '1': 'GetContactByCarRequest',
  '2': const [
    const {'1': 'neighborhood_id', '3': 1, '4': 1, '5': 5, '10': 'neighborhoodId'},
    const {'1': 'plate_number', '3': 2, '4': 1, '5': 9, '10': 'plateNumber'},
  ],
};

const GetContactByCarResponse$json = const {
  '1': 'GetContactByCarResponse',
  '2': const [
    const {'1': 'result_code', '3': 1, '4': 1, '5': 9, '10': 'resultCode'},
    const {'1': 'user', '3': 2, '4': 1, '5': 11, '6': '.neighborhood.server.UserInfoItem', '10': 'user'},
  ],
};

