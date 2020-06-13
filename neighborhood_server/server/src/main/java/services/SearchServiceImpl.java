package services;

import db.JdbcConnection;
import models.UserEntity;
import models.UserInfoItem;
import org.hibernate.Session;
import org.hibernate.query.Query;

import java.util.List;

public class SearchServiceImpl implements SearchService {
    @Override
    public UserEntity searchUserByCar(Long neighborhoodId, String plateNumber) {
        return null;
    }

    @Override
    public List<UserInfoItem> searchUsersByItems(Long neighborhoodId, String itemName) {
        Session session = JdbcConnection.getSessionFactory().openSession();
        session.beginTransaction();

        String hql = "SELECT a FROM UserToNeighborhoodEntity a WHERE a.id.neighborhoodId = :neighborhoodId AND a.status = 'ACTIVE' " +
                "AND LOWER(a.userEntity.items.name) like :itemName";
        Query query = session.createQuery(hql);
        query.setParameter("neighborhoodId", neighborhoodId);
        query.setParameter("itemName", "%"+itemName.toLowerCase()+"%");

        List<UserInfoItem> result = query.getResultList();
        session.getTransaction().commit();
        session.close();
        return result;
    }
}
