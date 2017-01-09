//
//  AppCoordinator.swift
//  ReswiftAppCoordinatorDemo
//
//  Created by Xianning Liu on 03/01/2017.
//

import Foundation
import UIKit

class AppCoordinator {
    var rootVC: UINavigationController

    init(rootVC: UINavigationController){
        self.rootVC = rootVC
    }

    func start() {
        let searchVC = SearchSceneViewController();
        searchVC.appCoordinator = self
        self.rootVC.pushViewController(searchVC, animated: true)
    }

    func showAlert(errorMessage:String) {
        let alert = UIAlertController(title: "Oops!", message:errorMessage, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default) { _ in })
        self.rootVC.topViewController?.present(alert, animated: true)
    }
}

extension AppCoordinator {
    func showSearchResults() {
        let searchResultVC = SearchResultSceneViewController();
        searchResultVC.appCoordinator = self
        self.rootVC.pushViewController(searchResultVC, animated: true)
    }

    func showPropertyDetail() {
        let propertyDetailVC = PropertyDetailSceneViewController();
        propertyDetailVC.appCoordinator = self
        self.rootVC.pushViewController(propertyDetailVC, animated: true)
    }
}
