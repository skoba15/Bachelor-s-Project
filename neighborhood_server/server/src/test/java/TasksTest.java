import db.JdbcConnection;
import models.TaskEntity;
import models.TaskStatus;
import models.UserEntity;
import org.hibernate.Session;
import org.testng.annotations.Test;
import services.TaskService;
import services.TaskServiceImpl;
import services.UserService;
import services.UserServiceImpl;

import java.sql.Timestamp;
import java.util.Date;

import static org.junit.Assert.assertEquals;

public class TasksTest {

    private UserService userService = new UserServiceImpl();
    private TaskService taskService = new TaskServiceImpl();

    @Test
    public void testAddTask() {
        UserEntity creator = userService.findUserByUsername("shota-koba");
        TaskEntity task = new TaskEntity();
        task.setTitle("New Task 1");
        task.setDescription("Test Add Task");
        task.setStatus(TaskStatus.NEW);
        task.setCreateDate(new Timestamp(new Date().getTime()));
        task.setStartDate(new Timestamp(new Date().getTime()));
        task.setCreator(creator);

        Long result = taskService.addTask(task);

        assertEquals(1, creator.getTasksList().size());
    }
}
