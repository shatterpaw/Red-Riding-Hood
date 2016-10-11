//
//  AppState.swift
//  Red Riding Hood
//
//  Created by Chris Jarvi on 10/11/16.
//  Copyright © 2016 Chris Jarvi. All rights reserved.
//

import Foundation
import ReSwift
import ReSwiftRouter

struct AppState: StateType, HasNavigationState {
    var navigationState: NavigationState
}

