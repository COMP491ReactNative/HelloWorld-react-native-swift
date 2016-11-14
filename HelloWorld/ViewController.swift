//
//  ViewController.swift
//  HelloWorld
//
//  Created by Khanh T Pham on 11/13/16.
//  Copyright © 2016 Khanh T Pham. All rights reserved.
//

import UIKit
import React

class ViewController: UIViewController {
  
  //Declare an RCTRootView to link your react native code with native code
  var rootView: RCTRootView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Specify React Native code location
    let jsCodeLocation = URL(string: "http://localhost:8081/index.ios.bundle?platform=ios")
    
    //Iniialize the rootview as RCTRootView
    rootView = RCTRootView( bundleURL: jsCodeLocation, moduleName: "HelloWorld", initialProperties: nil, launchOptions: nil)

//    //Specify the RCTRootView's size and location on view, and add it to view as sub view.
    let view  = (
      x: self.view.bounds.origin.x,
      y: self.view.bounds.origin.y,
      width: self.view.bounds.width,
      height: self.view.bounds.height
    )
    
    rootView.frame = CGRect(x: view.x, y: view.y, width: view.width, height: view.height)

    
    self.view.addSubview(rootView)

  }
  
}

