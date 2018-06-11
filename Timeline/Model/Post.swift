//
//  Post.swift
//  Timeline
//
//  Created by John Hancock on 6/11/18.
//  Copyright © 2018 John Hancock. All rights reserved.
//

import Foundation
import UIKit

class Post {
    
    var photoData: Data?
    var timestamp: Date
    var comment: [Comment] = []
    var photo: UIImage? {
        guard let data = self.photoData else { return nil }
        return UIImage(data: data)
    }
    
    init(photoData: Data?, timestamp: Date = Date(), comment: [Comment] = []) {
        self.photoData = photoData
        self.timestamp = timestamp
        self.comment = comment
        
    }
}
