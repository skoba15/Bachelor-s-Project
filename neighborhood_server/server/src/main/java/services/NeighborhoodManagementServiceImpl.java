package services;

import db.JdbcConnection;
import models.NeighborhoodEntity;
import org.hibernate.Session;
import org.hibernate.query.Query;

import java.util.ArrayList;
import java.util.List;

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

    @Override
    public NeighborhoodEntity getNeighborhoodByName(String neighborhoodName) {
        Session session = JdbcConnection.getSessionFactory().openSession();
        session.beginTransaction();
        String hql = "FROM NeighborhoodEntity as n WHERE n.name = :name";
        Query query = session.createQuery(hql);
        query.setParameter("name", neighborhoodName);
        NeighborhoodEntity result;
        try {
            result = (NeighborhoodEntity) query.getSingleResult();
        } catch (Exception e) {
            result = null;
        }
        session.getTransaction().commit();
        session.close();
        return result;
    }

    @Override
    public List<NeighborhoodEntity> getNeighborhoodList() {
        Session session = JdbcConnection.getSessionFactory().openSession();
        session.beginTransaction();
        String hql = "FROM NeighborhoodEntity";
        Query query = session.createQuery(hql);
        List<NeighborhoodEntity> result = query.getResultList();
        session.getTransaction().commit();
        session.close();
        return result;
    }
}
