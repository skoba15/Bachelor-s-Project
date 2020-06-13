package services;

import models.UserEntity;
import models.UserInfoItem;

import java.util.List;

public interface SearchService {

    UserEntity searchUserByCar(Long neighborhoodId, String plateNumber);

    List<UserInfoItem> searchUsersByItems(Long neighborhoodId, String itemName);
}
