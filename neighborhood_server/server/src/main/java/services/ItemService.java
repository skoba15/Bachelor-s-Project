package services;

import models.*;

public interface ItemService {

    String add(Long userId, String itemName);

    ItemEntity findItemByName(String name);

    void remove(Long userId, String itemName);
}
