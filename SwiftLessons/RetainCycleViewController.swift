//
//  RetainCycleViewController.swift
//  Learnings
//
//  Created by Prince Avecillas on 11/18/22.
//

import UIKit

class RetainCycleViewController: UIViewController {

    var peter: User?
    var louis: User?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        peter = User(firstName: "Peter", lastName: "Griffin")
        louis = User(firstName: "Louis", lastName: "Quagmire")

        peter?.spouse = louis
        louis?.spouse = peter
        
        peter = nil
        louis = nil
    }
}

class User {
    let firstName: String
    let lastName: String
    weak var spouse: User?
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    deinit {
        print("\(firstName) has been removed from memory")
    }
}
