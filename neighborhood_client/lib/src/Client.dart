// Copyright (c) 2018, the gRPC project authors. Please see the AUTHORS file
// for details. All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

/// Dart implementation of the gRPC helloworld.Greeter client.
import 'package:grpc/grpc.dart';


import 'generated/bachelors.pb.dart';
import 'generated/bachelors.pb.dart';
import 'generated/bachelors.pb.dart';
import 'generated/bachelors.pbgrpc.dart';

Future<void> main(List<String> args) async {
  final channel = ClientChannel(
    'localhost',
    port: 8080,
    options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
  );
  final stub = ServiceClient(channel);

  final name = args.isNotEmpty ? args[0] : 'world';


  final RegisterUserRequest registerUserRequest = RegisterUserRequest()..username = "shota";
  final RegisterUserRequest registerUserRequest2 = RegisterUserRequest()..username = "makhvshi";

  try {
    final response = await stub.registerUser(registerUserRequest);
    print(response.resultCode);
    final response2 = await stub.registerUser(registerUserRequest);
    print(response2.resultCode);
    final response3 = await stub.registerUser(registerUserRequest2);
    print(response3.resultCode);
  } catch (e) {
    print('Caught error: $e');
  }
  await channel.shutdown();
}
