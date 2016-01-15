//
//  FullScreenImage.swift
//  lecture69-exercise-your-own-favorite-place
//
//  Created by Ryan Huebert on 1/13/16.
//  Copyright © 2016 Ryan Huebert. All rights reserved.
//

import UIKit


class FullScreenImageView: DownloadableImageView {
    override func awakeFromNib() {
        _imageURL = NSURL(string: ("https://upload.wikimedia.org/wikipedia/commons/thumb/c/c2/Mountain_High.jpg/1280px-Mountain_High.jpg"))
        super.awakeFromNib()
    }
}
