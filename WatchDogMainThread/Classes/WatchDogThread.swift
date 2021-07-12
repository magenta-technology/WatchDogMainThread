//
//  WatchDogThread.swift
//  WatchDogMainThread
//
//  Created by Pavel Volkhin on 29.07.2020.
//

import Foundation

class WatchDogThread: Thread {
    init(threshold: TimeInterval,
         handler: @escaping ((Double, Bool) -> Void)) {
        self.threshold = threshold
        self.handler = handler
        super.init()
    }

    override func main() {
        while !self.isCancelled {
            var done = false
            let lastTimestamp = Date()
            DispatchQueue.main.async {
                done = true
            }
            Thread.sleep(forTimeInterval: self.threshold)
            var localLastTimestamp = lastTimestamp
            while !done && !self.isCancelled {
                if -localLastTimestamp.timeIntervalSinceNow > self.threshold {
                    if localLastTimestamp == lastTimestamp {
                        self.handler(-lastTimestamp.timeIntervalSinceNow, true)
                    } else {
                        self.handler(-lastTimestamp.timeIntervalSinceNow, false)
                    }
                    localLastTimestamp = Date()
                }
            }
        }
    }

    private let threshold: TimeInterval
    private let handler: ((Double, Bool) -> Void)
}
