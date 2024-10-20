package com.AIWoodWorks.backend.service;

import org.springframework.stereotype.Service;
import com.AIWoodWorks.backend.model.Post;
import com.AIWoodWorks.backend.repository.PostRepository;

@Service
public class PostService {

    private final PostRepository postRepository;

    public PostService(PostRepository postRepository) {
        this.postRepository = postRepository;
    }

    public void createPost(Post post) {
        postRepository.save(post);
    }

    public Post getPostById(Long postId) {
        return postRepository.findById(postId);
    }
}
