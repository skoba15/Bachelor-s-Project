package models;

import java.util.HashMap;
import java.util.Map;

public enum TaskStatus {
    NEW(0),
    IN_PROGRESS(1),
    CLOSED(2);

    private int value;
    private static Map map = new HashMap<>();

    private TaskStatus(int value) {
        this.value = value;
    }

    static {
        for(TaskStatus taskStatus : TaskStatus.values()) {
            map.put(taskStatus.value, taskStatus);
        }
    }

    public static TaskStatus valueOf(int taskStatus) {
        return (TaskStatus) map.get(taskStatus);
    }

    public int getValue() {
        return value;
    }
}
