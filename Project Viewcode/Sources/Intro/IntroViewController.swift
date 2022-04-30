//
//  IntroViewController.swift
//  Project Viewcode
//
//  Created by Leonardo Henrique Barrocal on 30/04/22.
//

import UIKit

final class IntroViewController: UIViewController {
  
  private var customView: IntroView? = nil
  
  override func viewDidLoad() {
    super.viewDidLoad()
    buildView()
  }
  
  private func buildView() {
    view = IntroView()
    customView = view as? IntroView
  }
  
}
