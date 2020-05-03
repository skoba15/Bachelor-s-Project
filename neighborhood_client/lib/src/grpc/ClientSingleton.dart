import 'package:grpc/grpc.dart';
import 'package:grpc/grpc_web.dart';
import 'package:neighborhood_client/src/generated/bachelors.pbgrpc.dart';

class ClientSingleton {
  static final ClientSingleton _clientSingleton = ClientSingleton._internal();


  GrpcWebClientChannel _channel;

  factory ClientSingleton() {
    return _clientSingleton;
  }

  GrpcWebClientChannel getChannel() {
    return _channel;
  }

  ClientSingleton._internal() {
    _channel = GrpcWebClientChannel.xhr(Uri.parse('http://localhost:8080'));
  }
}