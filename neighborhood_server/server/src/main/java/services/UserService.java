package services;

import models.*;

public interface UserService {

    UserEntity findUserByUsername(String username);

    Long save(UserEntity entity);

    UserEntity findUserById(Long id);
}
