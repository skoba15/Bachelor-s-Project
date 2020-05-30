import models.*;
import org.testng.annotations.*;

import javax.validation.*;
import java.sql.*;
import java.util.*;
import java.util.Date;

import static org.junit.Assert.assertEquals;

public class ItemOwningTest {

    private static Validator validator;

    @BeforeClass
    public static void Setup() {
        ValidatorFactory factory = Validation.buildDefaultValidatorFactory();
        validator = factory.getValidator();
    }

    @Test
    public void ItemAdded() {
        UserEntity user = new UserEntity("shota", "12345678", "shota", "kobakhidze", "598701543", new Timestamp(new java.util.Date().getTime()));
        ItemEntity item = new ItemEntity("Hammer");
        item.addUser(user);
        assertEquals(user.getItems().contains(item), true);
    }


    @Test
    public void ManyItemsAdded() {
        UserEntity user = new UserEntity("shota", "12345678", "shota", "kobakhidze", "598701543", new Timestamp(new java.util.Date().getTime()));
        ItemEntity item = new ItemEntity("Hammer");
        ItemEntity item1 = new ItemEntity("Charger");
        ItemEntity item2 = new ItemEntity("Book");
        ItemEntity item3 = new ItemEntity("Book");
        item.addUser(user);
        item1.addUser(user);
        item2.addUser(user);
        item3.addUser(user);
        assertEquals(user.getItems().size(), 3);
    }

}
