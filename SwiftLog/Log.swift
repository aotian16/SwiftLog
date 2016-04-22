//
//  Logs.swift
//  SwiftLogDemo
//
//  Created by 童进 on 15/10/12.
//  Copyright © 2015年 qefee. All rights reserved.
//

/// An easy to use SwiftLog
public class Log {
    /// log level. Print logs which >= logLevel
    public static var logLevel: LogLevel = LogLevel.Debug
    {
        didSet
        {
            sharedLogInstance.logLevel = logLevel
        }
    }
    public static var sharedLogInstance: SwiftLog = SwiftLog()
    
    /**
    print verbose log.
    
    - parameter msg:          msg
    - parameter fileName:     fileName
    - parameter functionName: functionName
    - parameter lineNum:      lineNum
    - parameter columnNum:    columnNum
    */
    class public func v(msg: String, fileName: String = #file, functionName: String = #function, lineNum: Int = #line, columnNum: Int = #column) {
        sharedLogInstance.printLog(LogLevel.Verbose, msg: msg, fileName: fileName, functionName: functionName, lineNum: lineNum, columnNum: columnNum)
    }
    
    /**
    print debug log.
    
    - parameter msg:          msg
    - parameter fileName:     fileName
    - parameter functionName: functionName
    - parameter lineNum:      lineNum
    - parameter columnNum:    columnNum
    */
    class public func d(msg: String, fileName: String = #file, functionName: String = #function, lineNum: Int = #line, columnNum: Int = #column) {
        sharedLogInstance.printLog(LogLevel.Debug, msg: msg, fileName: fileName, functionName: functionName, lineNum: lineNum, columnNum: columnNum)
    }
    
    /**
    print info log.
    
    - parameter msg:          msg
    - parameter fileName:     fileName
    - parameter functionName: functionName
    - parameter lineNum:      lineNum
    - parameter columnNum:    columnNum
    */
    class public func i(msg: String, fileName: String = #file, functionName: String = #function, lineNum: Int = #line, columnNum: Int = #column) {
        sharedLogInstance.printLog(LogLevel.Info, msg: msg, fileName: fileName, functionName: functionName, lineNum: lineNum, columnNum: columnNum)
    }
    
    /**
    print warn log.
    
    - parameter msg:          msg
    - parameter fileName:     fileName
    - parameter functionName: functionName
    - parameter lineNum:      lineNum
    - parameter columnNum:    columnNum
    */
    class public func w(msg: String, fileName: String = #file, functionName: String = #function, lineNum: Int = #line, columnNum: Int = #column) {
        sharedLogInstance.printLog(LogLevel.Warn, msg: msg, fileName: fileName, functionName: functionName, lineNum: lineNum, columnNum: columnNum)
    }
    
    /**
    print error log.
    
    - parameter msg:          msg
    - parameter fileName:     fileName
    - parameter functionName: functionName
    - parameter lineNum:      lineNum
    - parameter columnNum:    columnNum
    */
    class public func e(msg: String, fileName: String = #file, functionName: String = #function, lineNum: Int = #line, columnNum: Int = #column) {
        sharedLogInstance.printLog(LogLevel.Error, msg: msg, fileName: fileName, functionName: functionName, lineNum: lineNum, columnNum: columnNum)
    }
    
    /**
    print assert log.
    
    - parameter msg:          msg
    - parameter fileName:     fileName
    - parameter functionName: functionName
    - parameter lineNum:      lineNum
    - parameter columnNum:    columnNum
    */
    class public func a(msg: String, fileName: String = #file, functionName: String = #function, lineNum: Int = #line, columnNum: Int = #column) {
        sharedLogInstance.printLog(LogLevel.Assert, msg: msg, fileName: fileName, functionName: functionName, lineNum: lineNum, columnNum: columnNum)
    }
}
