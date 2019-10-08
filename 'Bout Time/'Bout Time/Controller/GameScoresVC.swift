//
//  GameScoresVC.swift
//  'Bout Time
//
//  Created by Raymond Choy on 10/8/19.
//  Copyright © 2019 thechoygroup. All rights reserved.
//




import UIKit

class GameScoresVC: UIViewController {

    
// Connected IB Outlets
    
    @IBOutlet weak var scoresLabel: UILabel!
    
    var game: BoutTimeGame?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let game = game {
            scoresLabel.text = "\(game.playerScore)/\(game.roundsPerGame)"
        }
    }
    
    
    // Helps achieve a status bar with white content
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
}

    
// Connected IB Functions
    
    @IBAction func playAgainButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "gamePlayVCSegue", sender: self)
    }

}
