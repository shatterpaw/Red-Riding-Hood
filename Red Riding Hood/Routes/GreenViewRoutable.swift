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
    
    func pushRouteSegment(routeElementIdentifier: RouteElementIdentifier, animated: Bool, completionHandler: @escaping RoutingCompletionHandler) -> Routable {
        if let navController = self.viewController as? UINavigationController {
            let greenViewController = storyboard.instantiateViewController(withIdentifier: GreenViewControllerIdentifier)
            navController.pushViewController(
                viewController: greenViewController,
                animated: animated,
                completion: completionHandler
            )
        }
        
        return self
    }
    
    func popRouteSegment(routeElementIdentifier: RouteElementIdentifier, animated: Bool, completionHandler: RoutingCompletionHandler) {
        completionHandler()
    }
}
