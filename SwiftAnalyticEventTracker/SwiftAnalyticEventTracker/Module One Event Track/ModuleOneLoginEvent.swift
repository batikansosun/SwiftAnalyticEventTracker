//
//  ModuleOneLoginEvent.swift
//  SwiftAnalyticEventTracker
//
//  Created by Batikan Sosun on 30.10.2021.
//

import Foundation

// MARK: Custom Event Item
struct ModuleOneLoginEvent: TrackableEventService {
    
    // customizable event params and whatever
    var params: [TrackableEventModel] = [EDRLoginEventModel()]
    var name:String  = " bla bla"
    
    var services: [EventService] { [.googleAnalytics(name: name, params: params), .edrTracking(params: params)] }
}
