package models;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "NB_NEIGHBORHOOD")
public class NeighborhoodEntity {

    @Id
    @Column(name = "ID")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column(name = "NAME", unique = true)
    @NotNull
    private String name;

    @Column(name = "CITY")
    private String city;

    @Column(name = "DISTRICT")
    private String district;

    @Column(name = "ADDRESS")
    private String address;

    @OneToMany(mappedBy = "neighborhoodEntity", fetch = FetchType.EAGER)
    private Set<UserToNeighborhoodEntity> usersList = new HashSet<UserToNeighborhoodEntity>();

    public NeighborhoodEntity() {}

    public NeighborhoodEntity(@NotNull String name, String city, String district, String address) {
        this.name = name;
        this.city = city;
        this.district = district;
        this.address = address;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Set<UserToNeighborhoodEntity> getUsersList() {
        return usersList;
    }

    public void setUsersList(Set<UserToNeighborhoodEntity> usersList) {
        this.usersList = usersList;
    }

    @Override
    public String toString() {
        return "NeighborhoodEntity{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", city='" + city + '\'' +
                ", district='" + district + '\'' +
                ", address='" + address + '\'' +
                '}';
    }
}
