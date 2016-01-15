//
//  AboutImageView.swift
//  lecture69-exercise-your-own-favorite-place
//
//  Created by Ryan Huebert on 1/14/16.
//  Copyright © 2016 Ryan Huebert. All rights reserved.
//

import UIKit

class Picture1ImageView: DownloadableImageView {
    override func awakeFromNib() {
        _imageURL = NSURL(string: ("http://www.mthigh.com/site/mountain/photos-and-videos/photos/dailyphotos19/2016-01-08%2008.36.09-3.jpg/featured-media--md"))
        super.awakeFromNib()
    }
}
