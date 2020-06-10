package services;

import db.JdbcConnection;
import models.*;
import org.hibernate.Session;
import org.hibernate.query.Query;

public class PostServiceImpl implements PostService {
    @Override
    public Long addPost(PostEntity post) {
        Session session = JdbcConnection.getSessionFactory().openSession();
        session.beginTransaction();
        Long result = (Long) session.save(post);

        UserEntity creator = post.getCreator();
        creator.getPostsList().add(post);

        NeighborhoodEntity neighborhood = post.getNeighborhood();
        neighborhood.getPostList().add(post);

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
    public PostEntity getPostById(Long postId) {
        Session session = JdbcConnection.getSessionFactory().openSession();
        session.beginTransaction();
        String hql = "FROM PostEntity as t WHERE t.id = :id";
        Query query = session.createQuery(hql);
        query.setParameter("id", postId);
        PostEntity result;
        try {
            result = (PostEntity) query.getSingleResult();
        } catch (Exception e) {
            result = null;
        }
        session.getTransaction().commit();
        session.close();
        return result;
    }

    @Override
    public Long addComment(PostEntity post, CommentEntity comment) {
        Session session = JdbcConnection.getSessionFactory().openSession();
        session.beginTransaction();
        Long result = (Long) session.save(comment);

        UserEntity commentator = comment.getCommentator();
        PostEntity parentPost = comment.getParentPost();

        commentator.getCommentsList().add(comment);
        parentPost.getComments().add(comment);
        session.merge(commentator);
        session.merge(parentPost);

        try {
            session.getTransaction().commit();
        } catch (Exception e) {
            result = null;
        }
        session.close();
        return result;
    }

    @Override
    public CommentEntity getCommentById(Long commentId) {
        Session session = JdbcConnection.getSessionFactory().openSession();
        session.beginTransaction();
        String hql = "FROM CommentEntity as t WHERE t.id = :id";
        Query query = session.createQuery(hql);
        query.setParameter("id", commentId);
        CommentEntity result;
        try {
            result = (CommentEntity) query.getSingleResult();
        } catch (Exception e) {
            result = null;
        }
        session.getTransaction().commit();
        session.close();
        return result;
    }
}
