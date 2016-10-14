//
//  ViewController.swift
//  Red Riding Hood
//
//  Created by Chris Jarvi on 10/11/16.
//  Copyright © 2016 Chris Jarvi. All rights reserved.
//

import UIKit
import ReSwift
import ReSwiftRouter

class ViewController: UIViewController {
    @IBOutlet var switchButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func switchButtonTapped(_ sender: AnyObject) {
        store.dispatch(SetRouteAction([InitialViewRoute, GreenRoute]))
    }
    
}

