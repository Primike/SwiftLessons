//
//  LoginViewController.swift
//  Learnings
//
//  Created by Prince Avecillas on 11/20/22.
//

import UIKit

class LoginViewController: UIViewController {

    let loginView = LoginPageView(frame: .zero)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        layout()
    }
    
    func layout() {
        loginView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(loginView)
        
        NSLayoutConstraint.activate([
            loginView.topAnchor.constraint(equalTo: view.topAnchor),
            loginView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            loginView.leftAnchor.constraint(equalTo: view.leftAnchor),
            loginView.rightAnchor.constraint(equalTo: view.rightAnchor),
        ])
        
    }

}
