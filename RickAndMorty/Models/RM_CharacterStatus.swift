//
//  RM_CharacterStatus.swift
//  RickAndMorty
//
//  Created by Kris Kodweis on 2/13/23.
//

import Foundation

enum RM_CharacterStatus: String, Codable {
    // 'Alive', 'Dead', or 'unknown'
    case alive = "Alive"
    case dead = "Dead"
    case `unknown` = "unknown"
}
