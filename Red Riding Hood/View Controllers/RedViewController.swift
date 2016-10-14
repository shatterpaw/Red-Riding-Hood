//
//  RedViewController.swift
//  Red Riding Hood
//
//  Created by Chris Jarvi on 10/14/16.
//  Copyright © 2016 Chris Jarvi. All rights reserved.
//

import UIKit
import ReSwift
import ReSwiftRouter

class RedViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func switchButtonTapped(_ sender: UIButton) {
        var routes = store.state.navigationState.route
        routes.append(GreenRoute)
        store.dispatch(SetRouteAction(routes))
    }
    
    override func didMove(toParentViewController parent: UIViewController?) {
        if parent == nil {
            var routes = store.state.navigationState.route
            print("\(routes)")
            if routes.count > 0 {
                routes.removeLast()
                store.dispatch(SetRouteAction(routes))
            }
        }
    }
}
