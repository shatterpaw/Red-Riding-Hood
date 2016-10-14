//
//  InitialViewRoutable.swift
//  Red Riding Hood
//
//  Created by Chris Jarvi on 10/14/16.
//  Copyright © 2016 Chris Jarvi. All rights reserved.
//

import Foundation
import ReSwiftRouter

class InitialViewRoutable: Routable {
    let viewController: UIViewController

    init(viewController: UIViewController) {
        self.viewController = viewController
    }
    
    func pushRouteSegment(_ routeElementIdentifier: RouteElementIdentifier, animated: Bool, completionHandler: @escaping RoutingCompletionHandler) -> Routable {
        if routeElementIdentifier == GreenRoute {
            completionHandler()
            return setToGreenViewController(animated: animated, completionHandler: completionHandler)
            
        } else if routeElementIdentifier == RedRoute {
            return setToRedViewController(animated: animated, completionHandler: completionHandler)
        }
        
        fatalError("Cannot handle this route change")
    }
    
    func popRouteSegment(_ routeElementIdentifier: RouteElementIdentifier, animated: Bool, completionHandler: @escaping RoutingCompletionHandler) {
        completionHandler()
    }
    
    func changeRouteSegment(_ from: RouteElementIdentifier, to: RouteElementIdentifier, animated: Bool, completionHandler: @escaping RoutingCompletionHandler) -> Routable {
        if to == GreenRoute {
            completionHandler()
            return setToGreenViewController(animated: animated, completionHandler: completionHandler)
        } else if to == RedRoute {
            completionHandler()
            return setToRedViewController(animated: animated, completionHandler: completionHandler)
        }
        
        fatalError("Cannot handle this route change")
    }
    
    func setToRedViewController(animated: Bool, completionHandler: @escaping RoutingCompletionHandler) -> Routable {
        let redViewController = storyboard.instantiateViewController(withIdentifier: ViewControllerIdentifiers.RedViewControllerIdentifier)
        
        (self.viewController as! UINavigationController).pushViewController(viewController: redViewController, animated: animated, completion: completionHandler)
        
        return RedViewRoutable(viewController: self.viewController)
    }
    
    func setToGreenViewController(animated: Bool, completionHandler: @escaping RoutingCompletionHandler) -> Routable {
        let greenViewController = storyboard.instantiateViewController(withIdentifier: ViewControllerIdentifiers.GreenViewControllerIdentifier)
        
        (self.viewController as! UINavigationController).pushViewController(viewController: greenViewController, animated: animated, completion: completionHandler)
        
        return GreenViewRoutable(viewController: self.viewController)
    }
}
