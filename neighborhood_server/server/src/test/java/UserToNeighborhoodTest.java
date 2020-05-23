import models.NeighborhoodEntity;
import models.UserEntity;
import models.UserRole;
import models.UserToNeighborhoodStatus;
import org.junit.Test;
import services.NeighborhoodManagementService;
import services.NeighborhoodManagementServiceImpl;
import services.UserService;
import services.UserServiceImpl;

import static org.junit.Assert.*;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

public class UserToNeighborhoodTest {

    @Test
    public void checkUserAddition() {

        NeighborhoodManagementService service = new NeighborhoodManagementServiceImpl();
        UserService userService = new UserServiceImpl();

        for(int i = 5; i < 10; i++) {
            UserEntity newUser = new UserEntity(""+i, "12345678", "shota", "kobakhidze", "598701543", new Timestamp(new Date().getTime()));
            Long userId = userService.save(newUser);
            if(i%2==0){
                service.addUserToNeighborhood(userId, (long)44, UserRole.NEIGHBOUR, UserToNeighborhoodStatus.PENDING);
            } else {
                service.addUserToNeighborhood(userId, (long)44, UserRole.NEIGHBOUR, UserToNeighborhoodStatus.ACTIVE);
            }
        }

        List<UserEntity> pendingUsers = service.getPendingUsers((long)44);

        assertEquals(2, pendingUsers.size());
    }

    @Test
    public void checkProcessRequest() {
        NeighborhoodManagementService service = new NeighborhoodManagementServiceImpl();
        service.processUserRequest((long)105, (long)44, UserToNeighborhoodStatus.DECLINED);
        service.processUserRequest((long)107, (long)44, UserToNeighborhoodStatus.ACTIVE);

        List<UserEntity> pendingUsers = service.getPendingUsers((long)44);

        assertEquals(2, pendingUsers.size());
    }
}
