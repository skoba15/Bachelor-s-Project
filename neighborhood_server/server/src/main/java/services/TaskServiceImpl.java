package services;

import db.JdbcConnection;
import models.*;
import org.hibernate.Hibernate;
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
            Hibernate.initialize(result.getCreator());
            Hibernate.initialize(result.getNeighborhood());
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
        String hql = "FROM SubTaskEntity as t WHERE t.id = :id";
        Query query = session.createQuery(hql);
        query.setParameter("id", subTaskId);
        SubTaskEntity result;
        try {
            result = (SubTaskEntity) query.getSingleResult();
            Hibernate.initialize(result.getParentTask());
            Hibernate.initialize(result.getAssignee());
        } catch (Exception e) {
            result = null;
        }
        session.getTransaction().commit();
        session.close();
        return result;
    }

    @Override
    public int changeTaskStatus(TaskEntity task, TaskStatus newStatus) {
        Session session = JdbcConnection.getSessionFactory().openSession();
        session.beginTransaction();

        int result = -1;

        if(task != null) {
            UserEntity user = task.getCreator();
            NeighborhoodEntity neighborhood = task.getNeighborhood();

            user.getTasksList().remove(task);
            neighborhood.getTaskList().remove(task);

            task.setStatus(newStatus);
            session.merge(task);

            user.getTasksList().add(task);
            neighborhood.getTaskList().add(task);

            session.merge(user);
            session.merge(neighborhood);

            session.getTransaction().commit();
            result = 0;
        }

        session.close();
        return result;
    }

    @Override
    public int changeSubTaskStatus(SubTaskEntity subTask, TaskStatus newStatus) {
        Session session = JdbcConnection.getSessionFactory().openSession();
        session.beginTransaction();

        int result = -1;

        if(subTask != null) {
            UserEntity assignee = subTask.getAssignee();
            TaskEntity parentTask = subTask.getParentTask();

            assignee.getSubTasksList().remove(subTask);
            parentTask.getSubTasks().remove(subTask);

            subTask.setStatus(newStatus);
            session.merge(subTask);

            assignee.getSubTasksList().add(subTask);
            parentTask.getSubTasks().add(subTask);

            session.merge(assignee);
            session.merge(parentTask);

            session.getTransaction().commit();
            result = 0;
        }

        session.close();
        return result;
    }
}
