//
//  Post.swift
//  PostsProject
//
//  Created by Nick Rodriguez on 21/03/2023.
//

import UIKit

class Post: Equatable {
    var id: Int
    var title: String
    var dateCreated: Date
    var imageName: String?
    
    init( id: Int, title: String, imageName: String? = nil) {
        self.id = id
        self.title = title
        self.dateCreated = Date()
        self.imageName = imageName
    }
    
    convenience init(random: Bool = false) {
        if random {
            self.init(id: 0, title: "NewPost")
        } else {
            self.init(id: 0, title: "NewPostNotRandom")
        }
    }
    
    static func ==(lhs:Post, rhs:Post) -> Bool {
        return lhs.id==rhs.id && lhs.title==rhs.title && lhs.dateCreated==rhs.dateCreated && lhs.imageName==rhs.imageName
    }
    
}
