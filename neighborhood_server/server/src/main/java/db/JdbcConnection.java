package db;

import com.mysql.cj.*;
import org.hibernate.*;
import org.hibernate.Session;
import org.hibernate.boot.*;
import org.hibernate.boot.registry.*;
import org.hibernate.cfg.*;
import org.hibernate.service.*;

public class JdbcConnection {

    private Session session;
    private SessionFactory sessionFactory;


    private volatile static SessionFactory INSTANCE = null;

    public static SessionFactory getSessionFactory() {
        if (INSTANCE == null) {
            createSessionFactory();
        }
        return INSTANCE;
    }

    private synchronized static void createSessionFactory() {
        if (INSTANCE != null) {
            return;
        }
        Configuration configuration = new Configuration().configure();
        configuration.addAnnotatedClass(models.UserEntity.class);
        configuration.addAnnotatedClass(models.NeighborhoodEntity.class);
        configuration.addAnnotatedClass(models.UserToNeighborhoodKey.class);
        configuration.addAnnotatedClass(models.UserToNeighborhoodEntity.class);
        configuration.addAnnotatedClass(models.ItemEntity.class);
        configuration.addAnnotatedClass(models.CarEntity.class);
        configuration.addAnnotatedClass(models.TaskEntity.class);
        configuration.addAnnotatedClass(models.SubTaskEntity.class);
        configuration.addAnnotatedClass(models.PostEntity.class);
        configuration.addAnnotatedClass(models.CommentEntity.class);
        try {
            ServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder()
                    .applySettings(configuration.getProperties()).build();
            INSTANCE = configuration.buildSessionFactory(serviceRegistry); //            sessionFactory = new MetadataSources(registry).buildMetadata().buildSessionFactory();
        } catch (Exception ex) {
//            StandardServiceRegistryBuilder.destroy(registry);
            System.out.println(ex.getMessage());
        }
    }
}
