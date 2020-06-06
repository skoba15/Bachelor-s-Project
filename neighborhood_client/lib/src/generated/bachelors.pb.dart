///
//  Generated code. Do not modify.
//  source: bachelors.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Car extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Car', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..aOS(1, 'plateNumber')
    ..hasRequiredFields = false
  ;

  Car._() : super();
  factory Car() => create();
  factory Car.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Car.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Car clone() => Car()..mergeFromMessage(this);
  Car copyWith(void Function(Car) updates) => super.copyWith((message) => updates(message as Car));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Car create() => Car._();
  Car createEmptyInstance() => create();
  static $pb.PbList<Car> createRepeated() => $pb.PbList<Car>();
  @$core.pragma('dart2js:noInline')
  static Car getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Car>(create);
  static Car _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get plateNumber => $_getSZ(0);
  @$pb.TagNumber(1)
  set plateNumber($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPlateNumber() => $_has(0);
  @$pb.TagNumber(1)
  void clearPlateNumber() => clearField(1);
}

class Comment extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Comment', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..aOS(1, 'text')
    ..a<$core.int>(2, 'postId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  Comment._() : super();
  factory Comment() => create();
  factory Comment.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Comment.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Comment clone() => Comment()..mergeFromMessage(this);
  Comment copyWith(void Function(Comment) updates) => super.copyWith((message) => updates(message as Comment));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Comment create() => Comment._();
  Comment createEmptyInstance() => create();
  static $pb.PbList<Comment> createRepeated() => $pb.PbList<Comment>();
  @$core.pragma('dart2js:noInline')
  static Comment getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Comment>(create);
  static Comment _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get text => $_getSZ(0);
  @$pb.TagNumber(1)
  set text($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasText() => $_has(0);
  @$pb.TagNumber(1)
  void clearText() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get postId => $_getIZ(1);
  @$pb.TagNumber(2)
  set postId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPostId() => $_has(1);
  @$pb.TagNumber(2)
  void clearPostId() => clearField(2);
}

class Date extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Date', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..a<$core.int>(1, 'day', $pb.PbFieldType.O3)
    ..a<$core.int>(2, 'month', $pb.PbFieldType.O3)
    ..a<$core.int>(3, 'year', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  Date._() : super();
  factory Date() => create();
  factory Date.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Date.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Date clone() => Date()..mergeFromMessage(this);
  Date copyWith(void Function(Date) updates) => super.copyWith((message) => updates(message as Date));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Date create() => Date._();
  Date createEmptyInstance() => create();
  static $pb.PbList<Date> createRepeated() => $pb.PbList<Date>();
  @$core.pragma('dart2js:noInline')
  static Date getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Date>(create);
  static Date _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get day => $_getIZ(0);
  @$pb.TagNumber(1)
  set day($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDay() => $_has(0);
  @$pb.TagNumber(1)
  void clearDay() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get month => $_getIZ(1);
  @$pb.TagNumber(2)
  set month($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMonth() => $_has(1);
  @$pb.TagNumber(2)
  void clearMonth() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get year => $_getIZ(2);
  @$pb.TagNumber(3)
  set year($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasYear() => $_has(2);
  @$pb.TagNumber(3)
  void clearYear() => clearField(3);
}

class Task extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Task', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.O3)
    ..aOS(2, 'title')
    ..aOS(3, 'description')
    ..aOS(4, 'status')
    ..a<$core.int>(5, 'creatorId', $pb.PbFieldType.O3)
    ..a<$core.int>(6, 'neighborhoodId', $pb.PbFieldType.O3)
    ..aOM<Date>(7, 'startDate', subBuilder: Date.create)
    ..aOM<Date>(8, 'closeDate', subBuilder: Date.create)
    ..hasRequiredFields = false
  ;

  Task._() : super();
  factory Task() => create();
  factory Task.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Task.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Task clone() => Task()..mergeFromMessage(this);
  Task copyWith(void Function(Task) updates) => super.copyWith((message) => updates(message as Task));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Task create() => Task._();
  Task createEmptyInstance() => create();
  static $pb.PbList<Task> createRepeated() => $pb.PbList<Task>();
  @$core.pragma('dart2js:noInline')
  static Task getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Task>(create);
  static Task _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get status => $_getSZ(3);
  @$pb.TagNumber(4)
  set status($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasStatus() => $_has(3);
  @$pb.TagNumber(4)
  void clearStatus() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get creatorId => $_getIZ(4);
  @$pb.TagNumber(5)
  set creatorId($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCreatorId() => $_has(4);
  @$pb.TagNumber(5)
  void clearCreatorId() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get neighborhoodId => $_getIZ(5);
  @$pb.TagNumber(6)
  set neighborhoodId($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasNeighborhoodId() => $_has(5);
  @$pb.TagNumber(6)
  void clearNeighborhoodId() => clearField(6);

  @$pb.TagNumber(7)
  Date get startDate => $_getN(6);
  @$pb.TagNumber(7)
  set startDate(Date v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasStartDate() => $_has(6);
  @$pb.TagNumber(7)
  void clearStartDate() => clearField(7);
  @$pb.TagNumber(7)
  Date ensureStartDate() => $_ensure(6);

  @$pb.TagNumber(8)
  Date get closeDate => $_getN(7);
  @$pb.TagNumber(8)
  set closeDate(Date v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasCloseDate() => $_has(7);
  @$pb.TagNumber(8)
  void clearCloseDate() => clearField(8);
  @$pb.TagNumber(8)
  Date ensureCloseDate() => $_ensure(7);
}

class SubTask extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SubTask', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.O3)
    ..aOS(2, 'title')
    ..aOS(3, 'description')
    ..aOS(4, 'status')
    ..a<$core.int>(5, 'assigneeId', $pb.PbFieldType.O3)
    ..aOS(6, 'assigneeName')
    ..a<$core.int>(7, 'taskId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  SubTask._() : super();
  factory SubTask() => create();
  factory SubTask.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SubTask.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SubTask clone() => SubTask()..mergeFromMessage(this);
  SubTask copyWith(void Function(SubTask) updates) => super.copyWith((message) => updates(message as SubTask));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SubTask create() => SubTask._();
  SubTask createEmptyInstance() => create();
  static $pb.PbList<SubTask> createRepeated() => $pb.PbList<SubTask>();
  @$core.pragma('dart2js:noInline')
  static SubTask getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SubTask>(create);
  static SubTask _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get status => $_getSZ(3);
  @$pb.TagNumber(4)
  set status($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasStatus() => $_has(3);
  @$pb.TagNumber(4)
  void clearStatus() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get assigneeId => $_getIZ(4);
  @$pb.TagNumber(5)
  set assigneeId($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAssigneeId() => $_has(4);
  @$pb.TagNumber(5)
  void clearAssigneeId() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get assigneeName => $_getSZ(5);
  @$pb.TagNumber(6)
  set assigneeName($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasAssigneeName() => $_has(5);
  @$pb.TagNumber(6)
  void clearAssigneeName() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get taskId => $_getIZ(6);
  @$pb.TagNumber(7)
  set taskId($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasTaskId() => $_has(6);
  @$pb.TagNumber(7)
  void clearTaskId() => clearField(7);
}

class Post extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Post', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.O3)
    ..a<$core.int>(2, 'userId', $pb.PbFieldType.O3)
    ..a<$core.int>(3, 'neighborhoodId', $pb.PbFieldType.O3)
    ..aOS(4, 'title')
    ..aOS(5, 'text')
    ..hasRequiredFields = false
  ;

  Post._() : super();
  factory Post() => create();
  factory Post.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Post.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Post clone() => Post()..mergeFromMessage(this);
  Post copyWith(void Function(Post) updates) => super.copyWith((message) => updates(message as Post));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Post create() => Post._();
  Post createEmptyInstance() => create();
  static $pb.PbList<Post> createRepeated() => $pb.PbList<Post>();
  @$core.pragma('dart2js:noInline')
  static Post getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Post>(create);
  static Post _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get userId => $_getIZ(1);
  @$pb.TagNumber(2)
  set userId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get neighborhoodId => $_getIZ(2);
  @$pb.TagNumber(3)
  set neighborhoodId($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNeighborhoodId() => $_has(2);
  @$pb.TagNumber(3)
  void clearNeighborhoodId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get title => $_getSZ(3);
  @$pb.TagNumber(4)
  set title($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTitle() => $_has(3);
  @$pb.TagNumber(4)
  void clearTitle() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get text => $_getSZ(4);
  @$pb.TagNumber(5)
  set text($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasText() => $_has(4);
  @$pb.TagNumber(5)
  void clearText() => clearField(5);
}

class Neighborhood extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Neighborhood', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.O3)
    ..aOS(2, 'name')
    ..aOS(3, 'city')
    ..aOS(4, 'district')
    ..aOS(5, 'address')
    ..a<$core.int>(6, 'isManager', $pb.PbFieldType.O3)
    ..a<$core.int>(7, 'status', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  Neighborhood._() : super();
  factory Neighborhood() => create();
  factory Neighborhood.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Neighborhood.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Neighborhood clone() => Neighborhood()..mergeFromMessage(this);
  Neighborhood copyWith(void Function(Neighborhood) updates) => super.copyWith((message) => updates(message as Neighborhood));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Neighborhood create() => Neighborhood._();
  Neighborhood createEmptyInstance() => create();
  static $pb.PbList<Neighborhood> createRepeated() => $pb.PbList<Neighborhood>();
  @$core.pragma('dart2js:noInline')
  static Neighborhood getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Neighborhood>(create);
  static Neighborhood _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get city => $_getSZ(2);
  @$pb.TagNumber(3)
  set city($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCity() => $_has(2);
  @$pb.TagNumber(3)
  void clearCity() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get district => $_getSZ(3);
  @$pb.TagNumber(4)
  set district($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDistrict() => $_has(3);
  @$pb.TagNumber(4)
  void clearDistrict() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get address => $_getSZ(4);
  @$pb.TagNumber(5)
  set address($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAddress() => $_has(4);
  @$pb.TagNumber(5)
  void clearAddress() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get isManager => $_getIZ(5);
  @$pb.TagNumber(6)
  set isManager($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasIsManager() => $_has(5);
  @$pb.TagNumber(6)
  void clearIsManager() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get status => $_getIZ(6);
  @$pb.TagNumber(7)
  set status($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasStatus() => $_has(6);
  @$pb.TagNumber(7)
  void clearStatus() => clearField(7);
}

class Item extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Item', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..aOS(1, 'tag')
    ..hasRequiredFields = false
  ;

  Item._() : super();
  factory Item() => create();
  factory Item.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Item.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Item clone() => Item()..mergeFromMessage(this);
  Item copyWith(void Function(Item) updates) => super.copyWith((message) => updates(message as Item));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Item create() => Item._();
  Item createEmptyInstance() => create();
  static $pb.PbList<Item> createRepeated() => $pb.PbList<Item>();
  @$core.pragma('dart2js:noInline')
  static Item getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Item>(create);
  static Item _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get tag => $_getSZ(0);
  @$pb.TagNumber(1)
  set tag($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTag() => $_has(0);
  @$pb.TagNumber(1)
  void clearTag() => clearField(1);
}

class LoginUserRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('LoginUserRequest', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..aOS(1, 'username')
    ..aOS(2, 'password')
    ..hasRequiredFields = false
  ;

  LoginUserRequest._() : super();
  factory LoginUserRequest() => create();
  factory LoginUserRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoginUserRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  LoginUserRequest clone() => LoginUserRequest()..mergeFromMessage(this);
  LoginUserRequest copyWith(void Function(LoginUserRequest) updates) => super.copyWith((message) => updates(message as LoginUserRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LoginUserRequest create() => LoginUserRequest._();
  LoginUserRequest createEmptyInstance() => create();
  static $pb.PbList<LoginUserRequest> createRepeated() => $pb.PbList<LoginUserRequest>();
  @$core.pragma('dart2js:noInline')
  static LoginUserRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoginUserRequest>(create);
  static LoginUserRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get username => $_getSZ(0);
  @$pb.TagNumber(1)
  set username($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUsername() => $_has(0);
  @$pb.TagNumber(1)
  void clearUsername() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => clearField(2);
}

class LoginUserResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('LoginUserResponse', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..aOS(1, 'resultCode')
    ..hasRequiredFields = false
  ;

  LoginUserResponse._() : super();
  factory LoginUserResponse() => create();
  factory LoginUserResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoginUserResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  LoginUserResponse clone() => LoginUserResponse()..mergeFromMessage(this);
  LoginUserResponse copyWith(void Function(LoginUserResponse) updates) => super.copyWith((message) => updates(message as LoginUserResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LoginUserResponse create() => LoginUserResponse._();
  LoginUserResponse createEmptyInstance() => create();
  static $pb.PbList<LoginUserResponse> createRepeated() => $pb.PbList<LoginUserResponse>();
  @$core.pragma('dart2js:noInline')
  static LoginUserResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoginUserResponse>(create);
  static LoginUserResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get resultCode => $_getSZ(0);
  @$pb.TagNumber(1)
  set resultCode($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResultCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearResultCode() => clearField(1);
}

class RegisterUserRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RegisterUserRequest', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..aOS(1, 'firstName')
    ..aOS(2, 'lastName')
    ..aOS(3, 'username')
    ..aOS(4, 'phoneNumber')
    ..aOS(5, 'password')
    ..hasRequiredFields = false
  ;

  RegisterUserRequest._() : super();
  factory RegisterUserRequest() => create();
  factory RegisterUserRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RegisterUserRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RegisterUserRequest clone() => RegisterUserRequest()..mergeFromMessage(this);
  RegisterUserRequest copyWith(void Function(RegisterUserRequest) updates) => super.copyWith((message) => updates(message as RegisterUserRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RegisterUserRequest create() => RegisterUserRequest._();
  RegisterUserRequest createEmptyInstance() => create();
  static $pb.PbList<RegisterUserRequest> createRepeated() => $pb.PbList<RegisterUserRequest>();
  @$core.pragma('dart2js:noInline')
  static RegisterUserRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RegisterUserRequest>(create);
  static RegisterUserRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get firstName => $_getSZ(0);
  @$pb.TagNumber(1)
  set firstName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFirstName() => $_has(0);
  @$pb.TagNumber(1)
  void clearFirstName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get lastName => $_getSZ(1);
  @$pb.TagNumber(2)
  set lastName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLastName() => $_has(1);
  @$pb.TagNumber(2)
  void clearLastName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get username => $_getSZ(2);
  @$pb.TagNumber(3)
  set username($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUsername() => $_has(2);
  @$pb.TagNumber(3)
  void clearUsername() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get phoneNumber => $_getSZ(3);
  @$pb.TagNumber(4)
  set phoneNumber($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPhoneNumber() => $_has(3);
  @$pb.TagNumber(4)
  void clearPhoneNumber() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get password => $_getSZ(4);
  @$pb.TagNumber(5)
  set password($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPassword() => $_has(4);
  @$pb.TagNumber(5)
  void clearPassword() => clearField(5);
}

class RegisterUserResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RegisterUserResponse', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..aOS(1, 'resultCode')
    ..hasRequiredFields = false
  ;

  RegisterUserResponse._() : super();
  factory RegisterUserResponse() => create();
  factory RegisterUserResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RegisterUserResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RegisterUserResponse clone() => RegisterUserResponse()..mergeFromMessage(this);
  RegisterUserResponse copyWith(void Function(RegisterUserResponse) updates) => super.copyWith((message) => updates(message as RegisterUserResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RegisterUserResponse create() => RegisterUserResponse._();
  RegisterUserResponse createEmptyInstance() => create();
  static $pb.PbList<RegisterUserResponse> createRepeated() => $pb.PbList<RegisterUserResponse>();
  @$core.pragma('dart2js:noInline')
  static RegisterUserResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RegisterUserResponse>(create);
  static RegisterUserResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get resultCode => $_getSZ(0);
  @$pb.TagNumber(1)
  set resultCode($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResultCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearResultCode() => clearField(1);
}

class EditPlateNumberRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EditPlateNumberRequest', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..aOS(1, 'plateNumber')
    ..hasRequiredFields = false
  ;

  EditPlateNumberRequest._() : super();
  factory EditPlateNumberRequest() => create();
  factory EditPlateNumberRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditPlateNumberRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EditPlateNumberRequest clone() => EditPlateNumberRequest()..mergeFromMessage(this);
  EditPlateNumberRequest copyWith(void Function(EditPlateNumberRequest) updates) => super.copyWith((message) => updates(message as EditPlateNumberRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EditPlateNumberRequest create() => EditPlateNumberRequest._();
  EditPlateNumberRequest createEmptyInstance() => create();
  static $pb.PbList<EditPlateNumberRequest> createRepeated() => $pb.PbList<EditPlateNumberRequest>();
  @$core.pragma('dart2js:noInline')
  static EditPlateNumberRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditPlateNumberRequest>(create);
  static EditPlateNumberRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get plateNumber => $_getSZ(0);
  @$pb.TagNumber(1)
  set plateNumber($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPlateNumber() => $_has(0);
  @$pb.TagNumber(1)
  void clearPlateNumber() => clearField(1);
}

class EditPlateNumberResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EditPlateNumberResponse', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..aOS(1, 'resultCode')
    ..hasRequiredFields = false
  ;

  EditPlateNumberResponse._() : super();
  factory EditPlateNumberResponse() => create();
  factory EditPlateNumberResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditPlateNumberResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EditPlateNumberResponse clone() => EditPlateNumberResponse()..mergeFromMessage(this);
  EditPlateNumberResponse copyWith(void Function(EditPlateNumberResponse) updates) => super.copyWith((message) => updates(message as EditPlateNumberResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EditPlateNumberResponse create() => EditPlateNumberResponse._();
  EditPlateNumberResponse createEmptyInstance() => create();
  static $pb.PbList<EditPlateNumberResponse> createRepeated() => $pb.PbList<EditPlateNumberResponse>();
  @$core.pragma('dart2js:noInline')
  static EditPlateNumberResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditPlateNumberResponse>(create);
  static EditPlateNumberResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get resultCode => $_getSZ(0);
  @$pb.TagNumber(1)
  set resultCode($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResultCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearResultCode() => clearField(1);
}

class UserProfileRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UserProfileRequest', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..a<$core.int>(1, 'userId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  UserProfileRequest._() : super();
  factory UserProfileRequest() => create();
  factory UserProfileRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserProfileRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UserProfileRequest clone() => UserProfileRequest()..mergeFromMessage(this);
  UserProfileRequest copyWith(void Function(UserProfileRequest) updates) => super.copyWith((message) => updates(message as UserProfileRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserProfileRequest create() => UserProfileRequest._();
  UserProfileRequest createEmptyInstance() => create();
  static $pb.PbList<UserProfileRequest> createRepeated() => $pb.PbList<UserProfileRequest>();
  @$core.pragma('dart2js:noInline')
  static UserProfileRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserProfileRequest>(create);
  static UserProfileRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get userId => $_getIZ(0);
  @$pb.TagNumber(1)
  set userId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);
}

class UserIdRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UserIdRequest', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..a<$core.int>(1, 'dummy', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  UserIdRequest._() : super();
  factory UserIdRequest() => create();
  factory UserIdRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserIdRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UserIdRequest clone() => UserIdRequest()..mergeFromMessage(this);
  UserIdRequest copyWith(void Function(UserIdRequest) updates) => super.copyWith((message) => updates(message as UserIdRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserIdRequest create() => UserIdRequest._();
  UserIdRequest createEmptyInstance() => create();
  static $pb.PbList<UserIdRequest> createRepeated() => $pb.PbList<UserIdRequest>();
  @$core.pragma('dart2js:noInline')
  static UserIdRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserIdRequest>(create);
  static UserIdRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get dummy => $_getIZ(0);
  @$pb.TagNumber(1)
  set dummy($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDummy() => $_has(0);
  @$pb.TagNumber(1)
  void clearDummy() => clearField(1);
}

class UserIdResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UserIdResponse', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  UserIdResponse._() : super();
  factory UserIdResponse() => create();
  factory UserIdResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserIdResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UserIdResponse clone() => UserIdResponse()..mergeFromMessage(this);
  UserIdResponse copyWith(void Function(UserIdResponse) updates) => super.copyWith((message) => updates(message as UserIdResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserIdResponse create() => UserIdResponse._();
  UserIdResponse createEmptyInstance() => create();
  static $pb.PbList<UserIdResponse> createRepeated() => $pb.PbList<UserIdResponse>();
  @$core.pragma('dart2js:noInline')
  static UserIdResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserIdResponse>(create);
  static UserIdResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class EditPhoneNumberRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EditPhoneNumberRequest', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..aOS(1, 'phoneNumber')
    ..hasRequiredFields = false
  ;

  EditPhoneNumberRequest._() : super();
  factory EditPhoneNumberRequest() => create();
  factory EditPhoneNumberRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditPhoneNumberRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EditPhoneNumberRequest clone() => EditPhoneNumberRequest()..mergeFromMessage(this);
  EditPhoneNumberRequest copyWith(void Function(EditPhoneNumberRequest) updates) => super.copyWith((message) => updates(message as EditPhoneNumberRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EditPhoneNumberRequest create() => EditPhoneNumberRequest._();
  EditPhoneNumberRequest createEmptyInstance() => create();
  static $pb.PbList<EditPhoneNumberRequest> createRepeated() => $pb.PbList<EditPhoneNumberRequest>();
  @$core.pragma('dart2js:noInline')
  static EditPhoneNumberRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditPhoneNumberRequest>(create);
  static EditPhoneNumberRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get phoneNumber => $_getSZ(0);
  @$pb.TagNumber(1)
  set phoneNumber($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPhoneNumber() => $_has(0);
  @$pb.TagNumber(1)
  void clearPhoneNumber() => clearField(1);
}

class EditPhoneNumberResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EditPhoneNumberResponse', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..aOS(1, 'resultCode')
    ..hasRequiredFields = false
  ;

  EditPhoneNumberResponse._() : super();
  factory EditPhoneNumberResponse() => create();
  factory EditPhoneNumberResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditPhoneNumberResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EditPhoneNumberResponse clone() => EditPhoneNumberResponse()..mergeFromMessage(this);
  EditPhoneNumberResponse copyWith(void Function(EditPhoneNumberResponse) updates) => super.copyWith((message) => updates(message as EditPhoneNumberResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EditPhoneNumberResponse create() => EditPhoneNumberResponse._();
  EditPhoneNumberResponse createEmptyInstance() => create();
  static $pb.PbList<EditPhoneNumberResponse> createRepeated() => $pb.PbList<EditPhoneNumberResponse>();
  @$core.pragma('dart2js:noInline')
  static EditPhoneNumberResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditPhoneNumberResponse>(create);
  static EditPhoneNumberResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get resultCode => $_getSZ(0);
  @$pb.TagNumber(1)
  set resultCode($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResultCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearResultCode() => clearField(1);
}

class UserProfileResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UserProfileResponse', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..aOS(1, 'username')
    ..aOS(2, 'firstName')
    ..aOS(3, 'lastName')
    ..aOS(4, 'phoneNumber')
    ..aOS(5, 'carPlateNumber')
    ..pPS(6, 'items')
    ..hasRequiredFields = false
  ;

  UserProfileResponse._() : super();
  factory UserProfileResponse() => create();
  factory UserProfileResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserProfileResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UserProfileResponse clone() => UserProfileResponse()..mergeFromMessage(this);
  UserProfileResponse copyWith(void Function(UserProfileResponse) updates) => super.copyWith((message) => updates(message as UserProfileResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserProfileResponse create() => UserProfileResponse._();
  UserProfileResponse createEmptyInstance() => create();
  static $pb.PbList<UserProfileResponse> createRepeated() => $pb.PbList<UserProfileResponse>();
  @$core.pragma('dart2js:noInline')
  static UserProfileResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserProfileResponse>(create);
  static UserProfileResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get username => $_getSZ(0);
  @$pb.TagNumber(1)
  set username($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUsername() => $_has(0);
  @$pb.TagNumber(1)
  void clearUsername() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get firstName => $_getSZ(1);
  @$pb.TagNumber(2)
  set firstName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFirstName() => $_has(1);
  @$pb.TagNumber(2)
  void clearFirstName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get lastName => $_getSZ(2);
  @$pb.TagNumber(3)
  set lastName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLastName() => $_has(2);
  @$pb.TagNumber(3)
  void clearLastName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get phoneNumber => $_getSZ(3);
  @$pb.TagNumber(4)
  set phoneNumber($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPhoneNumber() => $_has(3);
  @$pb.TagNumber(4)
  void clearPhoneNumber() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get carPlateNumber => $_getSZ(4);
  @$pb.TagNumber(5)
  set carPlateNumber($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCarPlateNumber() => $_has(4);
  @$pb.TagNumber(5)
  void clearCarPlateNumber() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.String> get items => $_getList(5);
}

class ItemListRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ItemListRequest', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..a<$core.int>(1, 'userId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  ItemListRequest._() : super();
  factory ItemListRequest() => create();
  factory ItemListRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ItemListRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ItemListRequest clone() => ItemListRequest()..mergeFromMessage(this);
  ItemListRequest copyWith(void Function(ItemListRequest) updates) => super.copyWith((message) => updates(message as ItemListRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ItemListRequest create() => ItemListRequest._();
  ItemListRequest createEmptyInstance() => create();
  static $pb.PbList<ItemListRequest> createRepeated() => $pb.PbList<ItemListRequest>();
  @$core.pragma('dart2js:noInline')
  static ItemListRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ItemListRequest>(create);
  static ItemListRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get userId => $_getIZ(0);
  @$pb.TagNumber(1)
  set userId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);
}

class ItemListResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ItemListResponse', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..pPS(1, 'items')
    ..hasRequiredFields = false
  ;

  ItemListResponse._() : super();
  factory ItemListResponse() => create();
  factory ItemListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ItemListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ItemListResponse clone() => ItemListResponse()..mergeFromMessage(this);
  ItemListResponse copyWith(void Function(ItemListResponse) updates) => super.copyWith((message) => updates(message as ItemListResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ItemListResponse create() => ItemListResponse._();
  ItemListResponse createEmptyInstance() => create();
  static $pb.PbList<ItemListResponse> createRepeated() => $pb.PbList<ItemListResponse>();
  @$core.pragma('dart2js:noInline')
  static ItemListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ItemListResponse>(create);
  static ItemListResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get items => $_getList(0);
}

class ResetPasswordRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ResetPasswordRequest', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..a<$core.int>(1, 'userId', $pb.PbFieldType.O3)
    ..aOS(2, 'oldPassword')
    ..aOS(3, 'newPassword')
    ..aOS(4, 'repeatNewPassword')
    ..hasRequiredFields = false
  ;

  ResetPasswordRequest._() : super();
  factory ResetPasswordRequest() => create();
  factory ResetPasswordRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResetPasswordRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ResetPasswordRequest clone() => ResetPasswordRequest()..mergeFromMessage(this);
  ResetPasswordRequest copyWith(void Function(ResetPasswordRequest) updates) => super.copyWith((message) => updates(message as ResetPasswordRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResetPasswordRequest create() => ResetPasswordRequest._();
  ResetPasswordRequest createEmptyInstance() => create();
  static $pb.PbList<ResetPasswordRequest> createRepeated() => $pb.PbList<ResetPasswordRequest>();
  @$core.pragma('dart2js:noInline')
  static ResetPasswordRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResetPasswordRequest>(create);
  static ResetPasswordRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get userId => $_getIZ(0);
  @$pb.TagNumber(1)
  set userId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get oldPassword => $_getSZ(1);
  @$pb.TagNumber(2)
  set oldPassword($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOldPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearOldPassword() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get newPassword => $_getSZ(2);
  @$pb.TagNumber(3)
  set newPassword($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNewPassword() => $_has(2);
  @$pb.TagNumber(3)
  void clearNewPassword() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get repeatNewPassword => $_getSZ(3);
  @$pb.TagNumber(4)
  set repeatNewPassword($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasRepeatNewPassword() => $_has(3);
  @$pb.TagNumber(4)
  void clearRepeatNewPassword() => clearField(4);
}

class ResetPasswordResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ResetPasswordResponse', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..aOS(1, 'resultCode')
    ..hasRequiredFields = false
  ;

  ResetPasswordResponse._() : super();
  factory ResetPasswordResponse() => create();
  factory ResetPasswordResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResetPasswordResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ResetPasswordResponse clone() => ResetPasswordResponse()..mergeFromMessage(this);
  ResetPasswordResponse copyWith(void Function(ResetPasswordResponse) updates) => super.copyWith((message) => updates(message as ResetPasswordResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResetPasswordResponse create() => ResetPasswordResponse._();
  ResetPasswordResponse createEmptyInstance() => create();
  static $pb.PbList<ResetPasswordResponse> createRepeated() => $pb.PbList<ResetPasswordResponse>();
  @$core.pragma('dart2js:noInline')
  static ResetPasswordResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResetPasswordResponse>(create);
  static ResetPasswordResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get resultCode => $_getSZ(0);
  @$pb.TagNumber(1)
  set resultCode($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResultCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearResultCode() => clearField(1);
}

class DeleteContactRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeleteContactRequest', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..a<$core.int>(1, 'userId', $pb.PbFieldType.O3)
    ..aOS(2, 'phoneNumber')
    ..hasRequiredFields = false
  ;

  DeleteContactRequest._() : super();
  factory DeleteContactRequest() => create();
  factory DeleteContactRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteContactRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DeleteContactRequest clone() => DeleteContactRequest()..mergeFromMessage(this);
  DeleteContactRequest copyWith(void Function(DeleteContactRequest) updates) => super.copyWith((message) => updates(message as DeleteContactRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteContactRequest create() => DeleteContactRequest._();
  DeleteContactRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteContactRequest> createRepeated() => $pb.PbList<DeleteContactRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteContactRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteContactRequest>(create);
  static DeleteContactRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get userId => $_getIZ(0);
  @$pb.TagNumber(1)
  set userId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get phoneNumber => $_getSZ(1);
  @$pb.TagNumber(2)
  set phoneNumber($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPhoneNumber() => $_has(1);
  @$pb.TagNumber(2)
  void clearPhoneNumber() => clearField(2);
}

class DeleteContactResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeleteContactResponse', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..aOS(1, 'resultCode')
    ..hasRequiredFields = false
  ;

  DeleteContactResponse._() : super();
  factory DeleteContactResponse() => create();
  factory DeleteContactResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteContactResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DeleteContactResponse clone() => DeleteContactResponse()..mergeFromMessage(this);
  DeleteContactResponse copyWith(void Function(DeleteContactResponse) updates) => super.copyWith((message) => updates(message as DeleteContactResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteContactResponse create() => DeleteContactResponse._();
  DeleteContactResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteContactResponse> createRepeated() => $pb.PbList<DeleteContactResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteContactResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteContactResponse>(create);
  static DeleteContactResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get resultCode => $_getSZ(0);
  @$pb.TagNumber(1)
  set resultCode($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResultCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearResultCode() => clearField(1);
}

class AddNeighborhoodRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AddNeighborhoodRequest', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..aOM<Neighborhood>(1, 'neighborhood', subBuilder: Neighborhood.create)
    ..hasRequiredFields = false
  ;

  AddNeighborhoodRequest._() : super();
  factory AddNeighborhoodRequest() => create();
  factory AddNeighborhoodRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddNeighborhoodRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AddNeighborhoodRequest clone() => AddNeighborhoodRequest()..mergeFromMessage(this);
  AddNeighborhoodRequest copyWith(void Function(AddNeighborhoodRequest) updates) => super.copyWith((message) => updates(message as AddNeighborhoodRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddNeighborhoodRequest create() => AddNeighborhoodRequest._();
  AddNeighborhoodRequest createEmptyInstance() => create();
  static $pb.PbList<AddNeighborhoodRequest> createRepeated() => $pb.PbList<AddNeighborhoodRequest>();
  @$core.pragma('dart2js:noInline')
  static AddNeighborhoodRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddNeighborhoodRequest>(create);
  static AddNeighborhoodRequest _defaultInstance;

  @$pb.TagNumber(1)
  Neighborhood get neighborhood => $_getN(0);
  @$pb.TagNumber(1)
  set neighborhood(Neighborhood v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasNeighborhood() => $_has(0);
  @$pb.TagNumber(1)
  void clearNeighborhood() => clearField(1);
  @$pb.TagNumber(1)
  Neighborhood ensureNeighborhood() => $_ensure(0);
}

class AddNeighborhoodResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AddNeighborhoodResponse', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..aOS(1, 'resultCode')
    ..a<$core.int>(2, 'neighborhoodId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  AddNeighborhoodResponse._() : super();
  factory AddNeighborhoodResponse() => create();
  factory AddNeighborhoodResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddNeighborhoodResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AddNeighborhoodResponse clone() => AddNeighborhoodResponse()..mergeFromMessage(this);
  AddNeighborhoodResponse copyWith(void Function(AddNeighborhoodResponse) updates) => super.copyWith((message) => updates(message as AddNeighborhoodResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddNeighborhoodResponse create() => AddNeighborhoodResponse._();
  AddNeighborhoodResponse createEmptyInstance() => create();
  static $pb.PbList<AddNeighborhoodResponse> createRepeated() => $pb.PbList<AddNeighborhoodResponse>();
  @$core.pragma('dart2js:noInline')
  static AddNeighborhoodResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddNeighborhoodResponse>(create);
  static AddNeighborhoodResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get resultCode => $_getSZ(0);
  @$pb.TagNumber(1)
  set resultCode($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResultCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearResultCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get neighborhoodId => $_getIZ(1);
  @$pb.TagNumber(2)
  set neighborhoodId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNeighborhoodId() => $_has(1);
  @$pb.TagNumber(2)
  void clearNeighborhoodId() => clearField(2);
}

class GetMyNeighborhoodRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetMyNeighborhoodRequest', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..a<$core.int>(1, 'dummy', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  GetMyNeighborhoodRequest._() : super();
  factory GetMyNeighborhoodRequest() => create();
  factory GetMyNeighborhoodRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetMyNeighborhoodRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetMyNeighborhoodRequest clone() => GetMyNeighborhoodRequest()..mergeFromMessage(this);
  GetMyNeighborhoodRequest copyWith(void Function(GetMyNeighborhoodRequest) updates) => super.copyWith((message) => updates(message as GetMyNeighborhoodRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetMyNeighborhoodRequest create() => GetMyNeighborhoodRequest._();
  GetMyNeighborhoodRequest createEmptyInstance() => create();
  static $pb.PbList<GetMyNeighborhoodRequest> createRepeated() => $pb.PbList<GetMyNeighborhoodRequest>();
  @$core.pragma('dart2js:noInline')
  static GetMyNeighborhoodRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetMyNeighborhoodRequest>(create);
  static GetMyNeighborhoodRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get dummy => $_getIZ(0);
  @$pb.TagNumber(1)
  set dummy($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDummy() => $_has(0);
  @$pb.TagNumber(1)
  void clearDummy() => clearField(1);
}

class GetMyNeighborhoodResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetMyNeighborhoodResponse', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..aOS(1, 'resultCode')
    ..pc<Neighborhood>(2, 'neighborhood', $pb.PbFieldType.PM, subBuilder: Neighborhood.create)
    ..hasRequiredFields = false
  ;

  GetMyNeighborhoodResponse._() : super();
  factory GetMyNeighborhoodResponse() => create();
  factory GetMyNeighborhoodResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetMyNeighborhoodResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetMyNeighborhoodResponse clone() => GetMyNeighborhoodResponse()..mergeFromMessage(this);
  GetMyNeighborhoodResponse copyWith(void Function(GetMyNeighborhoodResponse) updates) => super.copyWith((message) => updates(message as GetMyNeighborhoodResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetMyNeighborhoodResponse create() => GetMyNeighborhoodResponse._();
  GetMyNeighborhoodResponse createEmptyInstance() => create();
  static $pb.PbList<GetMyNeighborhoodResponse> createRepeated() => $pb.PbList<GetMyNeighborhoodResponse>();
  @$core.pragma('dart2js:noInline')
  static GetMyNeighborhoodResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetMyNeighborhoodResponse>(create);
  static GetMyNeighborhoodResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get resultCode => $_getSZ(0);
  @$pb.TagNumber(1)
  set resultCode($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResultCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearResultCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<Neighborhood> get neighborhood => $_getList(1);
}

class GetOtherNeighborhoodRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetOtherNeighborhoodRequest', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..a<$core.int>(1, 'dummy', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  GetOtherNeighborhoodRequest._() : super();
  factory GetOtherNeighborhoodRequest() => create();
  factory GetOtherNeighborhoodRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetOtherNeighborhoodRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetOtherNeighborhoodRequest clone() => GetOtherNeighborhoodRequest()..mergeFromMessage(this);
  GetOtherNeighborhoodRequest copyWith(void Function(GetOtherNeighborhoodRequest) updates) => super.copyWith((message) => updates(message as GetOtherNeighborhoodRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetOtherNeighborhoodRequest create() => GetOtherNeighborhoodRequest._();
  GetOtherNeighborhoodRequest createEmptyInstance() => create();
  static $pb.PbList<GetOtherNeighborhoodRequest> createRepeated() => $pb.PbList<GetOtherNeighborhoodRequest>();
  @$core.pragma('dart2js:noInline')
  static GetOtherNeighborhoodRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetOtherNeighborhoodRequest>(create);
  static GetOtherNeighborhoodRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get dummy => $_getIZ(0);
  @$pb.TagNumber(1)
  set dummy($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDummy() => $_has(0);
  @$pb.TagNumber(1)
  void clearDummy() => clearField(1);
}

class GetOtherNeighborhoodResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetOtherNeighborhoodResponse', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..aOS(1, 'resultCode')
    ..pc<Neighborhood>(2, 'neighborhood', $pb.PbFieldType.PM, subBuilder: Neighborhood.create)
    ..hasRequiredFields = false
  ;

  GetOtherNeighborhoodResponse._() : super();
  factory GetOtherNeighborhoodResponse() => create();
  factory GetOtherNeighborhoodResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetOtherNeighborhoodResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetOtherNeighborhoodResponse clone() => GetOtherNeighborhoodResponse()..mergeFromMessage(this);
  GetOtherNeighborhoodResponse copyWith(void Function(GetOtherNeighborhoodResponse) updates) => super.copyWith((message) => updates(message as GetOtherNeighborhoodResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetOtherNeighborhoodResponse create() => GetOtherNeighborhoodResponse._();
  GetOtherNeighborhoodResponse createEmptyInstance() => create();
  static $pb.PbList<GetOtherNeighborhoodResponse> createRepeated() => $pb.PbList<GetOtherNeighborhoodResponse>();
  @$core.pragma('dart2js:noInline')
  static GetOtherNeighborhoodResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetOtherNeighborhoodResponse>(create);
  static GetOtherNeighborhoodResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get resultCode => $_getSZ(0);
  @$pb.TagNumber(1)
  set resultCode($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResultCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearResultCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<Neighborhood> get neighborhood => $_getList(1);
}

class AddManagerRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AddManagerRequest', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..a<$core.int>(1, 'newManagerId', $pb.PbFieldType.O3)
    ..a<$core.int>(2, 'neighborhoodId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  AddManagerRequest._() : super();
  factory AddManagerRequest() => create();
  factory AddManagerRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddManagerRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AddManagerRequest clone() => AddManagerRequest()..mergeFromMessage(this);
  AddManagerRequest copyWith(void Function(AddManagerRequest) updates) => super.copyWith((message) => updates(message as AddManagerRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddManagerRequest create() => AddManagerRequest._();
  AddManagerRequest createEmptyInstance() => create();
  static $pb.PbList<AddManagerRequest> createRepeated() => $pb.PbList<AddManagerRequest>();
  @$core.pragma('dart2js:noInline')
  static AddManagerRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddManagerRequest>(create);
  static AddManagerRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get newManagerId => $_getIZ(0);
  @$pb.TagNumber(1)
  set newManagerId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNewManagerId() => $_has(0);
  @$pb.TagNumber(1)
  void clearNewManagerId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get neighborhoodId => $_getIZ(1);
  @$pb.TagNumber(2)
  set neighborhoodId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNeighborhoodId() => $_has(1);
  @$pb.TagNumber(2)
  void clearNeighborhoodId() => clearField(2);
}

class AddManagerResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AddManagerResponse', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..aOS(1, 'resultCode')
    ..hasRequiredFields = false
  ;

  AddManagerResponse._() : super();
  factory AddManagerResponse() => create();
  factory AddManagerResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddManagerResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AddManagerResponse clone() => AddManagerResponse()..mergeFromMessage(this);
  AddManagerResponse copyWith(void Function(AddManagerResponse) updates) => super.copyWith((message) => updates(message as AddManagerResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddManagerResponse create() => AddManagerResponse._();
  AddManagerResponse createEmptyInstance() => create();
  static $pb.PbList<AddManagerResponse> createRepeated() => $pb.PbList<AddManagerResponse>();
  @$core.pragma('dart2js:noInline')
  static AddManagerResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddManagerResponse>(create);
  static AddManagerResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get resultCode => $_getSZ(0);
  @$pb.TagNumber(1)
  set resultCode($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResultCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearResultCode() => clearField(1);
}

class IsManagerRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('IsManagerRequest', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..a<$core.int>(1, 'neighborhoodId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  IsManagerRequest._() : super();
  factory IsManagerRequest() => create();
  factory IsManagerRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IsManagerRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  IsManagerRequest clone() => IsManagerRequest()..mergeFromMessage(this);
  IsManagerRequest copyWith(void Function(IsManagerRequest) updates) => super.copyWith((message) => updates(message as IsManagerRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static IsManagerRequest create() => IsManagerRequest._();
  IsManagerRequest createEmptyInstance() => create();
  static $pb.PbList<IsManagerRequest> createRepeated() => $pb.PbList<IsManagerRequest>();
  @$core.pragma('dart2js:noInline')
  static IsManagerRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IsManagerRequest>(create);
  static IsManagerRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get neighborhoodId => $_getIZ(0);
  @$pb.TagNumber(1)
  set neighborhoodId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNeighborhoodId() => $_has(0);
  @$pb.TagNumber(1)
  void clearNeighborhoodId() => clearField(1);
}

class IsManagerResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('IsManagerResponse', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..aOS(1, 'resultCode')
    ..hasRequiredFields = false
  ;

  IsManagerResponse._() : super();
  factory IsManagerResponse() => create();
  factory IsManagerResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IsManagerResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  IsManagerResponse clone() => IsManagerResponse()..mergeFromMessage(this);
  IsManagerResponse copyWith(void Function(IsManagerResponse) updates) => super.copyWith((message) => updates(message as IsManagerResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static IsManagerResponse create() => IsManagerResponse._();
  IsManagerResponse createEmptyInstance() => create();
  static $pb.PbList<IsManagerResponse> createRepeated() => $pb.PbList<IsManagerResponse>();
  @$core.pragma('dart2js:noInline')
  static IsManagerResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IsManagerResponse>(create);
  static IsManagerResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get resultCode => $_getSZ(0);
  @$pb.TagNumber(1)
  set resultCode($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResultCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearResultCode() => clearField(1);
}

class AddUserToNeighborhoodRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AddUserToNeighborhoodRequest', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..a<$core.int>(1, 'neighborhoodId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  AddUserToNeighborhoodRequest._() : super();
  factory AddUserToNeighborhoodRequest() => create();
  factory AddUserToNeighborhoodRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddUserToNeighborhoodRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AddUserToNeighborhoodRequest clone() => AddUserToNeighborhoodRequest()..mergeFromMessage(this);
  AddUserToNeighborhoodRequest copyWith(void Function(AddUserToNeighborhoodRequest) updates) => super.copyWith((message) => updates(message as AddUserToNeighborhoodRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddUserToNeighborhoodRequest create() => AddUserToNeighborhoodRequest._();
  AddUserToNeighborhoodRequest createEmptyInstance() => create();
  static $pb.PbList<AddUserToNeighborhoodRequest> createRepeated() => $pb.PbList<AddUserToNeighborhoodRequest>();
  @$core.pragma('dart2js:noInline')
  static AddUserToNeighborhoodRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddUserToNeighborhoodRequest>(create);
  static AddUserToNeighborhoodRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get neighborhoodId => $_getIZ(0);
  @$pb.TagNumber(1)
  set neighborhoodId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNeighborhoodId() => $_has(0);
  @$pb.TagNumber(1)
  void clearNeighborhoodId() => clearField(1);
}

class AddUserToNeighborhoodResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AddUserToNeighborhoodResponse', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..aOS(1, 'resultCode')
    ..hasRequiredFields = false
  ;

  AddUserToNeighborhoodResponse._() : super();
  factory AddUserToNeighborhoodResponse() => create();
  factory AddUserToNeighborhoodResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddUserToNeighborhoodResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AddUserToNeighborhoodResponse clone() => AddUserToNeighborhoodResponse()..mergeFromMessage(this);
  AddUserToNeighborhoodResponse copyWith(void Function(AddUserToNeighborhoodResponse) updates) => super.copyWith((message) => updates(message as AddUserToNeighborhoodResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddUserToNeighborhoodResponse create() => AddUserToNeighborhoodResponse._();
  AddUserToNeighborhoodResponse createEmptyInstance() => create();
  static $pb.PbList<AddUserToNeighborhoodResponse> createRepeated() => $pb.PbList<AddUserToNeighborhoodResponse>();
  @$core.pragma('dart2js:noInline')
  static AddUserToNeighborhoodResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddUserToNeighborhoodResponse>(create);
  static AddUserToNeighborhoodResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get resultCode => $_getSZ(0);
  @$pb.TagNumber(1)
  set resultCode($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResultCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearResultCode() => clearField(1);
}

class ApproveUserToNeighborhoodRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ApproveUserToNeighborhoodRequest', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..a<$core.int>(1, 'userId', $pb.PbFieldType.O3)
    ..a<$core.int>(2, 'neighborhoodId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  ApproveUserToNeighborhoodRequest._() : super();
  factory ApproveUserToNeighborhoodRequest() => create();
  factory ApproveUserToNeighborhoodRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ApproveUserToNeighborhoodRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ApproveUserToNeighborhoodRequest clone() => ApproveUserToNeighborhoodRequest()..mergeFromMessage(this);
  ApproveUserToNeighborhoodRequest copyWith(void Function(ApproveUserToNeighborhoodRequest) updates) => super.copyWith((message) => updates(message as ApproveUserToNeighborhoodRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ApproveUserToNeighborhoodRequest create() => ApproveUserToNeighborhoodRequest._();
  ApproveUserToNeighborhoodRequest createEmptyInstance() => create();
  static $pb.PbList<ApproveUserToNeighborhoodRequest> createRepeated() => $pb.PbList<ApproveUserToNeighborhoodRequest>();
  @$core.pragma('dart2js:noInline')
  static ApproveUserToNeighborhoodRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ApproveUserToNeighborhoodRequest>(create);
  static ApproveUserToNeighborhoodRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get userId => $_getIZ(0);
  @$pb.TagNumber(1)
  set userId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get neighborhoodId => $_getIZ(1);
  @$pb.TagNumber(2)
  set neighborhoodId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNeighborhoodId() => $_has(1);
  @$pb.TagNumber(2)
  void clearNeighborhoodId() => clearField(2);
}

class RejectUserToNeighborhoodRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RejectUserToNeighborhoodRequest', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..a<$core.int>(1, 'userId', $pb.PbFieldType.O3)
    ..a<$core.int>(2, 'neighborhoodId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  RejectUserToNeighborhoodRequest._() : super();
  factory RejectUserToNeighborhoodRequest() => create();
  factory RejectUserToNeighborhoodRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RejectUserToNeighborhoodRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RejectUserToNeighborhoodRequest clone() => RejectUserToNeighborhoodRequest()..mergeFromMessage(this);
  RejectUserToNeighborhoodRequest copyWith(void Function(RejectUserToNeighborhoodRequest) updates) => super.copyWith((message) => updates(message as RejectUserToNeighborhoodRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RejectUserToNeighborhoodRequest create() => RejectUserToNeighborhoodRequest._();
  RejectUserToNeighborhoodRequest createEmptyInstance() => create();
  static $pb.PbList<RejectUserToNeighborhoodRequest> createRepeated() => $pb.PbList<RejectUserToNeighborhoodRequest>();
  @$core.pragma('dart2js:noInline')
  static RejectUserToNeighborhoodRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RejectUserToNeighborhoodRequest>(create);
  static RejectUserToNeighborhoodRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get userId => $_getIZ(0);
  @$pb.TagNumber(1)
  set userId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get neighborhoodId => $_getIZ(1);
  @$pb.TagNumber(2)
  set neighborhoodId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNeighborhoodId() => $_has(1);
  @$pb.TagNumber(2)
  void clearNeighborhoodId() => clearField(2);
}

class ApproveUserToNeighborhoodResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ApproveUserToNeighborhoodResponse', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..aOS(1, 'resultCode')
    ..hasRequiredFields = false
  ;

  ApproveUserToNeighborhoodResponse._() : super();
  factory ApproveUserToNeighborhoodResponse() => create();
  factory ApproveUserToNeighborhoodResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ApproveUserToNeighborhoodResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ApproveUserToNeighborhoodResponse clone() => ApproveUserToNeighborhoodResponse()..mergeFromMessage(this);
  ApproveUserToNeighborhoodResponse copyWith(void Function(ApproveUserToNeighborhoodResponse) updates) => super.copyWith((message) => updates(message as ApproveUserToNeighborhoodResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ApproveUserToNeighborhoodResponse create() => ApproveUserToNeighborhoodResponse._();
  ApproveUserToNeighborhoodResponse createEmptyInstance() => create();
  static $pb.PbList<ApproveUserToNeighborhoodResponse> createRepeated() => $pb.PbList<ApproveUserToNeighborhoodResponse>();
  @$core.pragma('dart2js:noInline')
  static ApproveUserToNeighborhoodResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ApproveUserToNeighborhoodResponse>(create);
  static ApproveUserToNeighborhoodResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get resultCode => $_getSZ(0);
  @$pb.TagNumber(1)
  set resultCode($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResultCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearResultCode() => clearField(1);
}

class RejectUserToNeighborhoodResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RejectUserToNeighborhoodResponse', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..aOS(1, 'resultCode')
    ..hasRequiredFields = false
  ;

  RejectUserToNeighborhoodResponse._() : super();
  factory RejectUserToNeighborhoodResponse() => create();
  factory RejectUserToNeighborhoodResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RejectUserToNeighborhoodResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RejectUserToNeighborhoodResponse clone() => RejectUserToNeighborhoodResponse()..mergeFromMessage(this);
  RejectUserToNeighborhoodResponse copyWith(void Function(RejectUserToNeighborhoodResponse) updates) => super.copyWith((message) => updates(message as RejectUserToNeighborhoodResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RejectUserToNeighborhoodResponse create() => RejectUserToNeighborhoodResponse._();
  RejectUserToNeighborhoodResponse createEmptyInstance() => create();
  static $pb.PbList<RejectUserToNeighborhoodResponse> createRepeated() => $pb.PbList<RejectUserToNeighborhoodResponse>();
  @$core.pragma('dart2js:noInline')
  static RejectUserToNeighborhoodResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RejectUserToNeighborhoodResponse>(create);
  static RejectUserToNeighborhoodResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get resultCode => $_getSZ(0);
  @$pb.TagNumber(1)
  set resultCode($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResultCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearResultCode() => clearField(1);
}

class GetUserRequestListResponseItem extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetUserRequestListResponseItem', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..a<$core.int>(1, 'userId', $pb.PbFieldType.O3)
    ..aOS(2, 'userName')
    ..hasRequiredFields = false
  ;

  GetUserRequestListResponseItem._() : super();
  factory GetUserRequestListResponseItem() => create();
  factory GetUserRequestListResponseItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetUserRequestListResponseItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetUserRequestListResponseItem clone() => GetUserRequestListResponseItem()..mergeFromMessage(this);
  GetUserRequestListResponseItem copyWith(void Function(GetUserRequestListResponseItem) updates) => super.copyWith((message) => updates(message as GetUserRequestListResponseItem));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetUserRequestListResponseItem create() => GetUserRequestListResponseItem._();
  GetUserRequestListResponseItem createEmptyInstance() => create();
  static $pb.PbList<GetUserRequestListResponseItem> createRepeated() => $pb.PbList<GetUserRequestListResponseItem>();
  @$core.pragma('dart2js:noInline')
  static GetUserRequestListResponseItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetUserRequestListResponseItem>(create);
  static GetUserRequestListResponseItem _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get userId => $_getIZ(0);
  @$pb.TagNumber(1)
  set userId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get userName => $_getSZ(1);
  @$pb.TagNumber(2)
  set userName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserName() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserName() => clearField(2);
}

class GetUserRequestListRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetUserRequestListRequest', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..a<$core.int>(1, 'neighborhoodId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  GetUserRequestListRequest._() : super();
  factory GetUserRequestListRequest() => create();
  factory GetUserRequestListRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetUserRequestListRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetUserRequestListRequest clone() => GetUserRequestListRequest()..mergeFromMessage(this);
  GetUserRequestListRequest copyWith(void Function(GetUserRequestListRequest) updates) => super.copyWith((message) => updates(message as GetUserRequestListRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetUserRequestListRequest create() => GetUserRequestListRequest._();
  GetUserRequestListRequest createEmptyInstance() => create();
  static $pb.PbList<GetUserRequestListRequest> createRepeated() => $pb.PbList<GetUserRequestListRequest>();
  @$core.pragma('dart2js:noInline')
  static GetUserRequestListRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetUserRequestListRequest>(create);
  static GetUserRequestListRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get neighborhoodId => $_getIZ(0);
  @$pb.TagNumber(1)
  set neighborhoodId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNeighborhoodId() => $_has(0);
  @$pb.TagNumber(1)
  void clearNeighborhoodId() => clearField(1);
}

class GetUserRequestListResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetUserRequestListResponse', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..pc<GetUserRequestListResponseItem>(1, 'requests', $pb.PbFieldType.PM, subBuilder: GetUserRequestListResponseItem.create)
    ..hasRequiredFields = false
  ;

  GetUserRequestListResponse._() : super();
  factory GetUserRequestListResponse() => create();
  factory GetUserRequestListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetUserRequestListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetUserRequestListResponse clone() => GetUserRequestListResponse()..mergeFromMessage(this);
  GetUserRequestListResponse copyWith(void Function(GetUserRequestListResponse) updates) => super.copyWith((message) => updates(message as GetUserRequestListResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetUserRequestListResponse create() => GetUserRequestListResponse._();
  GetUserRequestListResponse createEmptyInstance() => create();
  static $pb.PbList<GetUserRequestListResponse> createRepeated() => $pb.PbList<GetUserRequestListResponse>();
  @$core.pragma('dart2js:noInline')
  static GetUserRequestListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetUserRequestListResponse>(create);
  static GetUserRequestListResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GetUserRequestListResponseItem> get requests => $_getList(0);
}

class AddItemToUserRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AddItemToUserRequest', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..aOS(1, 'itemName')
    ..hasRequiredFields = false
  ;

  AddItemToUserRequest._() : super();
  factory AddItemToUserRequest() => create();
  factory AddItemToUserRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddItemToUserRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AddItemToUserRequest clone() => AddItemToUserRequest()..mergeFromMessage(this);
  AddItemToUserRequest copyWith(void Function(AddItemToUserRequest) updates) => super.copyWith((message) => updates(message as AddItemToUserRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddItemToUserRequest create() => AddItemToUserRequest._();
  AddItemToUserRequest createEmptyInstance() => create();
  static $pb.PbList<AddItemToUserRequest> createRepeated() => $pb.PbList<AddItemToUserRequest>();
  @$core.pragma('dart2js:noInline')
  static AddItemToUserRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddItemToUserRequest>(create);
  static AddItemToUserRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get itemName => $_getSZ(0);
  @$pb.TagNumber(1)
  set itemName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasItemName() => $_has(0);
  @$pb.TagNumber(1)
  void clearItemName() => clearField(1);
}

class DeleteItemToUserRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeleteItemToUserRequest', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..aOS(1, 'itemName')
    ..hasRequiredFields = false
  ;

  DeleteItemToUserRequest._() : super();
  factory DeleteItemToUserRequest() => create();
  factory DeleteItemToUserRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteItemToUserRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DeleteItemToUserRequest clone() => DeleteItemToUserRequest()..mergeFromMessage(this);
  DeleteItemToUserRequest copyWith(void Function(DeleteItemToUserRequest) updates) => super.copyWith((message) => updates(message as DeleteItemToUserRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteItemToUserRequest create() => DeleteItemToUserRequest._();
  DeleteItemToUserRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteItemToUserRequest> createRepeated() => $pb.PbList<DeleteItemToUserRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteItemToUserRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteItemToUserRequest>(create);
  static DeleteItemToUserRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get itemName => $_getSZ(0);
  @$pb.TagNumber(1)
  set itemName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasItemName() => $_has(0);
  @$pb.TagNumber(1)
  void clearItemName() => clearField(1);
}

class AddItemToUserResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AddItemToUserResponse', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..aOS(1, 'resultCode')
    ..hasRequiredFields = false
  ;

  AddItemToUserResponse._() : super();
  factory AddItemToUserResponse() => create();
  factory AddItemToUserResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddItemToUserResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AddItemToUserResponse clone() => AddItemToUserResponse()..mergeFromMessage(this);
  AddItemToUserResponse copyWith(void Function(AddItemToUserResponse) updates) => super.copyWith((message) => updates(message as AddItemToUserResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddItemToUserResponse create() => AddItemToUserResponse._();
  AddItemToUserResponse createEmptyInstance() => create();
  static $pb.PbList<AddItemToUserResponse> createRepeated() => $pb.PbList<AddItemToUserResponse>();
  @$core.pragma('dart2js:noInline')
  static AddItemToUserResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddItemToUserResponse>(create);
  static AddItemToUserResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get resultCode => $_getSZ(0);
  @$pb.TagNumber(1)
  set resultCode($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResultCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearResultCode() => clearField(1);
}

class DeleteItemToUserResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeleteItemToUserResponse', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..aOS(1, 'resultCode')
    ..hasRequiredFields = false
  ;

  DeleteItemToUserResponse._() : super();
  factory DeleteItemToUserResponse() => create();
  factory DeleteItemToUserResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteItemToUserResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DeleteItemToUserResponse clone() => DeleteItemToUserResponse()..mergeFromMessage(this);
  DeleteItemToUserResponse copyWith(void Function(DeleteItemToUserResponse) updates) => super.copyWith((message) => updates(message as DeleteItemToUserResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteItemToUserResponse create() => DeleteItemToUserResponse._();
  DeleteItemToUserResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteItemToUserResponse> createRepeated() => $pb.PbList<DeleteItemToUserResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteItemToUserResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteItemToUserResponse>(create);
  static DeleteItemToUserResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get resultCode => $_getSZ(0);
  @$pb.TagNumber(1)
  set resultCode($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResultCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearResultCode() => clearField(1);
}

class SearchItemRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SearchItemRequest', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..a<$core.int>(1, 'neighborhoodId', $pb.PbFieldType.O3)
    ..a<$core.int>(2, 'itemId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  SearchItemRequest._() : super();
  factory SearchItemRequest() => create();
  factory SearchItemRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SearchItemRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SearchItemRequest clone() => SearchItemRequest()..mergeFromMessage(this);
  SearchItemRequest copyWith(void Function(SearchItemRequest) updates) => super.copyWith((message) => updates(message as SearchItemRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SearchItemRequest create() => SearchItemRequest._();
  SearchItemRequest createEmptyInstance() => create();
  static $pb.PbList<SearchItemRequest> createRepeated() => $pb.PbList<SearchItemRequest>();
  @$core.pragma('dart2js:noInline')
  static SearchItemRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SearchItemRequest>(create);
  static SearchItemRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get neighborhoodId => $_getIZ(0);
  @$pb.TagNumber(1)
  set neighborhoodId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNeighborhoodId() => $_has(0);
  @$pb.TagNumber(1)
  void clearNeighborhoodId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get itemId => $_getIZ(1);
  @$pb.TagNumber(2)
  set itemId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasItemId() => $_has(1);
  @$pb.TagNumber(2)
  void clearItemId() => clearField(2);
}

class SearchItemResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SearchItemResponse', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..aOS(1, 'resultCode')
    ..p<$core.int>(2, 'userIds', $pb.PbFieldType.P3)
    ..hasRequiredFields = false
  ;

  SearchItemResponse._() : super();
  factory SearchItemResponse() => create();
  factory SearchItemResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SearchItemResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SearchItemResponse clone() => SearchItemResponse()..mergeFromMessage(this);
  SearchItemResponse copyWith(void Function(SearchItemResponse) updates) => super.copyWith((message) => updates(message as SearchItemResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SearchItemResponse create() => SearchItemResponse._();
  SearchItemResponse createEmptyInstance() => create();
  static $pb.PbList<SearchItemResponse> createRepeated() => $pb.PbList<SearchItemResponse>();
  @$core.pragma('dart2js:noInline')
  static SearchItemResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SearchItemResponse>(create);
  static SearchItemResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get resultCode => $_getSZ(0);
  @$pb.TagNumber(1)
  set resultCode($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResultCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearResultCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get userIds => $_getList(1);
}

class AddPostRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AddPostRequest', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..aOM<Post>(1, 'post', subBuilder: Post.create)
    ..hasRequiredFields = false
  ;

  AddPostRequest._() : super();
  factory AddPostRequest() => create();
  factory AddPostRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddPostRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AddPostRequest clone() => AddPostRequest()..mergeFromMessage(this);
  AddPostRequest copyWith(void Function(AddPostRequest) updates) => super.copyWith((message) => updates(message as AddPostRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddPostRequest create() => AddPostRequest._();
  AddPostRequest createEmptyInstance() => create();
  static $pb.PbList<AddPostRequest> createRepeated() => $pb.PbList<AddPostRequest>();
  @$core.pragma('dart2js:noInline')
  static AddPostRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddPostRequest>(create);
  static AddPostRequest _defaultInstance;

  @$pb.TagNumber(1)
  Post get post => $_getN(0);
  @$pb.TagNumber(1)
  set post(Post v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPost() => $_has(0);
  @$pb.TagNumber(1)
  void clearPost() => clearField(1);
  @$pb.TagNumber(1)
  Post ensurePost() => $_ensure(0);
}

class DeletePostRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeletePostRequest', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..a<$core.int>(1, 'postId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  DeletePostRequest._() : super();
  factory DeletePostRequest() => create();
  factory DeletePostRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeletePostRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DeletePostRequest clone() => DeletePostRequest()..mergeFromMessage(this);
  DeletePostRequest copyWith(void Function(DeletePostRequest) updates) => super.copyWith((message) => updates(message as DeletePostRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeletePostRequest create() => DeletePostRequest._();
  DeletePostRequest createEmptyInstance() => create();
  static $pb.PbList<DeletePostRequest> createRepeated() => $pb.PbList<DeletePostRequest>();
  @$core.pragma('dart2js:noInline')
  static DeletePostRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeletePostRequest>(create);
  static DeletePostRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get postId => $_getIZ(0);
  @$pb.TagNumber(1)
  set postId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPostId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPostId() => clearField(1);
}

class GetPostRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetPostRequest', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..a<$core.int>(1, 'postId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  GetPostRequest._() : super();
  factory GetPostRequest() => create();
  factory GetPostRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPostRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetPostRequest clone() => GetPostRequest()..mergeFromMessage(this);
  GetPostRequest copyWith(void Function(GetPostRequest) updates) => super.copyWith((message) => updates(message as GetPostRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetPostRequest create() => GetPostRequest._();
  GetPostRequest createEmptyInstance() => create();
  static $pb.PbList<GetPostRequest> createRepeated() => $pb.PbList<GetPostRequest>();
  @$core.pragma('dart2js:noInline')
  static GetPostRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPostRequest>(create);
  static GetPostRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get postId => $_getIZ(0);
  @$pb.TagNumber(1)
  set postId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPostId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPostId() => clearField(1);
}

class AddPostResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AddPostResponse', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..aOS(1, 'resultCode')
    ..hasRequiredFields = false
  ;

  AddPostResponse._() : super();
  factory AddPostResponse() => create();
  factory AddPostResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddPostResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AddPostResponse clone() => AddPostResponse()..mergeFromMessage(this);
  AddPostResponse copyWith(void Function(AddPostResponse) updates) => super.copyWith((message) => updates(message as AddPostResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddPostResponse create() => AddPostResponse._();
  AddPostResponse createEmptyInstance() => create();
  static $pb.PbList<AddPostResponse> createRepeated() => $pb.PbList<AddPostResponse>();
  @$core.pragma('dart2js:noInline')
  static AddPostResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddPostResponse>(create);
  static AddPostResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get resultCode => $_getSZ(0);
  @$pb.TagNumber(1)
  set resultCode($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResultCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearResultCode() => clearField(1);
}

class DeletePostResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeletePostResponse', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..aOS(1, 'resultCode')
    ..hasRequiredFields = false
  ;

  DeletePostResponse._() : super();
  factory DeletePostResponse() => create();
  factory DeletePostResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeletePostResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DeletePostResponse clone() => DeletePostResponse()..mergeFromMessage(this);
  DeletePostResponse copyWith(void Function(DeletePostResponse) updates) => super.copyWith((message) => updates(message as DeletePostResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeletePostResponse create() => DeletePostResponse._();
  DeletePostResponse createEmptyInstance() => create();
  static $pb.PbList<DeletePostResponse> createRepeated() => $pb.PbList<DeletePostResponse>();
  @$core.pragma('dart2js:noInline')
  static DeletePostResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeletePostResponse>(create);
  static DeletePostResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get resultCode => $_getSZ(0);
  @$pb.TagNumber(1)
  set resultCode($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResultCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearResultCode() => clearField(1);
}

class GetPostResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetPostResponse', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..aOS(1, 'resultCode')
    ..aOM<Post>(2, 'post', subBuilder: Post.create)
    ..hasRequiredFields = false
  ;

  GetPostResponse._() : super();
  factory GetPostResponse() => create();
  factory GetPostResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPostResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetPostResponse clone() => GetPostResponse()..mergeFromMessage(this);
  GetPostResponse copyWith(void Function(GetPostResponse) updates) => super.copyWith((message) => updates(message as GetPostResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetPostResponse create() => GetPostResponse._();
  GetPostResponse createEmptyInstance() => create();
  static $pb.PbList<GetPostResponse> createRepeated() => $pb.PbList<GetPostResponse>();
  @$core.pragma('dart2js:noInline')
  static GetPostResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPostResponse>(create);
  static GetPostResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get resultCode => $_getSZ(0);
  @$pb.TagNumber(1)
  set resultCode($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResultCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearResultCode() => clearField(1);

  @$pb.TagNumber(2)
  Post get post => $_getN(1);
  @$pb.TagNumber(2)
  set post(Post v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPost() => $_has(1);
  @$pb.TagNumber(2)
  void clearPost() => clearField(2);
  @$pb.TagNumber(2)
  Post ensurePost() => $_ensure(1);
}

class AddTaskRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AddTaskRequest', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..aOM<Task>(1, 'task', subBuilder: Task.create)
    ..hasRequiredFields = false
  ;

  AddTaskRequest._() : super();
  factory AddTaskRequest() => create();
  factory AddTaskRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddTaskRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AddTaskRequest clone() => AddTaskRequest()..mergeFromMessage(this);
  AddTaskRequest copyWith(void Function(AddTaskRequest) updates) => super.copyWith((message) => updates(message as AddTaskRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddTaskRequest create() => AddTaskRequest._();
  AddTaskRequest createEmptyInstance() => create();
  static $pb.PbList<AddTaskRequest> createRepeated() => $pb.PbList<AddTaskRequest>();
  @$core.pragma('dart2js:noInline')
  static AddTaskRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddTaskRequest>(create);
  static AddTaskRequest _defaultInstance;

  @$pb.TagNumber(1)
  Task get task => $_getN(0);
  @$pb.TagNumber(1)
  set task(Task v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTask() => $_has(0);
  @$pb.TagNumber(1)
  void clearTask() => clearField(1);
  @$pb.TagNumber(1)
  Task ensureTask() => $_ensure(0);
}

class AddTaskResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AddTaskResponse', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..aOS(1, 'resultCode')
    ..hasRequiredFields = false
  ;

  AddTaskResponse._() : super();
  factory AddTaskResponse() => create();
  factory AddTaskResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddTaskResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AddTaskResponse clone() => AddTaskResponse()..mergeFromMessage(this);
  AddTaskResponse copyWith(void Function(AddTaskResponse) updates) => super.copyWith((message) => updates(message as AddTaskResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddTaskResponse create() => AddTaskResponse._();
  AddTaskResponse createEmptyInstance() => create();
  static $pb.PbList<AddTaskResponse> createRepeated() => $pb.PbList<AddTaskResponse>();
  @$core.pragma('dart2js:noInline')
  static AddTaskResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddTaskResponse>(create);
  static AddTaskResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get resultCode => $_getSZ(0);
  @$pb.TagNumber(1)
  set resultCode($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResultCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearResultCode() => clearField(1);
}

class GetTaskRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetTaskRequest', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..a<$core.int>(1, 'taskId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  GetTaskRequest._() : super();
  factory GetTaskRequest() => create();
  factory GetTaskRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTaskRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetTaskRequest clone() => GetTaskRequest()..mergeFromMessage(this);
  GetTaskRequest copyWith(void Function(GetTaskRequest) updates) => super.copyWith((message) => updates(message as GetTaskRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetTaskRequest create() => GetTaskRequest._();
  GetTaskRequest createEmptyInstance() => create();
  static $pb.PbList<GetTaskRequest> createRepeated() => $pb.PbList<GetTaskRequest>();
  @$core.pragma('dart2js:noInline')
  static GetTaskRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetTaskRequest>(create);
  static GetTaskRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get taskId => $_getIZ(0);
  @$pb.TagNumber(1)
  set taskId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTaskId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTaskId() => clearField(1);
}

class GetTaskResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetTaskResponse', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..aOS(1, 'resultCode')
    ..aOM<Task>(2, 'task', subBuilder: Task.create)
    ..hasRequiredFields = false
  ;

  GetTaskResponse._() : super();
  factory GetTaskResponse() => create();
  factory GetTaskResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTaskResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetTaskResponse clone() => GetTaskResponse()..mergeFromMessage(this);
  GetTaskResponse copyWith(void Function(GetTaskResponse) updates) => super.copyWith((message) => updates(message as GetTaskResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetTaskResponse create() => GetTaskResponse._();
  GetTaskResponse createEmptyInstance() => create();
  static $pb.PbList<GetTaskResponse> createRepeated() => $pb.PbList<GetTaskResponse>();
  @$core.pragma('dart2js:noInline')
  static GetTaskResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetTaskResponse>(create);
  static GetTaskResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get resultCode => $_getSZ(0);
  @$pb.TagNumber(1)
  set resultCode($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResultCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearResultCode() => clearField(1);

  @$pb.TagNumber(2)
  Task get task => $_getN(1);
  @$pb.TagNumber(2)
  set task(Task v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasTask() => $_has(1);
  @$pb.TagNumber(2)
  void clearTask() => clearField(2);
  @$pb.TagNumber(2)
  Task ensureTask() => $_ensure(1);
}

class GetTaskByNeighborhoodRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetTaskByNeighborhoodRequest', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..a<$core.int>(1, 'neighborhoodId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  GetTaskByNeighborhoodRequest._() : super();
  factory GetTaskByNeighborhoodRequest() => create();
  factory GetTaskByNeighborhoodRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTaskByNeighborhoodRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetTaskByNeighborhoodRequest clone() => GetTaskByNeighborhoodRequest()..mergeFromMessage(this);
  GetTaskByNeighborhoodRequest copyWith(void Function(GetTaskByNeighborhoodRequest) updates) => super.copyWith((message) => updates(message as GetTaskByNeighborhoodRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetTaskByNeighborhoodRequest create() => GetTaskByNeighborhoodRequest._();
  GetTaskByNeighborhoodRequest createEmptyInstance() => create();
  static $pb.PbList<GetTaskByNeighborhoodRequest> createRepeated() => $pb.PbList<GetTaskByNeighborhoodRequest>();
  @$core.pragma('dart2js:noInline')
  static GetTaskByNeighborhoodRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetTaskByNeighborhoodRequest>(create);
  static GetTaskByNeighborhoodRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get neighborhoodId => $_getIZ(0);
  @$pb.TagNumber(1)
  set neighborhoodId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNeighborhoodId() => $_has(0);
  @$pb.TagNumber(1)
  void clearNeighborhoodId() => clearField(1);
}

class GetTaskByNeighborhoodResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetTaskByNeighborhoodResponse', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..pc<Task>(1, 'tasks', $pb.PbFieldType.PM, subBuilder: Task.create)
    ..hasRequiredFields = false
  ;

  GetTaskByNeighborhoodResponse._() : super();
  factory GetTaskByNeighborhoodResponse() => create();
  factory GetTaskByNeighborhoodResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTaskByNeighborhoodResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetTaskByNeighborhoodResponse clone() => GetTaskByNeighborhoodResponse()..mergeFromMessage(this);
  GetTaskByNeighborhoodResponse copyWith(void Function(GetTaskByNeighborhoodResponse) updates) => super.copyWith((message) => updates(message as GetTaskByNeighborhoodResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetTaskByNeighborhoodResponse create() => GetTaskByNeighborhoodResponse._();
  GetTaskByNeighborhoodResponse createEmptyInstance() => create();
  static $pb.PbList<GetTaskByNeighborhoodResponse> createRepeated() => $pb.PbList<GetTaskByNeighborhoodResponse>();
  @$core.pragma('dart2js:noInline')
  static GetTaskByNeighborhoodResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetTaskByNeighborhoodResponse>(create);
  static GetTaskByNeighborhoodResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Task> get tasks => $_getList(0);
}

class ChangeTaskStatusRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ChangeTaskStatusRequest', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..a<$core.int>(1, 'taskId', $pb.PbFieldType.O3)
    ..aOS(2, 'status')
    ..hasRequiredFields = false
  ;

  ChangeTaskStatusRequest._() : super();
  factory ChangeTaskStatusRequest() => create();
  factory ChangeTaskStatusRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChangeTaskStatusRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ChangeTaskStatusRequest clone() => ChangeTaskStatusRequest()..mergeFromMessage(this);
  ChangeTaskStatusRequest copyWith(void Function(ChangeTaskStatusRequest) updates) => super.copyWith((message) => updates(message as ChangeTaskStatusRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChangeTaskStatusRequest create() => ChangeTaskStatusRequest._();
  ChangeTaskStatusRequest createEmptyInstance() => create();
  static $pb.PbList<ChangeTaskStatusRequest> createRepeated() => $pb.PbList<ChangeTaskStatusRequest>();
  @$core.pragma('dart2js:noInline')
  static ChangeTaskStatusRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChangeTaskStatusRequest>(create);
  static ChangeTaskStatusRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get taskId => $_getIZ(0);
  @$pb.TagNumber(1)
  set taskId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTaskId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTaskId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get status => $_getSZ(1);
  @$pb.TagNumber(2)
  set status($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => clearField(2);
}

class ChangeTaskStatusResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ChangeTaskStatusResponse', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..aOS(1, 'resultCode')
    ..aOM<Task>(2, 'task', subBuilder: Task.create)
    ..hasRequiredFields = false
  ;

  ChangeTaskStatusResponse._() : super();
  factory ChangeTaskStatusResponse() => create();
  factory ChangeTaskStatusResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChangeTaskStatusResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ChangeTaskStatusResponse clone() => ChangeTaskStatusResponse()..mergeFromMessage(this);
  ChangeTaskStatusResponse copyWith(void Function(ChangeTaskStatusResponse) updates) => super.copyWith((message) => updates(message as ChangeTaskStatusResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChangeTaskStatusResponse create() => ChangeTaskStatusResponse._();
  ChangeTaskStatusResponse createEmptyInstance() => create();
  static $pb.PbList<ChangeTaskStatusResponse> createRepeated() => $pb.PbList<ChangeTaskStatusResponse>();
  @$core.pragma('dart2js:noInline')
  static ChangeTaskStatusResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChangeTaskStatusResponse>(create);
  static ChangeTaskStatusResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get resultCode => $_getSZ(0);
  @$pb.TagNumber(1)
  set resultCode($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResultCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearResultCode() => clearField(1);

  @$pb.TagNumber(2)
  Task get task => $_getN(1);
  @$pb.TagNumber(2)
  set task(Task v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasTask() => $_has(1);
  @$pb.TagNumber(2)
  void clearTask() => clearField(2);
  @$pb.TagNumber(2)
  Task ensureTask() => $_ensure(1);
}

class AddSubTaskRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AddSubTaskRequest', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..aOM<SubTask>(1, 'subTask', subBuilder: SubTask.create)
    ..hasRequiredFields = false
  ;

  AddSubTaskRequest._() : super();
  factory AddSubTaskRequest() => create();
  factory AddSubTaskRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddSubTaskRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AddSubTaskRequest clone() => AddSubTaskRequest()..mergeFromMessage(this);
  AddSubTaskRequest copyWith(void Function(AddSubTaskRequest) updates) => super.copyWith((message) => updates(message as AddSubTaskRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddSubTaskRequest create() => AddSubTaskRequest._();
  AddSubTaskRequest createEmptyInstance() => create();
  static $pb.PbList<AddSubTaskRequest> createRepeated() => $pb.PbList<AddSubTaskRequest>();
  @$core.pragma('dart2js:noInline')
  static AddSubTaskRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddSubTaskRequest>(create);
  static AddSubTaskRequest _defaultInstance;

  @$pb.TagNumber(1)
  SubTask get subTask => $_getN(0);
  @$pb.TagNumber(1)
  set subTask(SubTask v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSubTask() => $_has(0);
  @$pb.TagNumber(1)
  void clearSubTask() => clearField(1);
  @$pb.TagNumber(1)
  SubTask ensureSubTask() => $_ensure(0);
}

class AddSubTaskResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AddSubTaskResponse', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..aOS(1, 'resultCode')
    ..hasRequiredFields = false
  ;

  AddSubTaskResponse._() : super();
  factory AddSubTaskResponse() => create();
  factory AddSubTaskResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddSubTaskResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AddSubTaskResponse clone() => AddSubTaskResponse()..mergeFromMessage(this);
  AddSubTaskResponse copyWith(void Function(AddSubTaskResponse) updates) => super.copyWith((message) => updates(message as AddSubTaskResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddSubTaskResponse create() => AddSubTaskResponse._();
  AddSubTaskResponse createEmptyInstance() => create();
  static $pb.PbList<AddSubTaskResponse> createRepeated() => $pb.PbList<AddSubTaskResponse>();
  @$core.pragma('dart2js:noInline')
  static AddSubTaskResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddSubTaskResponse>(create);
  static AddSubTaskResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get resultCode => $_getSZ(0);
  @$pb.TagNumber(1)
  set resultCode($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResultCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearResultCode() => clearField(1);
}

class getUserTasksRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('getUserTasksRequest', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..a<$core.int>(1, 'userId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  getUserTasksRequest._() : super();
  factory getUserTasksRequest() => create();
  factory getUserTasksRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory getUserTasksRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  getUserTasksRequest clone() => getUserTasksRequest()..mergeFromMessage(this);
  getUserTasksRequest copyWith(void Function(getUserTasksRequest) updates) => super.copyWith((message) => updates(message as getUserTasksRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static getUserTasksRequest create() => getUserTasksRequest._();
  getUserTasksRequest createEmptyInstance() => create();
  static $pb.PbList<getUserTasksRequest> createRepeated() => $pb.PbList<getUserTasksRequest>();
  @$core.pragma('dart2js:noInline')
  static getUserTasksRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<getUserTasksRequest>(create);
  static getUserTasksRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get userId => $_getIZ(0);
  @$pb.TagNumber(1)
  set userId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);
}

class getUserTasksResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('getUserTasksResponse', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..pc<SubTask>(1, 'subTask', $pb.PbFieldType.PM, subBuilder: SubTask.create)
    ..hasRequiredFields = false
  ;

  getUserTasksResponse._() : super();
  factory getUserTasksResponse() => create();
  factory getUserTasksResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory getUserTasksResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  getUserTasksResponse clone() => getUserTasksResponse()..mergeFromMessage(this);
  getUserTasksResponse copyWith(void Function(getUserTasksResponse) updates) => super.copyWith((message) => updates(message as getUserTasksResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static getUserTasksResponse create() => getUserTasksResponse._();
  getUserTasksResponse createEmptyInstance() => create();
  static $pb.PbList<getUserTasksResponse> createRepeated() => $pb.PbList<getUserTasksResponse>();
  @$core.pragma('dart2js:noInline')
  static getUserTasksResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<getUserTasksResponse>(create);
  static getUserTasksResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<SubTask> get subTask => $_getList(0);
}

class ChangeSubTaskStatusRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ChangeSubTaskStatusRequest', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..a<$core.int>(1, 'subTaskId', $pb.PbFieldType.O3)
    ..aOS(2, 'status')
    ..hasRequiredFields = false
  ;

  ChangeSubTaskStatusRequest._() : super();
  factory ChangeSubTaskStatusRequest() => create();
  factory ChangeSubTaskStatusRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChangeSubTaskStatusRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ChangeSubTaskStatusRequest clone() => ChangeSubTaskStatusRequest()..mergeFromMessage(this);
  ChangeSubTaskStatusRequest copyWith(void Function(ChangeSubTaskStatusRequest) updates) => super.copyWith((message) => updates(message as ChangeSubTaskStatusRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChangeSubTaskStatusRequest create() => ChangeSubTaskStatusRequest._();
  ChangeSubTaskStatusRequest createEmptyInstance() => create();
  static $pb.PbList<ChangeSubTaskStatusRequest> createRepeated() => $pb.PbList<ChangeSubTaskStatusRequest>();
  @$core.pragma('dart2js:noInline')
  static ChangeSubTaskStatusRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChangeSubTaskStatusRequest>(create);
  static ChangeSubTaskStatusRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get subTaskId => $_getIZ(0);
  @$pb.TagNumber(1)
  set subTaskId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSubTaskId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSubTaskId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get status => $_getSZ(1);
  @$pb.TagNumber(2)
  set status($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => clearField(2);
}

class ChangeSubTaskStatusResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ChangeSubTaskStatusResponse', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..aOS(1, 'resultCode')
    ..hasRequiredFields = false
  ;

  ChangeSubTaskStatusResponse._() : super();
  factory ChangeSubTaskStatusResponse() => create();
  factory ChangeSubTaskStatusResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChangeSubTaskStatusResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ChangeSubTaskStatusResponse clone() => ChangeSubTaskStatusResponse()..mergeFromMessage(this);
  ChangeSubTaskStatusResponse copyWith(void Function(ChangeSubTaskStatusResponse) updates) => super.copyWith((message) => updates(message as ChangeSubTaskStatusResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChangeSubTaskStatusResponse create() => ChangeSubTaskStatusResponse._();
  ChangeSubTaskStatusResponse createEmptyInstance() => create();
  static $pb.PbList<ChangeSubTaskStatusResponse> createRepeated() => $pb.PbList<ChangeSubTaskStatusResponse>();
  @$core.pragma('dart2js:noInline')
  static ChangeSubTaskStatusResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChangeSubTaskStatusResponse>(create);
  static ChangeSubTaskStatusResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get resultCode => $_getSZ(0);
  @$pb.TagNumber(1)
  set resultCode($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResultCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearResultCode() => clearField(1);
}

class AddCommentRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AddCommentRequest', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..aOM<Comment>(1, 'comment', subBuilder: Comment.create)
    ..hasRequiredFields = false
  ;

  AddCommentRequest._() : super();
  factory AddCommentRequest() => create();
  factory AddCommentRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddCommentRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AddCommentRequest clone() => AddCommentRequest()..mergeFromMessage(this);
  AddCommentRequest copyWith(void Function(AddCommentRequest) updates) => super.copyWith((message) => updates(message as AddCommentRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddCommentRequest create() => AddCommentRequest._();
  AddCommentRequest createEmptyInstance() => create();
  static $pb.PbList<AddCommentRequest> createRepeated() => $pb.PbList<AddCommentRequest>();
  @$core.pragma('dart2js:noInline')
  static AddCommentRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddCommentRequest>(create);
  static AddCommentRequest _defaultInstance;

  @$pb.TagNumber(1)
  Comment get comment => $_getN(0);
  @$pb.TagNumber(1)
  set comment(Comment v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasComment() => $_has(0);
  @$pb.TagNumber(1)
  void clearComment() => clearField(1);
  @$pb.TagNumber(1)
  Comment ensureComment() => $_ensure(0);
}

class AddCommentResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AddCommentResponse', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..aOS(1, 'resultCode')
    ..hasRequiredFields = false
  ;

  AddCommentResponse._() : super();
  factory AddCommentResponse() => create();
  factory AddCommentResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddCommentResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AddCommentResponse clone() => AddCommentResponse()..mergeFromMessage(this);
  AddCommentResponse copyWith(void Function(AddCommentResponse) updates) => super.copyWith((message) => updates(message as AddCommentResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddCommentResponse create() => AddCommentResponse._();
  AddCommentResponse createEmptyInstance() => create();
  static $pb.PbList<AddCommentResponse> createRepeated() => $pb.PbList<AddCommentResponse>();
  @$core.pragma('dart2js:noInline')
  static AddCommentResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddCommentResponse>(create);
  static AddCommentResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get resultCode => $_getSZ(0);
  @$pb.TagNumber(1)
  set resultCode($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResultCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearResultCode() => clearField(1);
}

class AddCarRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AddCarRequest', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..aOM<Car>(1, 'car', subBuilder: Car.create)
    ..hasRequiredFields = false
  ;

  AddCarRequest._() : super();
  factory AddCarRequest() => create();
  factory AddCarRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddCarRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AddCarRequest clone() => AddCarRequest()..mergeFromMessage(this);
  AddCarRequest copyWith(void Function(AddCarRequest) updates) => super.copyWith((message) => updates(message as AddCarRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddCarRequest create() => AddCarRequest._();
  AddCarRequest createEmptyInstance() => create();
  static $pb.PbList<AddCarRequest> createRepeated() => $pb.PbList<AddCarRequest>();
  @$core.pragma('dart2js:noInline')
  static AddCarRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddCarRequest>(create);
  static AddCarRequest _defaultInstance;

  @$pb.TagNumber(1)
  Car get car => $_getN(0);
  @$pb.TagNumber(1)
  set car(Car v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCar() => $_has(0);
  @$pb.TagNumber(1)
  void clearCar() => clearField(1);
  @$pb.TagNumber(1)
  Car ensureCar() => $_ensure(0);
}

class AddCarResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AddCarResponse', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..aOS(1, 'resultCode')
    ..hasRequiredFields = false
  ;

  AddCarResponse._() : super();
  factory AddCarResponse() => create();
  factory AddCarResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddCarResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AddCarResponse clone() => AddCarResponse()..mergeFromMessage(this);
  AddCarResponse copyWith(void Function(AddCarResponse) updates) => super.copyWith((message) => updates(message as AddCarResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddCarResponse create() => AddCarResponse._();
  AddCarResponse createEmptyInstance() => create();
  static $pb.PbList<AddCarResponse> createRepeated() => $pb.PbList<AddCarResponse>();
  @$core.pragma('dart2js:noInline')
  static AddCarResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddCarResponse>(create);
  static AddCarResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get resultCode => $_getSZ(0);
  @$pb.TagNumber(1)
  set resultCode($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResultCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearResultCode() => clearField(1);
}

class GetCarRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetCarRequest', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..a<$core.int>(1, 'userId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  GetCarRequest._() : super();
  factory GetCarRequest() => create();
  factory GetCarRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetCarRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetCarRequest clone() => GetCarRequest()..mergeFromMessage(this);
  GetCarRequest copyWith(void Function(GetCarRequest) updates) => super.copyWith((message) => updates(message as GetCarRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetCarRequest create() => GetCarRequest._();
  GetCarRequest createEmptyInstance() => create();
  static $pb.PbList<GetCarRequest> createRepeated() => $pb.PbList<GetCarRequest>();
  @$core.pragma('dart2js:noInline')
  static GetCarRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetCarRequest>(create);
  static GetCarRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get userId => $_getIZ(0);
  @$pb.TagNumber(1)
  set userId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);
}

class GetCarResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetCarResponse', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..aOS(1, 'resultCode')
    ..pc<Car>(2, 'car', $pb.PbFieldType.PM, subBuilder: Car.create)
    ..hasRequiredFields = false
  ;

  GetCarResponse._() : super();
  factory GetCarResponse() => create();
  factory GetCarResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetCarResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetCarResponse clone() => GetCarResponse()..mergeFromMessage(this);
  GetCarResponse copyWith(void Function(GetCarResponse) updates) => super.copyWith((message) => updates(message as GetCarResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetCarResponse create() => GetCarResponse._();
  GetCarResponse createEmptyInstance() => create();
  static $pb.PbList<GetCarResponse> createRepeated() => $pb.PbList<GetCarResponse>();
  @$core.pragma('dart2js:noInline')
  static GetCarResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetCarResponse>(create);
  static GetCarResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get resultCode => $_getSZ(0);
  @$pb.TagNumber(1)
  set resultCode($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResultCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearResultCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<Car> get car => $_getList(1);
}

class GetContactByCarRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetContactByCarRequest', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..aOM<Car>(1, 'car', subBuilder: Car.create)
    ..hasRequiredFields = false
  ;

  GetContactByCarRequest._() : super();
  factory GetContactByCarRequest() => create();
  factory GetContactByCarRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetContactByCarRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetContactByCarRequest clone() => GetContactByCarRequest()..mergeFromMessage(this);
  GetContactByCarRequest copyWith(void Function(GetContactByCarRequest) updates) => super.copyWith((message) => updates(message as GetContactByCarRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetContactByCarRequest create() => GetContactByCarRequest._();
  GetContactByCarRequest createEmptyInstance() => create();
  static $pb.PbList<GetContactByCarRequest> createRepeated() => $pb.PbList<GetContactByCarRequest>();
  @$core.pragma('dart2js:noInline')
  static GetContactByCarRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetContactByCarRequest>(create);
  static GetContactByCarRequest _defaultInstance;

  @$pb.TagNumber(1)
  Car get car => $_getN(0);
  @$pb.TagNumber(1)
  set car(Car v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCar() => $_has(0);
  @$pb.TagNumber(1)
  void clearCar() => clearField(1);
  @$pb.TagNumber(1)
  Car ensureCar() => $_ensure(0);
}

class GetContactByCarResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetContactByCarResponse', package: const $pb.PackageName('neighborhood.server'), createEmptyInstance: create)
    ..aOS(1, 'phoneNumber')
    ..hasRequiredFields = false
  ;

  GetContactByCarResponse._() : super();
  factory GetContactByCarResponse() => create();
  factory GetContactByCarResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetContactByCarResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetContactByCarResponse clone() => GetContactByCarResponse()..mergeFromMessage(this);
  GetContactByCarResponse copyWith(void Function(GetContactByCarResponse) updates) => super.copyWith((message) => updates(message as GetContactByCarResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetContactByCarResponse create() => GetContactByCarResponse._();
  GetContactByCarResponse createEmptyInstance() => create();
  static $pb.PbList<GetContactByCarResponse> createRepeated() => $pb.PbList<GetContactByCarResponse>();
  @$core.pragma('dart2js:noInline')
  static GetContactByCarResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetContactByCarResponse>(create);
  static GetContactByCarResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get phoneNumber => $_getSZ(0);
  @$pb.TagNumber(1)
  set phoneNumber($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPhoneNumber() => $_has(0);
  @$pb.TagNumber(1)
  void clearPhoneNumber() => clearField(1);
}

