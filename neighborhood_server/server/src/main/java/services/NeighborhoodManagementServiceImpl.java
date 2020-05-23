package services;

import db.JdbcConnection;
import models.*;
import neighborhood.server.NeighborhoodAPI;
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
    public NeighborhoodEntity getNeighborhoodById(Long neighborhoodId) {
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

    public int addUserToNeighborhood(Long userId, Long neighborhoodId, UserRole userRole, UserToNeighborhoodStatus status) {
        Session session = JdbcConnection.getSessionFactory().openSession();
        session.beginTransaction();

        UserService userService = new UserServiceImpl();

        UserEntity user = userService.findUserById(userId);
        NeighborhoodEntity neighborhood = getNeighborhoodById(neighborhoodId);

        if(user == null || neighborhood == null) {
            return -1;
        }

        UserToNeighborhoodEntity utn = new UserToNeighborhoodEntity();
        utn.setUserEntity(user);
        utn.setNeighborhoodEntity(neighborhood);
        utn.setUserRole(userRole);
        utn.setStatus(status);
        utn.setId(new UserToNeighborhoodKey(user.getId(), neighborhood.getId()));

        user.getNeighborhoodsList().add(utn);
        neighborhood.getUsersList().add(utn);

        session.save(utn);
        session.merge(user);
        session.merge(neighborhood);

        session.getTransaction().commit();
        session.close();
        return 0;
    }

    public List<UserEntity> getPendingUsers(Long neighborhoodId) {
        Session session = JdbcConnection.getSessionFactory().openSession();
        session.beginTransaction();

        NeighborhoodEntity neighborhood = getNeighborhoodById(neighborhoodId);
        List<UserEntity> result = new ArrayList<>();

        for(UserToNeighborhoodEntity req : neighborhood.getUsersList()) {
            if(req.getStatus() == UserToNeighborhoodStatus.PENDING) result.add(req.getUserEntity());
        }

        return result;
    }

//    public void processUserRequest(Long userId, Long neighborhoodId, UserToNeighborhoodStatus status) {
//        Session session = JdbcConnection.getSessionFactory().openSession();
//        session.beginTransaction();
//
//    }
}
