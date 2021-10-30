//
//  EDRLoginEventModel.swift
//  SwiftAnalyticEventTracker
//
//  Created by Batikan Sosun on 30.10.2021.
//

import Foundation

public struct EDRLoginEventModel: TrackableEventModel,Codable {
    public var action = "Login"
    public var name = "Login Name"
}
