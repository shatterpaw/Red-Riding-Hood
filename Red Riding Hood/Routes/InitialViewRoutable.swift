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
            let greenViewController = storyboard.instantiateViewController(withIdentifier: ViewControllerIdentifiers.GreenViewControllerIdentifier)
            
                (self.viewController as! UINavigationController).pushViewController(viewController: greenViewController, animated: animated, completion: completionHandler)
                
                return GreenViewRoutable(viewController: self.viewController)
            
        }
        
        fatalError("Cannot handle this route change")
    }
    
    func popRouteSegment(_ routeElementIdentifier: RouteElementIdentifier, animated: Bool, completionHandler: @escaping RoutingCompletionHandler) {
        completionHandler()
    }
}
