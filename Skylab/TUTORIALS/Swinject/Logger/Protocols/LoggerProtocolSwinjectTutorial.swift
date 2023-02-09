//
//  LoggerProtocol.swift
//  Skylab
//
//  Created by Serhii Dorohobid on 29.01.2023.
//

import Foundation

protocol LoggerProtocolSwinjectTutorial {
    func Log(logLevel: LogLevelSwinjectTutorial, message: String)
}

enum LogLevelSwinjectTutorial: String {
    case info = "INFO"
    case debug = "DEBUG"
    case error = "ERROR"
    case fatal = "FATAL"
}
