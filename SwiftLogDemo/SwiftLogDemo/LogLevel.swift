//
//  LogLevel.swift
//  SwiftLogDemo
//
//  Created by 童进 on 15/10/12.
//  Copyright © 2015年 qefee. All rights reserved.
//

public enum LogLevel: Int, Comparable, CustomStringConvertible {
    case Verbose = 100
    case Debug = 200
    case Info = 300
    case Warn = 400
    case Error = 500
    case Assert = 600
    case None = 700
    
    public var description: String {
        switch self {
        case .Verbose:
            return "Verbose"
        case .Debug:
            return "Debug"
        case .Info:
            return "Info"
        case .Warn:
            return "Warn"
        case .Error:
            return "Error"
        case .Assert:
            return "Assert"
        case .None:
            return "None"
        }
    }
}

public func <(lhs: LogLevel, rhs: LogLevel) -> Bool {
    return lhs.rawValue < rhs.rawValue
}

public func <=(lhs: LogLevel, rhs: LogLevel) -> Bool{
    return lhs.rawValue <= rhs.rawValue
}

public func >=(lhs: LogLevel, rhs: LogLevel) -> Bool{
    return lhs.rawValue >= rhs.rawValue
}

public func >(lhs: LogLevel, rhs: LogLevel) -> Bool{
    return lhs.rawValue > rhs.rawValue
}
