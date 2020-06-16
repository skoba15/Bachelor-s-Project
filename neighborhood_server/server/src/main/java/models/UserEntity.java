package models;

import javax.persistence.*;
import javax.validation.constraints.*;
import javax.validation.constraints.NotNull;
import java.sql.*;
import java.util.*;

@Entity
@Table(name = "NB_USERS")
public class UserEntity {

    @Id
    @Column(name = "ID")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column(name = "USERNAME", unique = true)
    @NotNull
    private String userName;

    @Column(name = "PASSWORD")
    @NotNull
    @Size(min = 8)
    private String password;

    @Column(name = "FIRST_NAME")
    @NotNull
    private String firstName;

    @Column(name = "LAST_NAME")
    @NotNull
    private String lastName;

    @Column(name = "PHONE_NUMBER")
    @NotNull
    @Pattern(regexp = "[\\d]{9}")
    @Size(min = 9, max = 9)
    private String phoneNumber;

    public CarEntity getCar() {
        return car;
    }

    @Column(name = "REGISTRATION_DATE")
    @NotNull
    private Timestamp registrationDate;

    @OneToMany(mappedBy = "userEntity", fetch = FetchType.EAGER)
    private Set<UserToNeighborhoodEntity> neighborhoodsList = new HashSet<UserToNeighborhoodEntity>();

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "car_id", referencedColumnName = "ID")
    private CarEntity car;

    @ManyToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    @JoinTable(
            name = "ITEM_OWNING",
            joinColumns = {@JoinColumn(name = "USER_ID")},
            inverseJoinColumns = {@JoinColumn(name = "ITEM_ID")}
    )
    private Set<ItemEntity> items = new HashSet<>();

    @OneToMany(mappedBy = "assignee", fetch = FetchType.LAZY)
    private Set<SubTaskEntity> subTasksList = new HashSet<SubTaskEntity>();

    @OneToMany(mappedBy = "creator", fetch = FetchType.LAZY)
    private Set<TaskEntity> tasksList = new HashSet<TaskEntity>();

    @OneToMany(mappedBy = "creator", fetch = FetchType.LAZY)
    private Set<PostEntity> postsList = new HashSet<PostEntity>();

    @OneToMany(mappedBy = "commentator", fetch = FetchType.LAZY)
    private Set<CommentEntity> commentsList = new HashSet<CommentEntity>();

    public UserEntity() {}

    public UserEntity(String userName, String password, String firstName, String lastName, String phoneNumber, Timestamp registrationDate) {
        this.userName = userName;
        this.password = password;
        this.firstName = firstName;
        this.lastName = lastName;
        this.phoneNumber = phoneNumber;
        this.registrationDate = registrationDate;
    }

    public Long getId() {
        return id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public Timestamp getRegistrationDate() {
        return registrationDate;
    }

    public void setRegistrationDate(Timestamp registrationDate) {
        this.registrationDate = registrationDate;
    }

    public void setCar(CarEntity car) {
        this.car = car;
    }

    public void setItems(Set<ItemEntity> items) {
        this.items = items;
    }

    public Set<ItemEntity> getItems() {
        return items;
    }

    public Set<UserToNeighborhoodEntity> getNeighborhoodsList() {
        return neighborhoodsList;
    }

    public void setNeighborhoodsList(Set<UserToNeighborhoodEntity> neighborhoodsList) {
        this.neighborhoodsList = neighborhoodsList;
    }

    public Set<SubTaskEntity> getSubTasksList() {
        return subTasksList;
    }

    public void setSubTasksList(Set<SubTaskEntity> subTasksList) {
        this.subTasksList = subTasksList;
    }

    public Set<TaskEntity> getTasksList() {
        return tasksList;
    }

    public void setTasksList(Set<TaskEntity> tasksList) {
        this.tasksList = tasksList;
    }

    public Set<PostEntity> getPostsList() {
        return postsList;
    }

    public void setPostsList(Set<PostEntity> postsList) {
        this.postsList = postsList;
    }

    public Set<CommentEntity> getCommentsList() {
        return commentsList;
    }

    public void setCommentsList(Set<CommentEntity> commentsList) {
        this.commentsList = commentsList;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        UserEntity that = (UserEntity) o;
        return userName.equals(that.userName);
    }

    @Override
    public int hashCode() {
        return Objects.hash(userName);
    }

    @Override
    public String toString() {
        return "UserEntity{" +
                "id=" + id +
                ", userName='" + userName + '\'' +
                ", password='" + password + '\'' +
                ", firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", phoneNumber='" + phoneNumber + '\'' +
                ", registrationDate=" + registrationDate +
                '}';
    }
}
