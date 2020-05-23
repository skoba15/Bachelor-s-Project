package services;

import models.NeighborhoodEntity;

import java.util.List;

public interface NeighborhoodManagementService {

    Long save(NeighborhoodEntity neighborhoodEntity);

    NeighborhoodEntity getNeighborhoodByName(String neighborhoodName);

    NeighborhoodEntity findNeighborhoodById(Long neighborhoodId);

    List<NeighborhoodEntity> getNeighborhoodList();

    int addUserToNeighborhood(Long userId, Long neighborhoodId, Long userRole);
}
