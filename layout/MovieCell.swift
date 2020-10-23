//
//  MovieCell.swift
//  layout
//
//  Created by Paola Pagotto on 23/10/2020.
//  Copyright © 2020 Paola Pagotto. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {
    
    
    @IBOutlet weak var imageMovie: UIImageView!
    @IBOutlet weak var imageDownloadIcon: UIImageView!
    
    @IBOutlet weak var labelMovieTitle: UILabel!
    @IBOutlet weak var labelReviewText: UILabel!
    @IBOutlet weak var labelReviewStars: UILabel!
    @IBOutlet weak var labelMoviePlot: UILabel!
    
    func setup (movie: Movies) {
        imageMovie.image = UIImage (named: movie.image)
        imageDownloadIcon.image = UIImage (named: "nuvem.png")
        labelMovieTitle.text = movie.title
        labelReviewText.text = movie.reviewsNumber
        labelReviewStars.text = movie.reviewsStars
        labelMoviePlot.text = movie.plot
        
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
