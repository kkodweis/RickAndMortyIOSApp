//
//  RM_CharacterViewController.swift
//  RickAndMorty
//
//  Created by Kris Kodweis on 2/13/23.
//

import UIKit


/// Controller to show and search for Characters
final class RM_CharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        title = "Characters"
        
        let request = RM_Request(
            endpoint: .character,
            queryParameters: [
                URLQueryItem(name: "name", value: "rick"),
                URLQueryItem(name: "status", value: "alive")
            ]
        )
        //print(request.url)
        
    }
    
}
