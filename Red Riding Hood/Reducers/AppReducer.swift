//
//  AppReducer.swift
//  Red Riding Hood
//
//  Created by Chris Jarvi on 10/11/16.
//  Copyright © 2016 Chris Jarvi. All rights reserved.
//

import Foundation
import ReSwift
import ReSwiftRouter

struct AppReducer: Reducer {
    func handleAction(action: Action, state: AppState?) -> AppState {
        return AppState (
            navigationState: NavigationReducer.handleAction(action, state: state?.navigationState)
        )
    }
}
