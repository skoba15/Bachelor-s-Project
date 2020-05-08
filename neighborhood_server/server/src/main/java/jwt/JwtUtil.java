package jwt;

import io.jsonwebtoken.*;


public class JwtUtil {


    private static JwtParser parser = Jwts.parser().setSigningKey(Constant.JWT_SIGNING_KEY);

    public static String createJWT(String subject) {

        String jwt = Jwts.builder().setSubject(subject)
                        .signWith(SignatureAlgorithm.HS256, Constant.JWT_SIGNING_KEY)
                        .compact();
        return jwt;
    }


    public static Jws<Claims> decodeJWT(String jwt) {
        //This line will throw an exception if it is not a signed JWS (as expected)
        try {
            Jws<Claims> claims = parser.parseClaimsJws(jwt);
            return claims;
        } catch (JwtException e) {
            return null;
        }
    }

}
