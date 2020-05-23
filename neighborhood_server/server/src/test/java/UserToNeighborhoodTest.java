import models.NeighborhoodEntity;
import models.UserEntity;
import org.junit.Test;
import services.NeighborhoodManagementService;
import services.NeighborhoodManagementServiceImpl;
import services.UserService;
import services.UserServiceImpl;

import java.sql.Timestamp;
import java.util.Date;

public class UserToNeighborhoodTest {
    @Test
    public void addUserToNeighborhood(){
        UserEntity newUser = new UserEntity("TestUser12", "12345678", "shota", "kobakhidze", "598701543", new Timestamp(new Date().getTime()));
        NeighborhoodEntity newNeighborhood = new NeighborhoodEntity("TestNeighborhood12","Tbilisi", "Dighomi", "Address");

        UserService userService = new UserServiceImpl();
        NeighborhoodManagementService service = new NeighborhoodManagementServiceImpl();

        Long userId = userService.save(newUser);
        Long neigId = service.save(newNeighborhood);
        service.addUserToNeighborhood(userId, neigId, (long)1);
    }
}
