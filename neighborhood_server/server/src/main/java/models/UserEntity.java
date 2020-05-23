package models;

import javax.persistence.*;
import javax.validation.constraints.*;
import javax.validation.constraints.NotNull;
import java.sql.*;
import java.util.HashSet;
import java.util.Set;

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
    private String phoneNumber;

    @Column(name = "REGISTRATION_DATE")
    @NotNull
    private Timestamp registrationDate;

    @OneToMany(mappedBy = "neighborhoodEntity", fetch = FetchType.EAGER)
    private Set<UserToNeighborhoodEntity> neighborhoodsList = new HashSet<UserToNeighborhoodEntity>();


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

    public Set<UserToNeighborhoodEntity> getNeighborhoodsList() {
        return neighborhoodsList;
    }

    public void setNeighborhoodsList(Set<UserToNeighborhoodEntity> neighborhoodsList) {
        this.neighborhoodsList = neighborhoodsList;
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
