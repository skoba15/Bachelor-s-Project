package services;

import models.NeighborhoodEntity;
import models.UserEntity;
import models.UserRole;
import models.UserToNeighborhoodStatus;

import java.util.List;

public interface NeighborhoodManagementService {

    Long save(NeighborhoodEntity neighborhoodEntity);

    NeighborhoodEntity getNeighborhoodByName(String neighborhoodName);

    NeighborhoodEntity getNeighborhoodById(Long neighborhoodId);

    List<NeighborhoodEntity> getNeighborhoodList();

    int addUserToNeighborhood(Long userId, Long neighborhoodId, UserRole userRole, UserToNeighborhoodStatus status);

    List<UserEntity> getPendingUsers(Long neighborhoodId);
}
