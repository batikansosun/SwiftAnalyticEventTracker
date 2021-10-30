//
//  ViewController.swift
//  SwiftAnalyticEventTracker
//
//  Created by Batikan Sosun on 30.10.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        // Create instance and begin track.
        let tracker:CoreEventTracker = ModuleOneTracker()
        tracker.track(ModuleOneLoginEvent())
    }


}

