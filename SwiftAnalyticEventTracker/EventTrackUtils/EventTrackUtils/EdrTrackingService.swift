//
//  EdrTrackingService.swift
//  SwiftAnalyticEventTracker
//
//  Created by Batikan Sosun on 30.10.2021.
//

import Foundation

public protocol EdrTrackingService {
    var defaultParameters: [String: String] { get }
    var url: URL { get }
    
    func track(params: [TrackableEventModel])
}

public extension EdrTrackingService {
    func track(params: [TrackableEventModel]) {
        print(params) // root implementation
    }

}
