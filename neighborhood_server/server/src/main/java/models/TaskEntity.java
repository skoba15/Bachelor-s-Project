package models;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "NB_TASKS")
public class TaskEntity {

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
    private String status;

    @Column(name = "CREATE_DATE")
    @NotNull
    private Timestamp createDate;

    @Column(name = "START_DATE")
    @NotNull
    private Timestamp startDate;

    @Column(name = "CLOSE_DATE")
    private Timestamp closeDate;

    @Column(name = "CREATOR_ID")
    @NotNull
    private Long creatorId;

    @OneToMany(mappedBy = "parentTask", fetch = FetchType.EAGER)
    private Set<SubTaskEntity> subTasks = new HashSet<>();

    public TaskEntity() {}

    public TaskEntity(@NotNull String title, String description, @NotNull String status, @NotNull Timestamp createDate, @NotNull Timestamp startDate, Timestamp closeDate, @NotNull Long creatorId) {
        this.title = title;
        this.description = description;
        this.status = status;
        this.createDate = createDate;
        this.startDate = startDate;
        this.closeDate = closeDate;
        this.creatorId = creatorId;
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

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Timestamp getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Timestamp createDate) {
        this.createDate = createDate;
    }

    public Timestamp getStartDate() {
        return startDate;
    }

    public void setStartDate(Timestamp startDate) {
        this.startDate = startDate;
    }

    public Timestamp getCloseDate() {
        return closeDate;
    }

    public void setCloseDate(Timestamp closeDate) {
        this.closeDate = closeDate;
    }

    public Long getCreatorId() {
        return creatorId;
    }

    public void setCreatorId(Long creatorId) {
        this.creatorId = creatorId;
    }

    public Set<SubTaskEntity> getSubTasks() {
        return subTasks;
    }

    public void setSubTasks(Set<SubTaskEntity> subTasks) {
        this.subTasks = subTasks;
    }

    @Override
    public String toString() {
        return "TaskEntity{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", description='" + description + '\'' +
                ", status='" + status + '\'' +
                ", createDate=" + createDate +
                ", startDate=" + startDate +
                ", closeDate=" + closeDate +
                ", creatorId=" + creatorId +
                '}';
    }
}
