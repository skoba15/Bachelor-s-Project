package services;

import db.JdbcConnection;
import models.SubTaskEntity;
import models.TaskEntity;
import models.TaskStatus;
import org.hibernate.Session;
import org.hibernate.query.Query;

public class TaskServiceImpl implements TaskService {


    @Override
    public Long addTask(TaskEntity taskEntity) {
        Session session = JdbcConnection.getSessionFactory().openSession();
        session.beginTransaction();
        Long result = (Long) session.save(taskEntity);
        try {
            session.getTransaction().commit();
        } catch (Exception e) {
            result = null;
        }
        session.close();
        return result;
    }

    @Override
    public Long addSubTask(SubTaskEntity subTaskEntity) {
        Session session = JdbcConnection.getSessionFactory().openSession();
        session.beginTransaction();
        Long result = (Long) session.save(subTaskEntity);
        try {
            session.getTransaction().commit();
        } catch (Exception e) {
            result = null;
        }
        session.close();
        return result;
    }

    @Override
    public TaskEntity getTaskById(Long taskId) {
        Session session = JdbcConnection.getSessionFactory().openSession();
        session.beginTransaction();
        String hql = "FROM TaskEntity as t WHERE t.id = :id";
        Query query = session.createQuery(hql);
        query.setParameter("id", taskId);
        TaskEntity result;
        try {
            result = (TaskEntity) query.getSingleResult();
        } catch (Exception e) {
            result = null;
        }
        session.getTransaction().commit();
        session.close();
        return result;
    }

    @Override
    public SubTaskEntity getSubTaskById(Long subTaskId) {
        Session session = JdbcConnection.getSessionFactory().openSession();
        session.beginTransaction();
        String hql = "FROM TaskEntity as t WHERE t.id = :id";
        Query query = session.createQuery(hql);
        query.setParameter("id", subTaskId);
        SubTaskEntity result;
        try {
            result = (SubTaskEntity) query.getSingleResult();
        } catch (Exception e) {
            result = null;
        }
        session.getTransaction().commit();
        session.close();
        return result;
    }

    @Override
    public int changeTaskStatus(Long taskId, TaskStatus newStatus) {
        return 0;
    }

    @Override
    public int changeSubTaskStatus(Long subTaskId, TaskStatus newStatus) {
        return 0;
    }
}
