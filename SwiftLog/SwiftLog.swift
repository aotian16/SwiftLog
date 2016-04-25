//
//  SwiftLog.swift
//  SwiftLogDemo
//
//  Created by 童进 on 15/10/12.
//  Copyright © 2015年 qefee. All rights reserved.
//

import Foundation

public class SwiftLog {
    /// how to log
    public var howToLog: ((logLevel: LogLevel, msg: String, fileName: String, functionName: String, lineNum: Int, columnNum: Int) -> Void)?
    /// log level. Print logs which >= logLevel
    public var logLevel: LogLevel
    /// date format
    public var dateFormat: String = "yyyy-MM-dd HH:mm:ss.SSS"
    {
        didSet {
            dateFormatter.dateFormat = dateFormat
        }
    }
    /// date formatter
    private var dateFormatter: NSDateFormatter = NSDateFormatter()

    /**
    init with LogLevel.Debug
    */
    public convenience init() {
        self.init(logLevel: LogLevel.Debug)
    }

    public init(logLevel: LogLevel) {
        self.logLevel = logLevel
        self.dateFormatter.dateFormat = dateFormat
    }
    
    /**
    print verbose log.
    
    - parameter msg:          msg
    - parameter fileName:     fileName
    - parameter functionName: functionName
    - parameter lineNum:      lineNum
    - parameter columnNum:    columnNum
    */
    public func v(msg: String, fileName: String = #file, functionName: String = #function, lineNum: Int = #line, columnNum: Int = #column) {
        printLog(LogLevel.Verbose, msg: msg, fileName: fileName, functionName: functionName, lineNum: lineNum, columnNum: columnNum)
    }
    
    /**
    print debug log.
    
    - parameter msg:          msg
    - parameter fileName:     fileName
    - parameter functionName: functionName
    - parameter lineNum:      lineNum
    - parameter columnNum:    columnNum
    */
    public func d(msg: String, fileName: String = #file, functionName: String = #function, lineNum: Int = #line, columnNum: Int = #column) {
        printLog(LogLevel.Debug, msg: msg, fileName: fileName, functionName: functionName, lineNum: lineNum, columnNum: columnNum)
    }
    
    /**
    print info log.
    
    - parameter msg:          msg
    - parameter fileName:     fileName
    - parameter functionName: functionName
    - parameter lineNum:      lineNum
    - parameter columnNum:    columnNum
    */
    public func i(msg: String, fileName: String = #file, functionName: String = #function, lineNum: Int = #line, columnNum: Int = #column) {
        printLog(LogLevel.Info, msg: msg, fileName: fileName, functionName: functionName, lineNum: lineNum, columnNum: columnNum)
    }
    
    /**
    print warn log.
    
    - parameter msg:          msg
    - parameter fileName:     fileName
    - parameter functionName: functionName
    - parameter lineNum:      lineNum
    - parameter columnNum:    columnNum
    */
    public func w(msg: String, fileName: String = #file, functionName: String = #function, lineNum: Int = #line, columnNum: Int = #column) {
        printLog(LogLevel.Warn, msg: msg, fileName: fileName, functionName: functionName, lineNum: lineNum, columnNum: columnNum)
    }
    
    /**
    print error log.
    
    - parameter msg:          msg
    - parameter fileName:     fileName
    - parameter functionName: functionName
    - parameter lineNum:      lineNum
    - parameter columnNum:    columnNum
    */
    public func e(msg: String, fileName: String = #file, functionName: String = #function, lineNum: Int = #line, columnNum: Int = #column) {
        printLog(LogLevel.Error, msg: msg, fileName: fileName, functionName: functionName, lineNum: lineNum, columnNum: columnNum)
    }
    
    /**
    print assert log.
    
    - parameter msg:          msg
    - parameter fileName:     fileName
    - parameter functionName: functionName
    - parameter lineNum:      lineNum
    - parameter columnNum:    columnNum
    */
    public func a(msg: String, fileName: String = #file, functionName: String = #function, lineNum: Int = #line, columnNum: Int = #column) {
        printLog(LogLevel.Assert, msg: msg, fileName: fileName, functionName: functionName, lineNum: lineNum, columnNum: columnNum)
    }
    
    /**
    execute log.
    If you want to custom log format, change howToLog.
    
    - parameter logLevel:     logLevel
    - parameter msg:          msg
    - parameter fileName:     fileName
    - parameter functionName: functionName
    - parameter lineNum:      lineNum
    - parameter columnNum:    columnNum
    */
    public func printLog(logLevel: LogLevel, msg: String, fileName: String = #file, functionName: String = #function, lineNum: Int = #line, columnNum: Int = #column) {
        if self.logLevel > logLevel {
            return
        }
        
        let date = dateFormatter.stringFromDate(NSDate())
        let file = NSString(string: fileName).lastPathComponent
        let fun = functionName
        let line = lineNum
        let col = columnNum
        let lvl = logLevel
        
        if let h = howToLog {
            h(logLevel: lvl, msg: msg, fileName: file, functionName: fun, lineNum: line, columnNum: col)
        } else {
            print("\(date) \(file) : \(fun) : \(line) : \(col) \(lvl) \(msg)")
        }
    }
}


