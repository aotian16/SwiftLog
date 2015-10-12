# SwiftLog
a simple swift log

learn from [XCGLogger](https://github.com/DaveWoodCom/XCGLogger "XCGLogger")

print like this:

<pre>
2015-10-12 15:03:25 /Users/xxx/Desktop/xcodeWorkspace/SwiftLogDemo/SwiftLogDemo/ViewController.swift : viewDidLoad() : 36 : 15 Assert message log
</pre>

# how to use
``` swift
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
        
        log.dateFormat = "[yyyy-MM-dd HH:mm:ss]"
        
        log.v("custom v")
        log.d("custom d")
        log.i("custom i")
        log.w("custom w")
        log.e("custom e")
        log.a("custom a")
```

# install
just copy SwiftLog.swift, LogLevel.swift and Log.swift to your project.
