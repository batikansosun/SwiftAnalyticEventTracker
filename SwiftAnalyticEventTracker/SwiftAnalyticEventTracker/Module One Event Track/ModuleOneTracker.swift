//
//  ModuleOneTracker.swift
//  SwiftAnalyticEventTracker
//
//  Created by Batikan Sosun on 30.10.2021.
//

import Foundation

// MARK: Modular Analytic Definition
final public class ModuleOneTracker: CoreEventTracker {
    public var googleAnalyticService: GoogleAnalyticService
    public var edrTrackingService: EdrTrackingService
    
    public init(googleAnalyticService: GoogleAnalyticService = ModuleOneGoogleAnalyticService(), edrTrackingService: EdrTrackingService = ModuleOneEdrTrackingService()) {
        self.googleAnalyticService = googleAnalyticService
        self.edrTrackingService = edrTrackingService
    }
}
