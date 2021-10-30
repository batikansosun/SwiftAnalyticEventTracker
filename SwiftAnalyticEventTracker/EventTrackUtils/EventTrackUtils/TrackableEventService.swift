//
//  TrackableEventService.swift
//  SwiftAnalyticEventTracker
//
//  Created by Batikan Sosun on 30.10.2021.
//

import Foundation

public protocol TrackableEventService {
    var services: [EventService] { get }
}

public enum EventService {
    case edrTracking(params: [TrackableEventModel])
    case googleAnalytics(name: String = "", params: [TrackableEventModel])
}
