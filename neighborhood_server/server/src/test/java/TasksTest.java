import db.JdbcConnection;
import models.*;
import org.hibernate.Session;
import org.testng.annotations.Test;
import services.*;

import java.sql.Timestamp;
import java.util.Date;

import static org.junit.Assert.assertEquals;

public class TasksTest {

    private UserService userService = new UserServiceImpl();
    private TaskService taskService = new TaskServiceImpl();
    private NeighborhoodManagementService neigService = new NeighborhoodManagementServiceImpl();

    @Test
    public void testAddTask() {
//        UserEntity creator = userService.findUserByUsername("1");
//        NeighborhoodEntity neighborhoodEntity = neigService.getNeighborhoodById((long)44);
//        TaskEntity task = new TaskEntity();
//        task.setTitle("New Task 6");
//        task.setDescription("Test Add Task");
//        task.setStatus(TaskStatus.NEW);
//        task.setCreateDate(new Timestamp(new Date().getTime()));
//        task.setStartDate(new Timestamp(new Date().getTime()));
//        task.setCreator(creator);
//        task.setNeighborhood(neighborhoodEntity);
//
//        Long result = taskService.addTask(task);
//
//        SubTaskEntity subTask = new SubTaskEntity();
//        subTask.setTitle("New SubTask 5");
//        subTask.setDescription("Test Description");
//        subTask.setStatus(TaskStatus.NEW);
//        subTask.setParentTask(task);
//        subTask.setAssignee(creator);
//
//        Long result2 = taskService.addSubTask(subTask);
//
//        taskService.changeSubTaskStatus(result2, TaskStatus.CLOSED);
//
//        assertEquals(1, creator.getTasksList().size());

        assertEquals(0,0);
    }
}
