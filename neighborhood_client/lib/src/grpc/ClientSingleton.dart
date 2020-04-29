import 'package:grpc/grpc.dart';
import 'package:neighborhood_client/src/generated/bachelors.pbgrpc.dart';

class ClientSingleton {
  static final ClientSingleton _clientSingleton = ClientSingleton._internal();


  ClientChannel _channel;

  factory ClientSingleton() {
    return _clientSingleton;
  }

  ClientChannel getChannel() {
    return _channel;
  }

  ClientSingleton._internal() {
    _channel = ClientChannel(
      'localhost',
      port: 8080,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
    );
  }
}