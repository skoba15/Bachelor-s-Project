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

    @Enumerated(EnumType.STRING)
    @Column(name = "USER_ROLE")
    private UserRole userRole;

    @Enumerated(EnumType.STRING)
    @Column(name = "STATUS")
    private UserToNeighborhoodStatus status;

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

    public UserRole getUserRole() {
        return userRole;
    }

    public void setUserRole(UserRole userRole) {
        this.userRole = userRole;
    }

    public UserToNeighborhoodStatus getStatus() {
        return status;
    }

    public void setStatus(UserToNeighborhoodStatus status) {
        this.status = status;
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
