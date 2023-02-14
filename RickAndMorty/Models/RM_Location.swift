//
//  RM_Location.swift
//  RickAndMorty
//
//  Created by Kris Kodweis on 2/13/23.
//

import Foundation

struct RM_Location: Codable {
    let id: Int
    let name: String
    let type: String
    let dimension: String
    let residents: [String]
    let url: String
    let created: String
}
