package services;

import models.SubTaskEntity;
import models.TaskEntity;
import models.TaskStatus;

public interface TaskService {

    Long addTask(TaskEntity taskEntity);

    Long addSubTask(SubTaskEntity subTaskEntity);

    TaskEntity getTaskById(Long taskId);

    SubTaskEntity getSubTaskById(Long subTaskId);

    int changeTaskStatus(Long taskId, TaskStatus newStatus);

    int changeSubTaskStatus(Long subTaskId, TaskStatus newStatus);

}
