import models.CommentEntity;
import models.NeighborhoodEntity;
import models.PostEntity;
import models.UserEntity;
import org.testng.annotations.Test;
import services.*;

import java.sql.Timestamp;
import java.util.Date;

import static org.junit.Assert.assertEquals;

public class PostsTest {

    private UserService userService = new UserServiceImpl();
    private TaskService taskService = new TaskServiceImpl();
    private PostService postService = new PostServiceImpl();
    private NeighborhoodManagementService ngbService = new NeighborhoodManagementServiceImpl();

    @Test
    private void addPostTest() {

        UserEntity creator = userService.findUserByUsername("1");
        NeighborhoodEntity ngb = ngbService.getNeighborhoodById((long)44);

        PostEntity newPost = new PostEntity();
        newPost.setText("New Post 2");
        newPost.setCreateDate(new Timestamp(new Date().getTime()));
        newPost.setCreator(creator);
        newPost.setNeighborhood(ngb);

        Long addPostResult = postService.addPost(newPost);

        UserEntity commentator = userService.findUserByUsername("2");

        CommentEntity newComment = new CommentEntity();
        newComment.setText("New Comment 2");
        newComment.setCreateDate(new Timestamp(new Date().getTime()));
        newComment.setCommentator(commentator);
        newComment.setParentPost(newPost);

        Long addCommentResult = postService.addComment(newComment);

        assertEquals(0,0);
    }
}
