//
//  Movies.swift
//  layout
//
//  Created by Paola Pagotto on 23/10/2020.
//  Copyright © 2020 Paola Pagotto. All rights reserved.
//

import Foundation

class Movies {
    var image: String
    var title: String
    var reviewsNumber: String
    var reviewsStars: String
    var plot: String
    
    init(image:String, title: String, reviewsNumber: String, reviewsStars:String, plot: String){
        self.image = image
        self.title = title
        self.reviewsNumber = reviewsNumber
        self.reviewsStars = reviewsStars
        self.plot = plot
    }
}
