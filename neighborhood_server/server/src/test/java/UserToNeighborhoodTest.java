import models.NeighborhoodEntity;
import models.UserEntity;
import org.junit.Test;
import services.NeighborhoodManagementService;
import services.NeighborhoodManagementServiceImpl;
import services.UserService;
import services.UserServiceImpl;

import static org.junit.Assert.*;

import java.sql.Timestamp;
import java.util.Date;

public class UserToNeighborhoodTest {
    @Test
    public void addUserToNeighborhood(){
        UserEntity newUser = new UserEntity("TestUser21", "12345678", "shota", "kobakhidze", "598701543", new Timestamp(new Date().getTime()));
        NeighborhoodEntity newNeighborhood = new NeighborhoodEntity("TestNeighborhood21","Tbilisi", "Dighomi", "Address");

        UserService userService = new UserServiceImpl();
        NeighborhoodManagementService service = new NeighborhoodManagementServiceImpl();

        Long userId = userService.save(newUser);
        Long neigId = service.save(newNeighborhood);
        service.addUserToNeighborhood(userId, neigId, (long)1);

        newUser = userService.findUserByUsername("TestUser21");

        assertEquals(1,newUser.getNeighborhoodsList().size());
    }

    @Test
    public void checkNeighborhoodsByUser() {
        UserService service = new UserServiceImpl();

        UserEntity user = service.findUserByUsername("TestUser17");

        assertEquals(1, user.getNeighborhoodsList().size());
    }
}
