//
//  DetailViewController.swift
//  FlixsterApp
//
//  Created by Samyutha Potharaju on 1/26/23.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {
    
    @IBOutlet weak var movieDetailImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var votesAverageLabel: UILabel!
    @IBOutlet weak var numVotesLabel: UILabel!
    @IBOutlet weak var popularityLabel: UILabel!
    
    @IBOutlet weak var overviewLabel: UILabel!
    
    // A property to store the movie object.
    // We can set this property by passing along the track object associated with the track the user tapped in the table view.
    var movie: Movie!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Load the image URL and set it on the image view.
        let url = Movie.posterBaseURLString + movie.backdrop_path
        Nuke.loadImage(with: URL(string: url)!, into: movieDetailImage)
        // Set labels with the associated movie values.
        titleLabel.text = movie.original_title
        votesAverageLabel.text = String(movie.vote_average) + " Vote Average"
        numVotesLabel.text = String(movie.vote_count) + " Votes"
        popularityLabel.text = String(movie.popularity) + " Popularity"
        overviewLabel.text = movie.overview
    }



}
