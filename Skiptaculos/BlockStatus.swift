//
//  BlockStatus.swift
//  Skiptaculos
//
//  Created by Oscar Calles on 30/07/14.
//  Copyright (c) 2014 Oscar Calles. All rights reserved.
//

import Foundation
class BlockStatus {
    var isRunning = false
    var timeGapForNextRun = UInt32(0)
    var currentInterval = UInt32(0)
    init(isRunning:Bool, timeGapForNextRun:UInt32, currentInterval:UInt32) {
        self.isRunning = isRunning
        self.timeGapForNextRun = timeGapForNextRun
        self.currentInterval = currentInterval
    }
    
    func shouldRunBlock() -> Bool {
    
        return self.currentInterval > self.timeGapForNextRun
    }
    
}