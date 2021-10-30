//
//  ModuleOneEdrTrackingService.swift
//  SwiftAnalyticEventTracker
//
//  Created by Batikan Sosun on 30.10.2021.
//

import Foundation

public class ModuleOneEdrTrackingService: EdrTrackingService {
    public var url: URL { URL(string: "https://edr-collect.com/")!}
    
    public var defaultParameters: [String: String] { ["":""]}
    public init() {}
    
    public func track(params: [TrackableEventModel]) {
        print("\(params) override") // override implementation
        // encode model
        // go service
    }

}
