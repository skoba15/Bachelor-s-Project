package services;

import db.JdbcConnection;
import models.*;
import org.hibernate.Session;
import org.hibernate.query.Query;

public class TaskServiceImpl implements TaskService {


    @Override
    public Long addTask(TaskEntity taskEntity) {
        Session session = JdbcConnection.getSessionFactory().openSession();
        session.beginTransaction();
        Long result = (Long) session.save(taskEntity);

        UserEntity creator = taskEntity.getCreator();
        creator.getTasksList().add(taskEntity);

        NeighborhoodEntity neighborhood = taskEntity.getNeighborhood();
        neighborhood.getTaskList().add(taskEntity);

        session.merge(creator);
        session.merge(neighborhood);

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

        UserEntity assignee = subTaskEntity.getAssignee();

        assignee.getSubTasksList().add(subTaskEntity);
        session.merge(assignee);

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