package services;

import models.*;

import java.util.List;

public interface NeighborhoodManagementService {

    Long save(NeighborhoodEntity neighborhoodEntity);

    NeighborhoodEntity getNeighborhoodByName(String neighborhoodName);

    NeighborhoodEntity getNeighborhoodById(Long neighborhoodId);

    List<NeighborhoodEntity> getNeighborhoodList();

    List<UserToNeighborhoodEntity> getUserRequestListByNeighborhood(Long neighborhoodId);

    UserToNeighborhoodEntity getUserToNeighborhoodEntity(Long userId, Long neighborhoodId);

    int addUserToNeighborhood(Long userId, Long neighborhoodId, UserRole userRole, UserToNeighborhoodStatus status);

    List<UserEntity> getPendingUsers(Long neighborhoodId);

    int processUserRequest(Long userId, Long neighborhoodId, UserToNeighborhoodStatus status);
}
