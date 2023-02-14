//
//  ViewController.swift
//  RickAndMorty
//
//  Created by Kris Kodweis on 2/13/23.
//

import UIKit


/// Controller to house tabs and root tab controller
final class RM_TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // view.backgroundColor = .green
        setUpTabs()
    }
    
    private func setUpTabs(){
        let charVC = RM_CharacterViewController()
        let epiVC = RM_EpisodesViewController()
        let locVC = RM_LocationViewController()
        let setVC = RM_SettingsViewController()
        
        charVC.navigationItem.largeTitleDisplayMode = .automatic
        epiVC.navigationItem.largeTitleDisplayMode = .automatic
        locVC.navigationItem.largeTitleDisplayMode = .automatic
        setVC.navigationItem.largeTitleDisplayMode = .automatic
        
        let nav1 = UINavigationController(rootViewController: charVC)
        let nav2 = UINavigationController(rootViewController: epiVC)
        let nav3 = UINavigationController(rootViewController: locVC)
        let nav4 = UINavigationController(rootViewController: setVC)
        
        nav1.tabBarItem = UITabBarItem(title: "Characters", image: UIImage(systemName: "person"), tag: 1)
        nav2.tabBarItem = UITabBarItem(title: "Episodes", image: UIImage(systemName: "tv"), tag: 2)
        nav3.tabBarItem = UITabBarItem(title: "Locations", image: UIImage(systemName: "map"), tag: 3)
        nav4.tabBarItem = UITabBarItem(title: "Settings", image: UIImage(systemName: "gear"), tag: 4)
        
        for nav in [nav1, nav2, nav3, nav4]{
            nav.navigationBar.prefersLargeTitles = true
            
        }
        setViewControllers(
                [nav1, nav2, nav3, nav4],
                animated: true
        )
    }

}

