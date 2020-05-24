package services;

import models.*;

public interface UserService {

    UserEntity findUserByUsername(String username);

    Long save(UserEntity entity);

    UserEntity findUserById(Long id);

    String editPhoneNumber(Long id, String phoneNumber);

    String editCarPlateNUmber(Long id, String plateNumber);
}
