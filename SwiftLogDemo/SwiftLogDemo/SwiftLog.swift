//
//  SwiftLog.swift
//  SwiftLogDemo
//
//  Created by 童进 on 15/10/12.
//  Copyright © 2015年 qefee. All rights reserved.
//

import Foundation

public class SwiftLog {
    /// log level. Print logs which >= logLevel
    public var logLevel: LogLevel
    /// date format
    public var dateFormat: String = "yyyy-MM-dd HH:mm:ss"
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
    public func v(msg: String, fileName: String = __FILE__, functionName: String = __FUNCTION__, lineNum: Int = __LINE__, columnNum: Int = __COLUMN__) {
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
    public func d(msg: String, fileName: String = __FILE__, functionName: String = __FUNCTION__, lineNum: Int = __LINE__, columnNum: Int = __COLUMN__) {
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
    public func i(msg: String, fileName: String = __FILE__, functionName: String = __FUNCTION__, lineNum: Int = __LINE__, columnNum: Int = __COLUMN__) {
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
    public func w(msg: String, fileName: String = __FILE__, functionName: String = __FUNCTION__, lineNum: Int = __LINE__, columnNum: Int = __COLUMN__) {
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
    public func e(msg: String, fileName: String = __FILE__, functionName: String = __FUNCTION__, lineNum: Int = __LINE__, columnNum: Int = __COLUMN__) {
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
    public func a(msg: String, fileName: String = __FILE__, functionName: String = __FUNCTION__, lineNum: Int = __LINE__, columnNum: Int = __COLUMN__) {
        printLog(LogLevel.Assert, msg: msg, fileName: fileName, functionName: functionName, lineNum: lineNum, columnNum: columnNum)
    }
    
    /**
    print log.
    If you want to custom log format, change this function.
    
    - parameter logLevel:     logLevel
    - parameter msg:          msg
    - parameter fileName:     fileName
    - parameter functionName: functionName
    - parameter lineNum:      lineNum
    - parameter columnNum:    columnNum
    */
    public func printLog(logLevel: LogLevel, msg: String, fileName: String = __FILE__, functionName: String = __FUNCTION__, lineNum: Int = __LINE__, columnNum: Int = __COLUMN__) {
        if self.logLevel > logLevel {
            return
        }
        
        let date = dateFormatter.stringFromDate(NSDate())
        
        print("\(date) \(fileName) : \(functionName) : \(lineNum) : \(columnNum) \(logLevel) \(msg)")
    }
}


