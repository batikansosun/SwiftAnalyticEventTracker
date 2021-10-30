//
//  ModuleOneGoogleAnalyticService.swift
//  SwiftAnalyticEventTracker
//
//  Created by Batikan Sosun on 30.10.2021.
//

import Foundation

public class ModuleOneGoogleAnalyticService: GoogleAnalyticService {
    public init() {}
    public func sendEvent(name: String, params: [TrackableEventModel]) {
        print("\(name) \(params) override") // override implementation
        // encode model
        //
    }

}
