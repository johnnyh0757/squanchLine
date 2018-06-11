//
//  PostController.swift
//  Timeline
//
//  Created by John Hancock on 6/11/18.
//  Copyright © 2018 John Hancock. All rights reserved.
//

import Foundation
import UIKit

class PostController {
    
    static let shared = PostController()
    
    var posts: [Post] = []
    
    
    @discardableResult func addComment(commentText: String, post: Post, completion: @escaping ((Comment)->Void) = {_ in }) -> Comment {
        let comment = Comment(text: commentText, post: post)
        return comment
    }
    
    func createPostWith(image: UIImage, caption: String, completion: ((Post) -> Void)?) {
        guard let data = UIImageJPEGRepresentation(image, 0.8) else { return }
        let post = Post(photoData: data)
        
        posts.insert(post, at: 0)
        
        let captionComment = addComment(commentText: caption, post: post)
        
    }
    
}
