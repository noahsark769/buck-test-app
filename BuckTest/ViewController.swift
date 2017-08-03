//
//  ViewController.swift
//  BuckTest
//
//  Created by Noah Gilmore on 7/27/17.
//  Copyright © 2017 Noah Gilmore. All rights reserved.
//

import UIKit
import TinyConstraints

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

    testView.edges(to: view, insets: UIEdgeInsets(top: 40, left: 40, bottom: -40, right: -40))
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

