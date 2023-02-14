//
//  RM_Request.swift
//  RickAndMorty
//
//  Created by Kris Kodweis on 2/13/23.
//

import Foundation


/// object that represents a singlet API call
final class RM_Request {
    
    /// API Constants
    private struct Constants {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    
    /// Desired endpoint
    private let endpoint: RM_EndPoint
    
    
    /// Path components for API, if any
    private let pathComponents: Set<String>
    
    
    /// Query arguements for API, if any
    private let queryParameters: [URLQueryItem]
    // https://rickandmortyapi.com/api/location
    
    
    /// Constructed URL for the API request in string format
    private var urlString: String {
        
        var string = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty {
            pathComponents.forEach({
                string += "/\($0)"
            })
        }
        
        if !queryParameters.isEmpty {
            string += "?"
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else {return nil}
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += argumentString
        }
        
        return string
        
    }
    
    
    /// Computed and constructed API URL
    public var url: URL?{
        return URL(string: urlString)
    }
    
    
    /// Desired http method
    public let httpMethod = "GET"
    
    
    /// Construct Request
    /// - Parameters:
    ///   - endpoint: Target endpoint
    ///   - pathComponents: collection of Path Components
    ///   - queryParameters: Collection of Query Parameters
    public init(
        endpoint: RM_EndPoint,
        pathComponents: Set<String> = [],
        queryParameters: [URLQueryItem] = []) {
            self.endpoint = endpoint
            self.pathComponents = pathComponents
            self.queryParameters = queryParameters
    }
    
    
}
