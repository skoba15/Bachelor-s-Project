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
        TaskEntity parentTask = subTaskEntity.getParentTask();

        assignee.getSubTasksList().add(subTaskEntity);
        parentTask.getSubTasks().add(subTaskEntity);
        session.merge(assignee);
        session.merge(parentTask);

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
        Session session = JdbcConnection.getSessionFactory().openSession();
        session.beginTransaction();

        int result = -1;
        TaskEntity task = getTaskById(taskId);

        if(task != null) {
            task.setStatus(newStatus);
            session.merge(task);
            session.getTransaction().commit();
            result = 0;
        }

        session.close();
        return result;
    }

    @Override
    public int changeSubTaskStatus(Long subTaskId, TaskStatus newStatus) {
        Session session = JdbcConnection.getSessionFactory().openSession();
        session.beginTransaction();

        int result = -1;
        SubTaskEntity subTask = getSubTaskById(subTaskId);

        if(subTask != null) {
            subTask.setStatus(newStatus);
            session.merge(subTask);
            session.getTransaction().commit();
            result = 0;
        }

        session.close();
        return result;
    }
}
