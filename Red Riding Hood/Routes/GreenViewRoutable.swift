//
//  GreenViewRoutable.swift
//  Red Riding Hood
//
//  Created by Chris Jarvi on 10/11/16.
//  Copyright © 2016 Chris Jarvi. All rights reserved.
//

import Foundation
import ReSwiftRouter

class GreenViewRoutable: Routable {
    let viewController: UIViewController
    
    init(viewController: UIViewController) {
        self.viewController = viewController
    }
    
    func pushRouteSegment(_ routeElementIdentifier: RouteElementIdentifier, animated: Bool, completionHandler: @escaping RoutingCompletionHandler) -> Routable {
        if let navController = self.viewController as? UINavigationController {
            let redViewController = storyboard.instantiateViewController(withIdentifier: ViewControllerIdentifiers.RedViewControllerIdentifier)
            navController.pushViewController(
                viewController: redViewController,
                animated: animated,
                completion: completionHandler
            )
        }
        
        return self
    }
    
    func popRouteSegment(_ routeElementIdentifier: RouteElementIdentifier, animated: Bool, completionHandler: @escaping RoutingCompletionHandler) {
        completionHandler()
    }
}
