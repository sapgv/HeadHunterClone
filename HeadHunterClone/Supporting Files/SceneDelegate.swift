//
//  SceneDelegate.swift
//  HeadHunterClone
//
//  Created by Grigory Sapogov on 20.01.2024.
//

import UIKit
import SwiftAlertView

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        
        guard let scene = (scene as? UIWindowScene) else { return }
        
        self.window = UIWindow(windowScene: scene)
        
        self.window?.rootViewController = self.createViewController()
        self.window?.makeKeyAndVisible()
        
    }

    private func createViewController() -> UIViewController {
        
        let vacancyListViewController = self.createVacancyListViewController()
        
        let favouriteListViewController = self.createFavouriteVacancyListViewController()
        
        let settingsViewController = self.createSettingsViewController()
        
        let tabBarViewController = TabBarController()
        tabBarViewController.setViewControllers([vacancyListViewController, favouriteListViewController, settingsViewController], animated: false)
        
        return tabBarViewController
        
    }
    
    private func createVacancyListViewController() -> UIViewController {
        
        let solaryPresenter = self.createSolaryPresenter()
        
        let presenter = VacancyListPresenter(solaryPresenter: solaryPresenter)

        let viewController = VacancyListViewController()
        viewController.presenter = presenter
        viewController.alert = AlertUI(viewController: viewController)
        viewController.alert = SwiftAlertView()
        viewController.alert = JDropDownAlert()
        
        let navigationController = UINavigationController(rootViewController: viewController)
        navigationController.tabBarItem = UITabBarItem(title: "Posts", image: UIImage(systemName: "newspaper"), tag: 0)
        
        return navigationController
        
    }
    
    private func createFavouriteVacancyListViewController() -> UIViewController {
        
        let solaryPresenter = self.createSolaryPresenter()
        
        let presenter = FavouriteVacancyListPresenter(solaryPresenter: solaryPresenter)
        
        let viewController = FavouriteVacancyListViewController()
        viewController.presenter = presenter
        
        let navigationController = UINavigationController(rootViewController: viewController)
        navigationController.tabBarItem = UITabBarItem(title: "Favourite", image: UIImage(systemName: "heart.fill"), tag: 1)
        
        return navigationController
        
    }
    
    private func createSettingsViewController() -> UIViewController {
        
        let presenter = SettingsViewPresenter()
        
        let viewController = SettingsViewController()
        viewController.presenter = presenter
        
        let navigationController = UINavigationController(rootViewController: viewController)
        navigationController.tabBarItem = UITabBarItem(title: "Settings", image: UIImage(systemName: "gear"), tag: 2)
        
        return navigationController
        
    }
    
    private func createSolaryPresenter() -> ISolaryPresenter {
        
        if SettingsStorage.shared.solaryPerHour {
            return SolaryHourPresenter()
        }
        
        return SolaryPresenter()
        
    }


}

