package services;

import db.*;
import models.*;
import org.hibernate.*;
import org.hibernate.query.Query;

public class CarServiceImpl implements CarService{

    @Override
    public CarEntity getCarByPlateNumber(String plateNumber) {
        Session session = JdbcConnection.getSessionFactory().openSession();
        session.beginTransaction();
        String hql = "FROM CarEntity as c WHERE c.plateNumber = :plateNumber";
        Query query = session.createQuery(hql);
        query.setParameter("plateNumber", plateNumber);
        CarEntity car;
        try {
            car = (CarEntity) query.getSingleResult();
        } catch (Exception e) {
            car = null;
        }
        session.getTransaction().commit();
        session.close();
        return car;
    }
}
