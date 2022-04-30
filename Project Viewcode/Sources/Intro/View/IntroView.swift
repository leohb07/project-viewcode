//
//  IntroView.swift
//  Project Viewcode
//
//  Created by Leonardo Henrique Barrocal on 30/04/22.
//

import UIKit

class IntroView: UIView {
  
  // declaramos lazy para ela ser iniciada apenas quando for chamada
  private lazy var helloLabel: UILabel = {
    let label = UILabel()
    label.text = "Hello World!"
    label.font = UIFont.systemFont(ofSize: 22)
    label.textColor = UIColor.black
    
    // utilizamos a linha abaixo para podermos construir as constrain
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
    
  }()
  
  // declaramos lazy para ela ser iniciada apenas quando for chamada
  private lazy var nameLabel: UILabel = {
    let label = UILabel()
    label.text = "Leonardo"
    label.font = UIFont.systemFont(ofSize: 16)
    label.textColor = UIColor.darkGray
    
    // utilizamos a linha abaixo para podermos construir as constrain
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  init() {
    super.init(frame: .zero)
    backgroundColor = .white
    addSubViews()
    constrainHelloLabel()
    constrainNameLabel()
  }
  
  required init?(coder: NSCoder) {
    fatalError()
  }
  
  
  private func addSubViews() {
    addSubview(helloLabel)
    addSubview(nameLabel)
  }
  
  private func constrainHelloLabel(){
    let constraint = [
      // construimos as constrain de acordo com o tamanho da View main
      helloLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
      helloLabel.centerYAnchor.constraint(equalTo: centerYAnchor)
    ]
    
    constraint.forEach { (item) in
      item.isActive = true
    }
  }
  
  private func constrainNameLabel() {
    let constraint = [
      // setamos a constrain do nameLabel para ficar embaixo do helloLabel
      nameLabel.topAnchor.constraint(equalTo: helloLabel.bottomAnchor, constant: 15),
      nameLabel.centerXAnchor.constraint(equalTo: helloLabel.centerXAnchor)
    ]
    
    constraint.forEach { (item) in
      item.isActive = true
    }
    
  }
}
