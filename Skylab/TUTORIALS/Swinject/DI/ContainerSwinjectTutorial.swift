//
//  TestContainer.swift
//  Skylab
//
//  Created by Serhii Dorohobid on 29.01.2023.
//

import Foundation
import Swinject

extension Container {
    static let containerSwinjectTutorial: Container = {
        let container = Container()
        container.register(LoggerProtocolSwinjectTutorial.self) { _ in
//            PlainTextLoggerSwinjectTutorial()
            JSONLoggerSwinjectTutorial()
        }
        
        container.register(FirstSwinjectTestPageViewModel.self) { r in
            FirstSwinjectTestPageViewModel(logger: r.resolve(LoggerProtocolSwinjectTutorial.self)!)
        }
        
        container.register(FirstSwinjectTestPageSubViewControllerViewModel.self) { r in
            FirstSwinjectTestPageSubViewControllerViewModel()
        }
        
        return container
    }()
}
