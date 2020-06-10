package models;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;

@Entity
@Table(name = "NB_POSTS")
public class PostEntity {

    @Id
    @Column(name = "ID")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column(name = "TEXT")
    private String text;

    @Column(name = "CREATE_DATE")
    private Timestamp createDate;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "creator")
    private UserEntity creator;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "neighborhood")
    private NeighborhoodEntity neighborhood;

    @OneToMany(mappedBy = "parentPost", fetch = FetchType.EAGER)
    private Set<CommentEntity> comments = new HashSet<CommentEntity>();

    public PostEntity() {}

    public PostEntity(String text, Timestamp createDate, UserEntity creator) {
        this.text = text;
        this.createDate = createDate;
        this.creator = creator;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public Timestamp getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Timestamp createDate) {
        this.createDate = createDate;
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

    public Set<CommentEntity> getComments() {
        return comments;
    }

    public void setComments(Set<CommentEntity> comments) {
        this.comments = comments;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof PostEntity)) return false;
        PostEntity that = (PostEntity) o;
        return id.equals(that.id);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id);
    }

    @Override
    public String toString() {
        return "PostEntity{" +
                "id=" + id +
                ", text='" + text + '\'' +
                ", createDate=" + createDate +
                ", creator=" + creator +
                ", subTasks=" + comments +
                '}';
    }
}
