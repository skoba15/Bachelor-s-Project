package services;

import db.*;
import models.*;
import org.hibernate.*;
import org.hibernate.query.Query;

public class ItemServiceImpl implements ItemService {


    @Override
    public String add(Long userId, String itemName) {
        Session session = JdbcConnection.getSessionFactory().openSession();
        session.beginTransaction();
        ItemEntity itemInContext = findItemByName(itemName);
        ItemEntity item = new ItemEntity(itemName);
        String resultCode = "ok";
        if(itemInContext != null) {
            item = itemInContext;
        }
        else {
            session.save(item);
        }
        UserService service = new UserServiceImpl();
        UserEntity user = service.findUserById(userId);
        if(item.getUsers().contains(user)) {
            resultCode = "alreadyHas";
        }
        item.addUser(user);
        session.merge(user);
        try {
            session.getTransaction().commit();
        } catch (Exception e) {
            resultCode = "failed";
        }
        session.close();
        return resultCode;
    }

    @Override
    public ItemEntity findItemByName(String name) {
        Session session = JdbcConnection.getSessionFactory().openSession();
        session.beginTransaction();
        String hql = "FROM ItemEntity as i WHERE i.name = :name";
        Query query = session.createQuery(hql);
        query.setParameter("name", name);
        ItemEntity item;
        try {
            item = (ItemEntity) query.getSingleResult();
        } catch (Exception e) {
            item = null;
        }
        session.getTransaction().commit();
        session.close();
        return item;
    }

    @Override
    public void remove(Long userId, String itemName) {
        Session session = JdbcConnection.getSessionFactory().openSession();
        session.beginTransaction();
        UserService service = new UserServiceImpl();
        UserEntity user = service.findUserById(userId);
        ItemEntity item = findItemByName(itemName);
        user.getItems().remove(item);
        item.getUsers().remove(user);
        session.merge(user);
        session.merge(item);
        session.getTransaction().commit();
        session.close();
    }
}
