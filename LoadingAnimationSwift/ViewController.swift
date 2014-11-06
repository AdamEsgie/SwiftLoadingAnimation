//
//  ViewController.swift
//  LoadingAnimationSwift
//
//  Created by Adam Salvitti-Gucwa on 6/8/14.
//  Copyright (c) 2014 esgie. All rights reserved.
//

import UIKit

class MainViewController: UIViewController
{
  
  var loading = LoadingView()
  
  override func viewDidLoad()
  {
    super.viewDidLoad()
    self.view.backgroundColor = UIColor.whiteColor()
    self.view.frame = super.view.bounds;
  }
  
  override func viewWillAppear(animated: Bool) {
    addButtons()
    loading.showAtCenterPointWithSize(CGPointMake(CGRectGetWidth(self.view.bounds)/2, CGRectGetHeight(self.view.bounds)/2), size: 8.0)
    self.view.addSubview(loading)
  }

  override func didReceiveMemoryWarning()
  {
    super.didReceiveMemoryWarning()
  }
  
  func addButtons ()
  {
    let buttonName = ["Start", "Stop", "Opacity", "Reset"]
    for name in buttonName {
      setupButtonsWithTitle(name)
    }
  }
  
  func setupButtonsWithTitle(title: NSString)
  {
    var button = UIButton()
    button.setTitle(title, forState: UIControlState.Normal)
    button.titleLabel?.textColor = UIColor.whiteColor()
    button.titleLabel?.font = preferredFont()
    button.backgroundColor = UIColor.lightGrayColor()
    
    switch title {
      case "Start":
        button.frame = CGRectMake(CGRectGetWidth(self.view.bounds)/2-65, CGRectGetHeight(self.view.bounds)-120, 60, 40)
        button.addTarget(self, action: "startAction:", forControlEvents: UIControlEvents.TouchUpInside)
      case "Stop":
        button.frame = CGRectMake(CGRectGetWidth(self.view.bounds)/2+5, CGRectGetHeight(self.view.bounds)-120, 60, 40)
        button.addTarget(self, action: "stopAction:", forControlEvents: UIControlEvents.TouchUpInside)
      case "Opacity":
        button.frame = CGRectMake(CGRectGetWidth(self.view.bounds)/2-65, CGRectGetHeight(self.view.bounds)-70, 60, 40)
        button.addTarget(self, action: "addOpacityAction:", forControlEvents: UIControlEvents.TouchUpInside)
      case "Reset":
        button.frame = CGRectMake(CGRectGetWidth(self.view.bounds)/2+5, CGRectGetHeight(self.view.bounds)-70, 60, 40)
        button.addTarget(self, action: "resetAction:", forControlEvents: UIControlEvents.TouchUpInside)
      default:
        break;
    }
    
    self.view .addSubview(button)
  }

  func preferredFont () -> (UIFont)
  {
    println("font time")
    return UIFont(name: "HelveticaNeue-Light", size: 14)!
  }

  func startAction(sender: UIButton)
  {
    println("start")
    loading.startLoading()
  }
  func stopAction(sender: UIButton)
  {
    println("stop")
    loading.stopLoading()
  }
  func addOpacityAction(sender: UIButton)
  {
    println("op")
    loading.addStartingOpacity(0.5)
  }
  func resetAction(sender: UIButton)
  {
    println("reset")
    loading.stopLoading()
    loading.addStartingOpacity(1.0)
  }
}




