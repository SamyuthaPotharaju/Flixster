//
//  MovieCell.swift
//  FlixsterApp
//
//  Created by Samyutha Potharaju on 1/26/23.
//

import UIKit
import Nuke

class MovieCell: UITableViewCell {

    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var movieOverviewLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    // Configure the cell's UI for the given movie
    func configure(with movie: Movie) {
        movieTitleLabel.text = movie.original_title
        movieOverviewLabel.text = movie.overview

        // Load image async via Nuke library image loading helper method
        let url = Movie.posterBaseURLString + movie.poster_path
        //print (url)
        //Nuke.loadImage(with: title as! ImageRequestConvertible, into: movieImageView)
        Nuke.loadImage(with: URL(string: url)!, into: movieImageView)
    }
}
