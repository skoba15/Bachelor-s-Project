package services;

import db.JdbcConnection;
import models.NeighborhoodEntity;
import org.hibernate.Session;

public class NeighborhoodManagementServiceImpl implements NeighborhoodManagementService {
    @Override
    public Long save(NeighborhoodEntity neighborhoodEntity) {
        Session session = JdbcConnection.getSessionFactory().openSession();
        session.beginTransaction();
        Long result = (Long) session.save(neighborhoodEntity);
        try {
            session.getTransaction().commit();
        } catch (Exception e) {
            result = null;
        }
        session.close();
        return result;
    }
}
