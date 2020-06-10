package services;

import models.CommentEntity;
import models.PostEntity;

public interface PostService {

    Long addPost(PostEntity post);

    PostEntity getPostById(Long postId);

    Long addComment(CommentEntity comment);

    CommentEntity getCommentById(Long commentId);
}
