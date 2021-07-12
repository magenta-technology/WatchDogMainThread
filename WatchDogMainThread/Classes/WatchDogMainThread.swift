//
//  WatchDogMainThread.swift
//  Pods-WatchDogMainThread_Example
//
//  Created by Pavel Volkhin on 29.07.2020.
//

import Foundation

@objc
open class WatchDogMainThread: NSObject {
    @objc public init(threshold: TimeInterval,
                      handler: @escaping (Double, Bool) -> Void) {
        self.pingThread = WatchDogThread(threshold: threshold,
                                         handler: handler)
        self.pingThread.start()
        super.init()
    }
    
    deinit {
        self.pingThread.cancel()
    }

    private let pingThread: WatchDogThread
}
