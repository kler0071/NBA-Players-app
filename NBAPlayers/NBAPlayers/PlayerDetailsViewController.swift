//
//  PlayerDetailsViewController.swift
//  NBAPlayers
//
//  Created by  Admin on 1/26/21.
//

import UIKit

class PlayerDetailsViewController: UIViewController {

    @IBOutlet weak var positionLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    
    @IBOutlet weak var teamButton: UIButton!
    var player: Player?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = player?.fullName
        navigationController?.navigationBar.prefersLargeTitles = true
        positionLabel.text = player?.position
        heightLabel.text = player?.height
        teamButton.setTitle(player?.teamName, for: .normal)
    }
    @IBAction func onTeamButtonTap(_ sender: Any) {
        //TODO: реализовать переход в карточку команды
    }
}
