//
//  ConstructViewsProtocol.swift
//  RxSwift To-Do App
//
//  Created by Ayesha Shaikh on 4/26/24.
//

/*
    Formalizes view construction into separate lifecycle steps
    - create views: creates abd initializes all child views
    - style views: sets style properties for each child view
    - layout views: sets layout constraints for each view
 */

import Foundation

protocol ConstructViewsProtocol {
    
    func createViews()
    
    func styleViews()
    
    func defineLayoutForViews()
}
