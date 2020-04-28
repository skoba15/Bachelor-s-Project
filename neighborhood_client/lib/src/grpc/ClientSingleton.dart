import 'package:grpc/grpc.dart';
import 'package:neighborhood_client/src/generated/bachelors.pbgrpc.dart';

class ClientSingleton {
  static final ClientSingleton _clientSingleton = ClientSingleton._internal();


  ClientChannel channel;

  factory ClientSingleton() {
    return _clientSingleton;
  }

  ClientChannel getChannel() {
    return channel;
  }

  ClientSingleton._internal() {
    channel = ClientChannel(
      'localhost',
      port: 8080,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
    );
  }
}