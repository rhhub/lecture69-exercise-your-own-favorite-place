//
//  DownloadableImageView.swift
//  lecture69-exercise-your-own-favorite-place
//
//  Created by Ryan Huebert on 1/14/16.
//  Copyright © 2016 Ryan Huebert. All rights reserved.
//

import UIKit
import SDWebImage

class DownloadableImageView: UIImageView {

    var _imageURL: NSURL? = NSURL() //Example: NSURL(string: ("https://upload.wikimedia.org/wikipedia/commons/thumb/c/c2/Mountain_High.jpg/1280px-Mountain_High.jpg"))
    
    override func awakeFromNib() {
        super.awakeFromNib()
        contentMode = .ScaleAspectFill
        clipsToBounds = true
        downloadImage()
    }
    
    private func downloadImage() {
        if let url = _imageURL {
            sd_setImageWithURL(url) { (image, error, cacheType, imageURL) -> Void in
                print(cacheType.rawValue)
                if let image = image {
                    self.image = image
                } else {
                    print(error.description)
                }
            }
        } else {
            print("NSURL unavailable")
        }
    }
}
