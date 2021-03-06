//
//  BeTrue.swift
//  Sleipnir
//
//  Created by Artur Termenji on 6/23/14.
//  Copyright (c) 2014 railsware. All rights reserved.
//

import Foundation

public class BeTrue<T>: BaseMatcher<T> {
    
    override init() {
        super.init()
    }
    
    override func match(actual: T?) -> Bool {
        return actual as Bool
    }
    
    override func failureMessageEnd() -> String {
        return "evaluate to true"
    }
}

public func beTrue() -> BeTrue<Bool> {
    return BeTrue()
}

