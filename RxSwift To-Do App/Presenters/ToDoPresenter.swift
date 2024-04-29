//
//  ToDoPresenter.swift
//  RxSwift To-Do App
//
//  Created by Ayesha Shaikh on 4/26/24.
//

import UIKit
import RxSwift

class ToDoPresenter {
    
    // Saving To-dos
    func saveTodos(_ todos: [ToDoViewModel]) {
        let defaults = UserDefaults.standard
        if let encoded = try? JSONEncoder().encode(todos) {
            defaults.set(encoded, forKey: "todos")
        }
    }
    
    // Loading To-dos
    func loadTodos() -> [ToDoViewModel] {
        let defaults = UserDefaults.standard
        if let data = defaults.data(forKey: "todos"),
           let decoded = try? JSONDecoder().decode([ToDoViewModel].self, from: data) {
            return decoded
        }
        return []
    }


    
}
