//
//  AppTabBar.swift
//  Movs
//
//  Created by João Gabriel Borelli Padilha on 10/11/18.
//  Copyright © 2018 João Gabriel Borelli Padilha. All rights reserved.
//

import UIKit

class AppTabBar: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Setup TabBar
        self.tabBar.barTintColor = ColorPallete.yellow
        self.tabBar.tintColor = UIColor.black
        
        // Tab Bar
        self.viewControllers = [moviesTab(), favoritesTab()]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Tabs
    
    func moviesTab() -> UIViewController {
        let router = MoviesRouter.init()
        let navigation = CustomNavigation.init(viewController: router.presenter.view, title: "Movies")
        return navigation
    }
    
    func favoritesTab() -> UIViewController {
        let router = FavoritesRouter.init()
        let navigation = CustomNavigation.init(viewController: router.presenter.view, title: "Favorites")
        return navigation
    }
    
}


