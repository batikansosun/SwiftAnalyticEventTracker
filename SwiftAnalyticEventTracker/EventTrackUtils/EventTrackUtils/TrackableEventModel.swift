//
//  TrackableEventModel.swift
//  SwiftAnalyticEventTracker
//
//  Created by Batikan Sosun on 30.10.2021.
//

import Foundation

public protocol TrackableEventModel{
    var action:String { get set }
    var name:String {get set}
}
