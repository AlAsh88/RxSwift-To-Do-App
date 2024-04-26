//
//  ToDoViewController+Design.swift
//  RxSwift To-Do App
//
//  Created by Ayesha Shaikh on 4/26/24.
//

import UIKit
import PureLayout

extension ToDoViewController: ConstructViewsProtocol {

    func buildViews() {
        createViews()
        styleViews()
        defineLayoutForViews()
    }
    
    func createViews() {
        taskTextField = UITextField()
        view.addSubview(taskTextField)
        
        tileLabel = UILabel()
        taskTextField.addSubview(tileLabel)
        
        taskButton = UIButton()
        view.addSubview(taskButton)
        
        buttonLabel = UILabel()
        taskButton.addSubview(buttonLabel)
    }
    
    func styleViews() {
        view.backgroundColor = .systemBlue
        taskTextField.backgroundColor = .white
        taskButton.backgroundColor = .systemGreen
        
        tileLabel.text = "Note Taking App"
        buttonLabel.text = "Submit"
    }
    
    func defineLayoutForViews() {
        taskTextField.autoPinEdge(toSuperviewEdge: .top)
        taskTextField.autoPinEdge(toSuperviewEdge: .leading)
        taskTextField.autoPinEdge(toSuperviewEdge: .trailing)
        taskTextField.autoPinEdge(toSuperviewEdge: .bottom, withInset: 450)
        
        tileLabel.autoAlignAxis(toSuperviewAxis: .vertical)
        tileLabel.autoPinEdge(toSuperviewSafeArea: .top, withInset: 10)
        
        taskButtonWidth = taskButton.autoSetDimension(.width, toSize: 200)
        taskButton.autoAlignAxis(toSuperviewAxis: .vertical)
        taskButton.autoPinEdge(toSuperviewEdge: .bottom, withInset: 50)
        
        buttonLabel.autoPinEdge(toSuperviewMargin: .top, relation: .equal)
//        buttonLabel.autoPinEdge(.trailing, to: .leading, of: taskButton)
        buttonLabel.textAlignment = .center
    }
    
    
}
