package services;

import db.JdbcConnection;
import models.NeighborhoodEntity;
import models.UserEntity;
import models.UserToNeighborhoodEntity;
import models.UserToNeighborhoodKey;
import org.hibernate.Session;
import org.hibernate.query.Query;

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
    public NeighborhoodEntity findNeighborhoodById(Long neighborhoodId) {
        Session session = JdbcConnection.getSessionFactory().openSession();
        session.beginTransaction();
        String hql = "FROM NeighborhoodEntity as n WHERE n.id = :id";
        Query query = session.createQuery(hql);
        query.setParameter("id", neighborhoodId);
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

    public int addUserToNeighborhood(Long userId, Long neighborhoodId, Long userRole) {
        Session session = JdbcConnection.getSessionFactory().openSession();
        session.beginTransaction();

        UserService userService = new UserServiceImpl();

        UserEntity user = userService.findUserById(userId);
        NeighborhoodEntity neighborhood = findNeighborhoodById(neighborhoodId);

        if(user == null || neighborhood == null) {
            return -1;
        }

        UserToNeighborhoodEntity utn = new UserToNeighborhoodEntity();
        utn.setUserEntity(user);
        utn.setNeighborhoodEntity(neighborhood);
        utn.setUserRole(userRole);
        utn.setId(new UserToNeighborhoodKey(user.getId(), neighborhood.getId()));

        session.save(utn);

        user.getNeighborhoodsList().add(utn);
        neighborhood.getUsersList().add(utn);

        session.getTransaction().commit();
        session.close();
        return 0;
    }
}
