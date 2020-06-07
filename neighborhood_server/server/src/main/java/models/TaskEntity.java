package models;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Objects;
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
    private TaskStatus status;

    @Column(name = "CREATE_DATE")
    @NotNull
    private Timestamp createDate;

    @Column(name = "START_DATE")
    @NotNull
    private Timestamp startDate;

    @Column(name = "CLOSE_DATE")
    private Timestamp closeDate;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "creator")
    private UserEntity creator;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "neighbrhood")
    private NeighborhoodEntity neighborhood;

    @OneToMany(mappedBy = "parentTask", fetch = FetchType.EAGER)
    private Set<SubTaskEntity> subTasks = new HashSet<>();

    public TaskEntity() {}

    public TaskEntity(@NotNull String title, String description, @NotNull TaskStatus status, @NotNull Timestamp createDate, @NotNull Timestamp startDate, Timestamp closeDate) {
        this.title = title;
        this.description = description;
        this.status = status;
        this.createDate = createDate;
        this.startDate = startDate;
        this.closeDate = closeDate;
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

    public UserEntity getCreator() {
        return creator;
    }

    public void setCreator(UserEntity creator) {
        this.creator = creator;
    }

    public NeighborhoodEntity getNeighborhood() {
        return neighborhood;
    }

    public void setNeighborhood(NeighborhoodEntity neighborhood) {
        this.neighborhood = neighborhood;
    }

    public Set<SubTaskEntity> getSubTasks() {
        return subTasks;
    }

    public void setSubTasks(Set<SubTaskEntity> subTasks) {
        this.subTasks = subTasks;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof TaskEntity)) return false;
        TaskEntity that = (TaskEntity) o;
        return id.equals(that.id);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id);
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
                ", cretor" + creator +
                ", neighborhood" + neighborhood +
                '}';
    }
}
