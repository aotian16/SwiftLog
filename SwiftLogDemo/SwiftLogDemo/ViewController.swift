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
        
        Log.logLevel = LogLevel.Warn
        
        Log.v("default v")
        Log.d("default d")
        Log.i("default i")
        Log.w("default w")
        Log.e("default e")
        Log.a("default a")
        
//        2. use custom log
        
        let log = SwiftLog(logLevel: LogLevel.Warn)
        
        log.v("custom v")
        log.d("custom d")
        log.i("custom i")
        log.w("custom w")
        log.e("custom e")
        log.a("custom a")
    }
}

