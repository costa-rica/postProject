//
//  PostModel.swift
//  PostsProject
//
//  Created by Nick Rodriguez on 21/03/2023.
//

import UIKit

class PostModel {
    var allPosts = [Post]()
    
    @discardableResult func createPost() -> Post {
        let newPost = Post(random: true)
        newPost.id = unused_id(allPosts)
        newPost.imageName = "pencil"
        allPosts.append(newPost)
        
        return newPost
    }
    
    func removePost(_ post: Post) {
        if let index = allPosts.firstIndex(of: post){
            allPosts.remove(at: index)
        }
    }
    
    init() {
        for _ in 0..<5{
            createPost()
        }
    }
}


var unused_id: ([Post]?) -> Int = { postList in
    //    print("- checkign for post id -")
    var temp_post: Post?
    var temp_id = 0
    if let unwrappedPostList = postList {
//        print(unwrappedPostList)
        if unwrappedPostList.count == 0 {
            return 1
        } else {
            temp_post = unwrappedPostList[0]
            while temp_post != nil {
//                print("- post is not nil - ")
                temp_id += 1
                temp_post = unwrappedPostList.first(where: { post in
                    post.id == temp_id
                })
            }// while loop
            return temp_id
        }// condition postList has at least 1
    }// unwrap
    else {
        return 1
    }
    //    return temp_id
}
