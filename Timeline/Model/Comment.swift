//
//  Comment.swift
//  Timeline
//
//  Created by John Hancock on 6/11/18.
//  Copyright © 2018 John Hancock. All rights reserved.
//

import Foundation

class Comment {
    var text: String
    var timestamp: Date
    var post: Post
    
    init(text: String, timestamp: Date = Date(), post: Post) {
        self.text = text
        self.timestamp = timestamp
        self.post = post
    }
}
