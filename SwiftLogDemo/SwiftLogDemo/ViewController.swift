//
//  ViewController.swift
//  SwiftLogDemo
//
//  Created by 童进 on 15/10/12.
//  Copyright © 2015年 qefee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        1. use Log
        
        Log.logLevel = LogLevel.Warn // print log over warn
        
        Log.v("default v") // will not print
        Log.d("default d") // will not print
        Log.i("default i") // will not print
        Log.w("default w")
        Log.e("default e")
        Log.a("default a")
        
//        2. use custom log
        
        let log = SwiftLog(logLevel: LogLevel.Warn) // print log over warn
        
        log.dateFormat = "[yyyy-MM-dd HH:mm:ss.SSS]"
        
        log.v("custom v") // will not print
        log.d("custom d") // will not print
        log.i("custom i") // will not print
        log.w("custom w")
        log.e("custom e")
        log.a("custom a")
    }
}

