package jwt;
import io.grpc.*;
import io.jsonwebtoken.*;
import org.slf4j.*;

public class JwtServerInterceptor implements ServerInterceptor {

    private final Logger log = LoggerFactory.getLogger(getClass());

    @Override
    public <ReqT, RespT> ServerCall.Listener<ReqT> interceptCall(ServerCall<ReqT, RespT> serverCall, Metadata metadata, ServerCallHandler<ReqT, RespT> serverCallHandler) {
        log.info("{}", metadata.toString());
        String value = metadata.get(Constant.JWT_KEY);
        if(value == null) {
            return Contexts.interceptCall(Context.current(), serverCall, metadata, serverCallHandler);
        }
        else {
            Jws<Claims> claims = JwtUtil.decodeJWT(value);
            if (claims != null) {
                Context ctx = Context.current().withValue(Constant.CLIENT_ID_CONTEXT_KEY, claims.getBody().getSubject());
                return Contexts.interceptCall(ctx, serverCall, metadata, serverCallHandler);
            }
            else{
                serverCall.close(Status.UNAUTHENTICATED, new Metadata());
                return new ServerCall.Listener<ReqT>() {};
            }
        }
    }
}
