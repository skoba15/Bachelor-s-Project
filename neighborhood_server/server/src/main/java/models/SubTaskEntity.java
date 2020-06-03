package models;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.util.Objects;

@Entity
@Table(name = "NB_SUB_TASKS")
public class SubTaskEntity {

    @Id
    @Column(name = "ID")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column(name = "TITLE")
    @NotNull
    private String title;

    @Column(name = "DESCRIPTION")
    private String description;

    @Column(name = "STATUS")
    @NotNull
    private TaskStatus status;

    @Column(name = "ASSIGNEE_ID")
    @NotNull
    private Long assigneeId;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "PARENT_TASK")
    private TaskEntity parentTask;

    public SubTaskEntity() {}

    public SubTaskEntity(@NotNull String title, String description, @NotNull TaskStatus status, @NotNull Long assigneeId) {
        this.title = title;
        this.description = description;
        this.status = status;
        this.assigneeId = assigneeId;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public TaskStatus getStatus() {
        return status;
    }

    public void setStatus(TaskStatus status) {
        this.status = status;
    }

    public Long getAssigneeId() {
        return assigneeId;
    }

    public void setAssigneeId(Long assigneeId) {
        this.assigneeId = assigneeId;
    }

    public TaskEntity getParentTask() {
        return parentTask;
    }

    public void setParentTask(TaskEntity parentTask) {
        this.parentTask = parentTask;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof SubTaskEntity)) return false;
        SubTaskEntity that = (SubTaskEntity) o;
        return id.equals(that.id);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id);
    }

    @Override
    public String toString() {
        return "SubTaskEntity{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", description='" + description + '\'' +
                ", status='" + status + '\'' +
                ", assigneeId=" + assigneeId +
                '}';
    }
}
