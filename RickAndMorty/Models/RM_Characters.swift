//
//  RM_Characters.swift
//  RickAndMorty
//
//  Created by Kris Kodweis on 2/13/23.
//

import Foundation

struct RM_Character: Codable {

    let id: Int
    let name: String
    let status: RM_CharacterStatus
    let species: String
    let type: String
    let gender: RM_CharacterGender
    let origin: RM_Origin
    let location: RM_SingleLocation
    let image: String
    let episode: [String]
    let url: String
    let created: String
    
}

