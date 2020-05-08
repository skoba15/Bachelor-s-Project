package jwt;


import io.grpc.*;

import static io.grpc.Metadata.ASCII_STRING_MARSHALLER;

public class Constant {
    static final String JWT_SIGNING_KEY = "SDHSDASBDVWEGE2377GHDQQ--=3912303-2392//1232FDSFSF";

    public static final Metadata.Key<String> JWT_KEY = Metadata.Key.of("jwt", ASCII_STRING_MARSHALLER);
    public static final Context.Key<String> CLIENT_ID_CONTEXT_KEY = Context.key("Id");

}