# SwiftLog

a simple swift log

learn from [XCGLogger](https://github.com/DaveWoodCom/XCGLogger "XCGLogger")

print message with file, function, line and column. like this:

<pre>

2015-10-12 15:03:25.123 ViewController.swift : viewDidLoad() : 36 : 15 Assert message log

</pre>

# how to use

``` swift
//        1. use Log

        Log.logLevel = LogLevel.Warn // print log over warn
		Log.sharedLogInstance.dateFormat = "[yyyy-MM-dd HH:mm:ss.SSS]"

        Log.v("default v") // will not print
        Log.d("default d") // will not print
        Log.i("default i") // will not print
        Log.w("default w")
        Log.e("default e")
        Log.a("default a")

//        2. use custom log

        let log = SwiftLog(logLevel: LogLevel.Warn) // print log over warn

        log.howToLog = {(logLevel: LogLevel, msg: String, fileName: String, functionName: String, lineNum: Int, columnNum: Int) -> Void in
            print(msg)
        }

        log.v("custom v") // will not print
        log.d("custom d") // will not print
        log.i("custom i") // will not print
        log.w("custom w")
        log.e("custom e")
        log.a("custom a")
```

# install

| No.  | type     | detail                                   |
| ---- | -------- | ---------------------------------------- |
| 1    | carthage | `github "aotian16/SwiftLog" ~> 1.0.0`    |
| 2    | manual   | just copy SwiftLog.swift, LogLevel.swift and Log.swift to your project. |

# requirements

swift2.0, ios8.0

# license

MIT