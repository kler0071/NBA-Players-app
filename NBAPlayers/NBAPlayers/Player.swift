//
//  Player.swift
//  NBAPlayers
//
//  Created by  Admin on 1/26/21.
//

import Foundation

struct Player {
    let firstName: String
    let lastName: String
    let teamName: String
    let position: String
    let height: String
    
    var fullName: String{
        firstName + " " + lastName
    }
}
