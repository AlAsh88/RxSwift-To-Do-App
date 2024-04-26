//
//  ViewController.swift
//  RxSwift To-Do App
//
//  Created by Ayesha Shaikh on 4/26/24.
//

/*
    Step-by-step-guide:
    1. Design your Interface:
        1. A textfield to enter new tasks
        2. A button to add tasks to the list
        3. A tableview to display the list of tasks
        4. A toggle to mark as complete
    
    2. Project Structure in Clean Architecture:
        1. Entities: Contains the core business logic and simple data objects. These are pure Swift types with no framework dependencies.
        2. Use Cases (Interactors): Contains the business logic that manipulates entities. This layer handles the flow of data and interactions between entities and other layers.
        3. Interfaces (Protocols): Defines contracts between the outer and inner layers, providing abstraction for communication.
        4. Repositories: Provides data access services, allowing interaction with persistent storage, API, or other external resources.
        5. Presenters: Translates data from the use cases to a format suitable for the user interface. Acts as an intermediary between interactors and the user interface.
        6. UI (Controllers, Views, View Models): Contains user interface components like view controllers, views, and RxSwift-based reactive bindings.
 */

import UIKit
import RxSwift

class ToDoViewController: UIViewController {
    
    var taskTextField: UITextField!
    var tileLabel: UILabel!
    var taskButton: UIButton!
    var buttonLabel: UILabel!
    var taskButtonWidth: NSLayoutConstraint!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        buildViews()
        
    }


}

