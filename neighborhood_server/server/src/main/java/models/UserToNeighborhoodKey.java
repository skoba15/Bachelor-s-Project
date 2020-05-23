package models;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import java.io.Serializable;
import java.util.Objects;

@Embeddable
public class UserToNeighborhoodKey implements Serializable {

    @Column(name = "USER_ID")
    private Long userId;

    @Column(name = "NEIGHBORHOOD_ID")
    private Long neighborhoodId;

    public UserToNeighborhoodKey() {}

    public UserToNeighborhoodKey(Long userId, Long neighborhoodId) {
        this.userId = userId;
        this.neighborhoodId = neighborhoodId;
    }

    public Long getUserId() {
        return userId;
    }

    public Long getNeighborhoodId() {
        return neighborhoodId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof UserToNeighborhoodKey)) return false;
        UserToNeighborhoodKey that = (UserToNeighborhoodKey) o;
        return userId.equals(that.userId) &&
                neighborhoodId.equals(that.neighborhoodId);
    }

    @Override
    public int hashCode() {
        return Objects.hash(userId, neighborhoodId);
    }
}
