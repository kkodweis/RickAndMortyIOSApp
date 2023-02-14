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
    ///   - completion: call back with data or error
    public func execute(_ request: RM_Request, completion: @escaping () -> Void){
        
    }
}
