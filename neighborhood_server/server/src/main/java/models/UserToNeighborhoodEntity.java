package models;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "NB_USER_TO_NEIGHBORHOOD")
public class UserToNeighborhoodEntity {

    @EmbeddedId
    private UserToNeighborhoodKey id;

    @ManyToOne(cascade = CascadeType.ALL)
    @MapsId("USER_ID")
    @JoinColumn(name = "USER_ID")
    private UserEntity userEntity;

    @ManyToOne(cascade = CascadeType.ALL)
    @MapsId("NEIGHBORHOOD_ID")
    @JoinColumn(name = "NEIGHBORHOOD_ID")
    private NeighborhoodEntity neighborhoodEntity;

    @Column(name = "USER_ROLE")
    private Long userRole;


    public UserToNeighborhoodEntity() {}

    public UserToNeighborhoodKey getId() {
        return id;
    }

    public void setId(UserToNeighborhoodKey id) {
        this.id = id;
    }

    public UserEntity getUserEntity() {
        return userEntity;
    }

    public void setUserEntity(UserEntity userEntity) {
        this.userEntity = userEntity;
    }

    public NeighborhoodEntity getNeighborhoodEntity() {
        return neighborhoodEntity;
    }

    public void setNeighborhoodEntity(NeighborhoodEntity neighborhoodEntity) {
        this.neighborhoodEntity = neighborhoodEntity;
    }

    public Long getUserRole() {
        return userRole;
    }

    public void setUserRole(Long userRole) {
        this.userRole = userRole;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof UserToNeighborhoodEntity)) return false;
        UserToNeighborhoodEntity that = (UserToNeighborhoodEntity) o;
        return id.equals(that.id);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id);
    }
}
