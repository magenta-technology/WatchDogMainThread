//
//  ViewController.swift
//  WatchDogMainThread
//
//  Created by Pavel Volhin on 07/29/2020.
//  Copyright (c) 2020 Pavel Volhin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.test()
    }
    
    private func test() {
        for _ in 0..<100000000 {
            count += 1
        }
    }
    
    private var count = 0
}

