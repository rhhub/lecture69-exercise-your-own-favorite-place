//
//  AboutImageView.swift
//  lecture69-exercise-your-own-favorite-place
//
//  Created by Ryan Huebert on 1/14/16.
//  Copyright © 2016 Ryan Huebert. All rights reserved.
//

import UIKit

class AboutImageView: DownloadableImageView {
    override func awakeFromNib() {
        _imageURL = NSURL(string: ("https://upload.wikimedia.org/wikipedia/commons/thumb/7/70/Mountain_High_resort.jpg/2880px-Mountain_High_resort.jpg"))
        super.awakeFromNib()
    }
}
