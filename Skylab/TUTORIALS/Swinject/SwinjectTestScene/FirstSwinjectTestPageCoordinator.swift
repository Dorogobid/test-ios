//
//  FirstSwinjectTestPageCoordinator.swift
//  Skylab
//
//  Created by Serhii Dorohobid on 27.01.2023.
//

import UIKit
import Swinject

class FirstSwinjectTestPageCoordinator: Coordinator {

    // MARK: Properties

    let rootController: UINavigationController

    // MARK: Coordinator

    init(_ rootController: UINavigationController) {
        self.rootController = rootController
    }

    override func start() {

        let viewController = FirstSwinjectTestPageViewController.instantiate(coordinator: self)
        viewController.viewModel = Container.containerSwinjectTutorial.resolve(FirstSwinjectTestPageViewModel.self)
        viewController.viewModel?.coordinatorDelegate = self
        rootController.pushViewController(viewController, animated: false)
    }

    func openFirstSubcontroller() {
        let viewController = FirstSwinjectTestPageSubViewController.instantiate(coordinator: self)
        viewController.viewModel = Container.containerSwinjectTutorial.resolve(FirstSwinjectTestPageSubViewControllerViewModel.self)
        rootController.pushViewController(viewController, animated: false)
    }

    func openSecondSubController() {

    }
}

extension FirstSwinjectTestPageCoordinator: FirstSwinjectTestPageViewModelCoordinatorDelegate {

    func openFirstSubControllerDelegate() {
        self.openFirstSubcontroller()
    }

    func openSecondSubControllerDelegate() {
        self.openSecondSubController()
    }
}
