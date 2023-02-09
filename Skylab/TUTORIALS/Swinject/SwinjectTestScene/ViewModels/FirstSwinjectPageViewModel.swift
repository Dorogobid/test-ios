//
//  FirstSwinjectPageViewModel.swift
//  Skylab
//
//  Created by Serhii Dorohobid on 27.01.2023.
//

import Foundation

class FirstSwinjectTestPageViewModel {
    var logger: LoggerProtocolSwinjectTutorial
    
    init(logger: LoggerProtocolSwinjectTutorial) {
        self.logger = logger
    }

    var coordinatorDelegate: FirstSwinjectTestPageViewModelCoordinatorDelegate?

    func openFirstSubcontroller() {
        coordinatorDelegate?.openFirstSubControllerDelegate()
    }

    func openSecondSubcontroller() {
        coordinatorDelegate?.openSecondSubControllerDelegate()
    }
}

protocol FirstSwinjectTestPageViewModelCoordinatorDelegate {
    func openFirstSubControllerDelegate()
    func openSecondSubControllerDelegate()
}
