//
//  RootRoutes.swift
//  Red Riding Hood
//
//  Created by Chris Jarvi on 10/11/16.
//  Copyright © 2016 Chris Jarvi. All rights reserved.
//

import Foundation
import ReSwiftRouter

let storyboard = UIStoryboard(name: "Main", bundle: nil)
let RedRoute: RouteElementIdentifier = "RedRoute"
let GreenRoute: RouteElementIdentifier = "GreenRoute"
let InitialViewRoute: RouteElementIdentifier = "InitialViewRoute"

class RootRoutable: Routable {
    let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func setToInitialViewController() -> Routable {
        self.window.rootViewController = storyboard.instantiateViewController(withIdentifier: ViewControllerIdentifiers.MainNavControllerIdentifier)
        
        return InitialViewRoutable(viewController: self.window.rootViewController!)
        
    }
    
    func changeRouteSegment(_ from: RouteElementIdentifier, to: RouteElementIdentifier, animated: Bool, completionHandler: @escaping RoutingCompletionHandler) -> Routable {
        if to == InitialViewRoute {
            completionHandler()
            return setToInitialViewController()
        } else {
            fatalError("Route not supported")
        }
    }
    
    func pushRouteSegment(_ routeElementIdentifier: RouteElementIdentifier, animated: Bool, completionHandler: @escaping RoutingCompletionHandler) -> Routable {
        if routeElementIdentifier == InitialViewRoute {
            completionHandler()
            return setToInitialViewController()
        } else {
            fatalError("Route not supported")
        }
    }
    
    func popRouteSegment(_ routeElementIdentifier: RouteElementIdentifier, animated: Bool, completionHandler: @escaping RoutingCompletionHandler) {
        completionHandler()
    }
}
