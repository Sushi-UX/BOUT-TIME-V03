//
//  GameScoresVC.swift
//  'Bout Time
//
//  Created by Raymond Choy on 10/8/19.
//  Copyright © 2019 thechoygroup. All rights reserved.
//

import UIKit

class GameScoresVC: UIViewController {

//MARK: - IB Outlets
    @IBOutlet weak var scoresLabel: UILabel!
    
    var game: BoutTimeGame?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let game = game {
            scoresLabel.text = "\(game.playerScore)/\(game.roundsPerGame)"
        }
    }
    
    // To achieve a status bar with white content
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
}


}
