//
//  ViewControllerActions.swift
//  Red Riding Hood
//
//  Created by Chris Jarvi on 10/14/16.
//  Copyright © 2016 Chris Jarvi. All rights reserved.
//

import ReSwift
import ReSwiftRouter

func switchToGreenViewController() -> Action? {
    store.dispatch(SetRouteAction([InitialViewRoute, GreenRoute]))
    
    return nil
}
