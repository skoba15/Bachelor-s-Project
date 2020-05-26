///
//  Generated code. Do not modify.
//  source: bachelors.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const Car$json = const {
  '1': 'Car',
  '2': const [
    const {'1': 'plate_number', '3': 1, '4': 1, '5': 9, '10': 'plateNumber'},
  ],
};

const Comment$json = const {
  '1': 'Comment',
  '2': const [
    const {'1': 'text', '3': 1, '4': 1, '5': 9, '10': 'text'},
    const {'1': 'post_id', '3': 2, '4': 1, '5': 5, '10': 'postId'},
  ],
};

const Task$json = const {
  '1': 'Task',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'creator_id', '3': 2, '4': 1, '5': 5, '10': 'creatorId'},
    const {'1': 'title', '3': 3, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'days', '3': 4, '4': 1, '5': 5, '10': 'days'},
    const {'1': 'assignee_id', '3': 5, '4': 1, '5': 5, '10': 'assigneeId'},
  ],
};

const Post$json = const {
  '1': 'Post',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'user_id', '3': 2, '4': 1, '5': 5, '10': 'userId'},
    const {'1': 'neighborhood_id', '3': 3, '4': 1, '5': 5, '10': 'neighborhoodId'},
    const {'1': 'title', '3': 4, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'text', '3': 5, '4': 1, '5': 9, '10': 'text'},
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
    const {'1': 'neighborhood', '3': 2, '4': 1, '5': 11, '6': '.neighborhood.server.Neighborhood', '10': 'neighborhood'},
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
    const {'1': 'neighborhood_join_request_id', '3': 1, '4': 1, '5': 5, '10': 'neighborhoodJoinRequestId'},
  ],
};

const RejectUserToNeighborhoodRequest$json = const {
  '1': 'RejectUserToNeighborhoodRequest',
  '2': const [
    const {'1': 'neighborhood_join_request_id', '3': 1, '4': 1, '5': 5, '10': 'neighborhoodJoinRequestId'},
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
    const {'1': 'userId', '3': 1, '4': 1, '5': 5, '10': 'userId'},
    const {'1': 'userName', '3': 2, '4': 1, '5': 9, '10': 'userName'},
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
    const {'1': 'item', '3': 1, '4': 1, '5': 11, '6': '.neighborhood.server.Item', '10': 'item'},
  ],
};

const DeleteItemToUserRequest$json = const {
  '1': 'DeleteItemToUserRequest',
  '2': const [
    const {'1': 'item_id', '3': 1, '4': 1, '5': 5, '10': 'itemId'},
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
    const {'1': 'item_id', '3': 2, '4': 1, '5': 5, '10': 'itemId'},
  ],
};

const SearchItemResponse$json = const {
  '1': 'SearchItemResponse',
  '2': const [
    const {'1': 'result_code', '3': 1, '4': 1, '5': 9, '10': 'resultCode'},
    const {'1': 'user_ids', '3': 2, '4': 3, '5': 5, '10': 'userIds'},
  ],
};

const AddPostRequest$json = const {
  '1': 'AddPostRequest',
  '2': const [
    const {'1': 'post', '3': 1, '4': 1, '5': 11, '6': '.neighborhood.server.Post', '10': 'post'},
  ],
};

const DeletePostRequest$json = const {
  '1': 'DeletePostRequest',
  '2': const [
    const {'1': 'post_id', '3': 1, '4': 1, '5': 5, '10': 'postId'},
  ],
};

const GetPostRequest$json = const {
  '1': 'GetPostRequest',
  '2': const [
    const {'1': 'post_id', '3': 1, '4': 1, '5': 5, '10': 'postId'},
  ],
};

const AddPostResponse$json = const {
  '1': 'AddPostResponse',
  '2': const [
    const {'1': 'result_code', '3': 1, '4': 1, '5': 9, '10': 'resultCode'},
  ],
};

const DeletePostResponse$json = const {
  '1': 'DeletePostResponse',
  '2': const [
    const {'1': 'result_code', '3': 1, '4': 1, '5': 9, '10': 'resultCode'},
  ],
};

const GetPostResponse$json = const {
  '1': 'GetPostResponse',
  '2': const [
    const {'1': 'result_code', '3': 1, '4': 1, '5': 9, '10': 'resultCode'},
    const {'1': 'post', '3': 2, '4': 1, '5': 11, '6': '.neighborhood.server.Post', '10': 'post'},
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
    const {'1': 'result_code', '3': 1, '4': 1, '5': 9, '10': 'resultCode'},
    const {'1': 'tasks', '3': 2, '4': 3, '5': 11, '6': '.neighborhood.server.Task', '10': 'tasks'},
  ],
};

const ChangeTaskStatusRequest$json = const {
  '1': 'ChangeTaskStatusRequest',
  '2': const [
    const {'1': 'task_id', '3': 1, '4': 1, '5': 5, '10': 'taskId'},
    const {'1': 'status', '3': 2, '4': 1, '5': 9, '10': 'status'},
  ],
};

const ChangeTaskStatusResponse$json = const {
  '1': 'ChangeTaskStatusResponse',
  '2': const [
    const {'1': 'result_code', '3': 1, '4': 1, '5': 9, '10': 'resultCode'},
    const {'1': 'task', '3': 2, '4': 1, '5': 11, '6': '.neighborhood.server.Task', '10': 'task'},
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
  ],
};

const AddCarRequest$json = const {
  '1': 'AddCarRequest',
  '2': const [
    const {'1': 'car', '3': 1, '4': 1, '5': 11, '6': '.neighborhood.server.Car', '10': 'car'},
  ],
};

const AddCarResponse$json = const {
  '1': 'AddCarResponse',
  '2': const [
    const {'1': 'result_code', '3': 1, '4': 1, '5': 9, '10': 'resultCode'},
  ],
};

const GetCarRequest$json = const {
  '1': 'GetCarRequest',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 5, '10': 'userId'},
  ],
};

const GetCarResponse$json = const {
  '1': 'GetCarResponse',
  '2': const [
    const {'1': 'result_code', '3': 1, '4': 1, '5': 9, '10': 'resultCode'},
    const {'1': 'car', '3': 2, '4': 3, '5': 11, '6': '.neighborhood.server.Car', '10': 'car'},
  ],
};

const GetContactByCarRequest$json = const {
  '1': 'GetContactByCarRequest',
  '2': const [
    const {'1': 'car', '3': 1, '4': 1, '5': 11, '6': '.neighborhood.server.Car', '10': 'car'},
  ],
};

const GetContactByCarResponse$json = const {
  '1': 'GetContactByCarResponse',
  '2': const [
    const {'1': 'phone_number', '3': 1, '4': 1, '5': 9, '10': 'phoneNumber'},
  ],
};

