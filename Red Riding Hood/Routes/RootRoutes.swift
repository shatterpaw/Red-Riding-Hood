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
//let GreenViewControllerIdentifier = "GreenViewController"
//let RedViewControllerIdentifier = "RedViewController"
//let MainNavControllerIdentifier = "MainNavigationController"
let RedRoute: RouteElementIdentifier = "RedRoute"
let GreenRoute: RouteElementIdentifier = "GreenRoute"
let InitialViewRoute: RouteElementIdentifier = "InitialViewRoute"

class RootRoutable: Routable {
    let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
//    func setToGreenViewController() -> Routable {
//        self.window.rootViewController = storyboard.instantiateViewController(withIdentifier: MainNavControllerIdentifier)
//        
//        return GreenViewRoutable(viewController: self.window.rootViewController!)
//    }
//    
//    func setToRedViewController() -> Routable {
//        self.window.rootViewController = storyboard.instantiateViewController(withIdentifier: MainNavControllerIdentifier)
//        
//        return RedViewRoutable(viewController: self.window.rootViewController!)
//    }
    
    func setToInitialViewController() -> Routable {
        self.window.rootViewController = storyboard.instantiateViewController(withIdentifier: ViewControllerIdentifiers.MainNavControllerIdentifier)
        
        return InitialViewRoutable(viewController: self.window.rootViewController!)
        
    }
    
    func changeRouteSegment(_ from: RouteElementIdentifier, to: RouteElementIdentifier, animated: Bool, completionHandler: @escaping RoutingCompletionHandler) -> Routable {
//        if to == GreenRoute {
//            completionHandler()
//            return self.setToGreenViewController()
//        } else if to == RedRoute {
//            completionHandler()
//            return self.setToRedViewController()
//        } else {
//            fatalError("Route not supported")
//        }
        if to == InitialViewRoute {
            completionHandler()
            return setToInitialViewController()
        } else {
            fatalError("Route not supported")
        }
    }
    
    func pushRouteSegment(_ routeElementIdentifier: RouteElementIdentifier, animated: Bool, completionHandler: @escaping RoutingCompletionHandler) -> Routable {
//        if routeElementIdentifier == GreenRoute {
//            completionHandler()
//            return self.setToGreenViewController()
//        } else if routeElementIdentifier == RedRoute {
//            completionHandler()
//            return self.setToRedViewController()
//        } else {
//            fatalError("Route not supported")
//        }
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
