//
//  PlainTextLogger.swift
//  Skylab
//
//  Created by Serhii Dorohobid on 29.01.2023.
//

import Foundation

class PlainTextLoggerSwinjectTutorial: LoggerProtocolSwinjectTutorial {
    func Log(logLevel: LogLevelSwinjectTutorial, message: String) {
        print("\(Date()) [\(logLevel.rawValue)] \(message)")
    }
}
