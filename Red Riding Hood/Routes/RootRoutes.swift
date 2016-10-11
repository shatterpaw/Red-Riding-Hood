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
let GreenViewControllerIdentifier = "GreenViewController"
let RedViewControllerIdentifier = "RedViewController"
let RedRoute: RouteElementIdentifier = "RedRoute"
let GreenRoute: RouteElementIdentifier = "GreenRoute"

class RootRoutable: Routable {
    let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func setToGreenViewController() -> Routable {
        self.window.rootViewController = storyboard.instantiateViewController(withIdentifier: GreenViewControllerIdentifier)
        
        return GreenViewRoutable(viewController: self.window.rootViewController!)
    }
    
    func setToRedViewController() -> Routable {
        self.window.rootViewController = storyboard.instantiateViewController(withIdentifier: RedViewControllerIdentifier)
        
        return RedViewRoutable(viewController: self.window.rootViewController!)
    }
    
    func changeRouteSegment(from: RouteElementIdentifier, to: RouteElementIdentifier, animated: Bool, completionHandler: RoutingCompletionHandler) -> Routable {
        if to == GreenRoute {
            completionHandler()
            return self.setToGreenViewController()
        } else if to == RedRoute {
            completionHandler()
            return self.setToGreenViewController()
        } else {
            fatalError("Route not supported")
        }
    }
    
    func pushRouteSegment(routeElementIdentifier: RouteElementIdentifier, animated: Bool, completionHandler: RoutingCompletionHandler) -> Routable {
        if routeElementIdentifier == GreenRoute {
            completionHandler()
            return self.setToGreenViewController()
        } else if routeElementIdentifier == RedRoute {
            completionHandler()
            return self.setToRedViewController()
        } else {
            fatalError("Route not supported")
        }
    }
    
    func popRouteSegment(routeElementIdentifier: RouteElementIdentifier, animated: Bool, completionHandler: RoutingCompletionHandler) {
        completionHandler()
    }
}
