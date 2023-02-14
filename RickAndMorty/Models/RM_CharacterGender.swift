//
//  RM_CharacterGender.swift
//  RickAndMorty
//
//  Created by Kris Kodweis on 2/13/23.
//

import Foundation

enum RM_CharacterGender: String, Codable {
    // 'Alive', 'Dead', or 'unknown'
    case male = "Male"
    case female = "Female"
    case genderless = "Genderless"
    case `unknown` = "unknown"
}
