//
//  RM_Service.swift
//  RickAndMorty
//
//  Created by Kris Kodweis on 2/13/23.
//

import Foundation

/// Primary API service object to get Rick and Morty data
final class RM_Service {
    
    
    /// Shared singleton instance
    static let shared = RM_Service()
    
    
    /// privatized constructor
    private init() {}
    
    
    /// Send Rick and Morty API call
    /// - Parameters:
    ///   - request: requet instance
    ///   - Type: The type of object we expect to get back
    ///   - completion: call back with data or error
    public func execute<T: Codable>(
        _ request: RM_Request,
        expecting type: T.Type,
        completion: @escaping (Result<String, Error>) -> Void){
        
    }
}
