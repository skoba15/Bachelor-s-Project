package models;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Objects;

@Entity
@Table(name = "NB_COMMENTS")
public class CommentEntity {

    @Id
    @Column(name = "ID")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column(name = "TEXT")
    private String text;

    @Column(name = "CREATE_DATE")
    private Timestamp createDate;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "PARENT_POST")
    private PostEntity parentPost;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "COMMENTATOR")
    private UserEntity commentator;

    public CommentEntity() {}

    public CommentEntity(String text, Timestamp createDate, PostEntity parentPost, UserEntity commentator) {
        this.text = text;
        this.createDate = createDate;
        this.parentPost = parentPost;
        this.commentator = commentator;
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

    public PostEntity getParentPost() {
        return parentPost;
    }

    public void setParentPost(PostEntity parentPost) {
        this.parentPost = parentPost;
    }

    public UserEntity getCommentator() {
        return commentator;
    }

    public void setCommentator(UserEntity commentator) {
        this.commentator = commentator;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof CommentEntity)) return false;
        CommentEntity that = (CommentEntity) o;
        return id.equals(that.id);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id);
    }

    @Override
    public String toString() {
        return "CommentEntity{" +
                "id=" + id +
                ", text='" + text + '\'' +
                ", createDate=" + createDate +
                ", parentPost=" + parentPost +
                ", commentator=" + commentator +
                '}';
    }
}
