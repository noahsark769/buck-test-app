//
//  ViewController.swift
//  BuckTest
//
//  Created by Noah Gilmore on 7/27/17.
//  Copyright © 2017 Noah Gilmore. All rights reserved.
//

import UIKit

class TestView: UIView {
  init() {
    super.init(frame: .zero)
    self.backgroundColor = .red
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    view = UIView()
    view.backgroundColor = .white

    let testView = ObjcTestView()
    testView.translatesAutoresizingMaskIntoConstraints = false
    view.addSubview(testView)

    NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "V:|-20-[testView]-20-|", options: [], metrics: nil, views: ["testView": testView]))
    NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "H:|-[testView]-|", options: [], metrics: nil, views: ["testView": testView]))
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

