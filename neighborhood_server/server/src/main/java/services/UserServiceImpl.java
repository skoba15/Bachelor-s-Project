package services;

import db.*;
import models.*;
import org.hibernate.*;
import org.hibernate.query.Query;
import org.hibernate.validator.messageinterpolation.*;

import javax.validation.*;
import java.util.*;


public class UserServiceImpl implements UserService{


    @Override
    public UserEntity findUserByUsername(String username) {
        Session session = JdbcConnection.getSessionFactory().openSession();
        session.beginTransaction();
        String hql = "FROM UserEntity as u WHERE u.userName = :username";
        Query query = session.createQuery(hql);
        query.setParameter("username", username);
        UserEntity user;
        try {
            user = (UserEntity) query.getSingleResult();
        } catch (Exception e) {
            user = null;
        }
        session.getTransaction().commit();
        session.close();
        return user;
    }


    @Override
    public Long save(UserEntity user) {
        Session session = JdbcConnection.getSessionFactory().openSession();
        session.beginTransaction();
        Long result = (Long) session.save(user);
        try {
            session.getTransaction().commit();
        } catch (Exception e) {
            result = null;
        }
        session.close();
        return result;
    }


    @Override
    public UserEntity findUserById(Long id) {
        Session session = JdbcConnection.getSessionFactory().openSession();
        session.beginTransaction();
        String hql = "FROM UserEntity as u WHERE u.id = :id";
        Query query = session.createQuery(hql);
        query.setParameter("id", id);
        UserEntity user;
        try {
            user = (UserEntity) query.getSingleResult();
        } catch (Exception e) {
            user = null;
        }
        session.getTransaction().commit();
        session.close();
        return user;
    }

    @Override
    public String editPhoneNumber(Long id, String phoneNumber) {
        Session session = JdbcConnection.getSessionFactory().openSession();
        session.beginTransaction();
        UserEntity user = findUserById(id);
        user.setPhoneNumber(phoneNumber);
        Validator validator = Validation.byDefaultProvider().configure().messageInterpolator(new ParameterMessageInterpolator()).buildValidatorFactory().getValidator();
        Set<ConstraintViolation<UserEntity>> constraintViolations = validator.validate(user);
        String result = "ok";
        if(constraintViolations.size() > 0)
        {
            result = "malformed";
        }
        else {
            session.merge(user);
            session.getTransaction().commit();
        }
        session.close();
        return result;
    }

    @Override
    public String editCarPlateNUmber(Long id, String plateNumber) {
        Session session = JdbcConnection.getSessionFactory().openSession();
        session.beginTransaction();
        CarService carService = new CarServiceImpl();
        CarEntity car = carService.getCarByPlateNumber(plateNumber);
        UserService userService = new UserServiceImpl();
        UserEntity user =  userService.findUserById(id);
        String result = "ok";
        if(car != null) {
            System.out.println("=================================" + 1);
            UserEntity owner = car.getUser();

            if (owner != null) {
                if (owner.getId() != id) {
                    result = "already owned";
                }
            } else {
                user.setCar(car);
                session.merge(user);
            }
        }
        else {
            CarEntity newCar = new CarEntity(plateNumber);
            Validator validator = Validation.byDefaultProvider().configure().messageInterpolator(new ParameterMessageInterpolator()).buildValidatorFactory().getValidator();
            Set<ConstraintViolation<CarEntity>> constraintViolations = validator.validate(newCar);
            if(constraintViolations.size() > 0) {
                result = "malformed plate number";
            }
            else {
                session.save(newCar);
                user.setCar(newCar);
                session.merge(user);
            }
        }
        session.getTransaction().commit();
        session.close();
        return result;
    }


    private Long getIdByUsername(String username) {
        Session session = JdbcConnection.getSessionFactory().openSession();
        session.beginTransaction();
        String hql = "SELECT u.id FROM UserEntity as u WHERE u.userName = :username";
        Query query = session.createQuery(hql);
        query.setParameter("username", username);
        Long id;
        try {
            id = (Long) query.getSingleResult();
        } catch (Exception e) {
            session.getTransaction().commit();
            session.close();
            return null;
        }
        session.getTransaction().commit();
        session.close();
        return id;
    }

    @Override
    public UserEntity findUserById(Long id) {
        Session session = JdbcConnection.getSessionFactory().openSession();
        session.beginTransaction();
        String hql = "FROM UserEntity as u WHERE u.id = :id";
        Query query = session.createQuery(hql);
        query.setParameter("id", id);
        UserEntity user;
        try {
            user = (UserEntity) query.getSingleResult();
        } catch (Exception e) {
            user = null;
        }
        session.getTransaction().commit();
        session.close();
        return user;
    }
}
