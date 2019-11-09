//
//  Place.swift
//  9Nov-iosSchool
//
//  Created by Sandra Herrera on 11/9/19.
//  Copyright © 2019 Sandra Herrera. All rights reserved.
//

import Foundation
import UIKit

class Place {
    var name = ""
    var type = ""
    var location = ""
    var image : UIImage!
    
    init(name: String, type: String, location:String, image: UIImage) {
        self.name = name
        self.type = type
        self.location = location
        self.image = image
    }
}
