//
//  PlayersViewController.swift
//  NBAPlayers
//
//  Created by  Admin on 1/26/21.
//

import UIKit

class PlayersViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let players: [Player] = [
        Player(
            firstName: "LeBron",
            lastName: "James",
            teamName: "LA Lakers",
            position: "SF",
            height: "6'10''"
        ),
        Player(
            firstName: "Anthony",
            lastName: "Davis",
            teamName: "LA Lakers",
            position: "PF",
            height: "6'11''"
        ),
        Player(
            firstName: "Jimmy",
            lastName: "Buttler",
            teamName: "Miami Heat",
            position: "SG",
            height: "6'8''"
        )
    ]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Players"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return players.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlayerCell", for: indexPath)
        
        let player = players[indexPath.row]
        
        cell.textLabel?.text = player.fullName
        
        cell.detailTextLabel?.text = player.teamName
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        let viewController = storyboard.instantiateViewController(identifier: "PlayerDetailsViewController") as PlayerDetailsViewController
        
        let player = players[indexPath.row]
        viewController.player = player
        
        navigationController?.pushViewController(viewController, animated: true)
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
