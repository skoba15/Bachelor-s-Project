
import db.*;
import io.grpc.*;
import jwt.*;
import models.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import services.*;

import java.io.IOException;


public final class NeighborhoodServer {
    private final Logger log = LoggerFactory.getLogger(getClass());
    private final int port;
    private final Server server;

    public NeighborhoodServer(int port) {
        this.port = port;
        this.server = ServerBuilder.forPort(port).
                 addService(new NeighborhoodServiceImpl()).intercept(new JwtServerInterceptor())
                .build();
    }

    public void start() throws IOException {
        server.start();
        log.info("Server started, listening on {}", port);

        Runtime.getRuntime().addShutdownHook(new Thread() {

            @Override
            public void run() {
                // Use stderr here since the logger may has been reset by its JVM shutdown hook.
                System.err.println("Shutting down gRPC server since JVM is shutting down");
                NeighborhoodServer.this.stop();
                System.err.println("Server shut down");
            }
        });
    }

    public void stop() {
        if (server != null) {
            server.shutdown();
        }
    }

    private void blockUntilShutdown() throws InterruptedException {
        if (server != null) {
            server.awaitTermination();
        }
    }

    public static void main(String[] args) throws Exception {
        NeighborhoodServer server = new NeighborhoodServer(8081);
        server.start();
        JdbcConnection conn = new JdbcConnection();

//        UserService service = new UserServiceImpl();
//        UserEntity user = new UserEntity("shota4", null, null, null, null, null);
//        service.save(user);
//        user.setFirstName("shota5");
//        service.save(user);

        NeighborhoodManagementService service = new NeighborhoodManagementServiceImpl();
        NeighborhoodEntity n = new NeighborhoodEntity("N1","Tbilisi", "Dighomi", "Address");
        service.save(n);
        server.blockUntilShutdown();
    }
}