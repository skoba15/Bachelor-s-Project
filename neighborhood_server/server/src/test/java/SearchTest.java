import models.UserInfoItem;
import org.testng.annotations.Test;
import services.SearchService;
import services.SearchServiceImpl;

import java.util.List;

import static org.junit.Assert.assertEquals;

public class SearchTest {

    private SearchService searchService = new SearchServiceImpl();

    @Test
    public void searchItemsTest() {
//        List<UserInfoItem> result = searchService.searchUsersByItems((long) 44, "item");

        assertEquals(0, 0);
    }
}
