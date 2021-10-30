//
//  CoreEventTracker.swift
//  SwiftAnalyticEventTracker
//
//  Created by Batikan Sosun on 30.10.2021.
//

import Foundation

public protocol CoreEventTracker {
    var edrTrackingService: EdrTrackingService { get set }
    var googleAnalyticService: GoogleAnalyticService { get set }
    
    func track(_ trackable: TrackableEventService)
}

public extension CoreEventTracker {
    func track(_ trackable: TrackableEventService) {
        trackable.services.forEach { provider in
            switch provider {
            case .edrTracking(let params):
                edrTrackingService.track(params: params)
            case .googleAnalytics(let name, let params):
                googleAnalyticService.sendEvent(name: name, params: params)
            }
        }
    }
}
