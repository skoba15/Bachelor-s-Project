package services;

import models.*;

public interface UserService {

    UserEntity findUserByUsername(String username);

    void save(UserEntity entity);
}
