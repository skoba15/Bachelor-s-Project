import 'package:grpc/grpc.dart';

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
      '10.0.2.2',
      port: 8081,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
    );
  }
}