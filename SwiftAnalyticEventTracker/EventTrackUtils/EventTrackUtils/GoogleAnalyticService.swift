//
//  GoogleAnalyticService.swift
//  SwiftAnalyticEventTracker
//
//  Created by Batikan Sosun on 30.10.2021.
//

import Foundation

public protocol GoogleAnalyticService {
    func sendEvent(name: String, params: [TrackableEventModel])
}

public extension GoogleAnalyticService {
    func sendEvent(name: String, params: [TrackableEventModel]){
        print("\(name) \(params)") // root implementation
    }
}
