//
//  RM_EndPoint.swift
//  RickAndMorty
//
//  Created by Kris Kodweis on 2/13/23.
//

import Foundation


/// Represents unique API endpoint
@frozen enum RM_EndPoint: String {
    
    /// Endpoint to get character info
    case character
    /// Endpoint to get location info
    case location
    /// Endpoint to get episode info
    case episode
}
