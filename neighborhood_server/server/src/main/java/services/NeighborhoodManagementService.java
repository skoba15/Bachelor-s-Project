package services;

import models.NeighborhoodEntity;

import java.util.List;

public interface NeighborhoodManagementService {

    Long save(NeighborhoodEntity neighborhoodEntity);

    NeighborhoodEntity getNeighborhoodByName(String neighborhoodName);

    List<NeighborhoodEntity> getNeighborhoodList();
}
