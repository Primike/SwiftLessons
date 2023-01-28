//
//  ViewController.swift
//  Learnings
//
//  Created by Prince Avecillas on 11/16/22.
//

import UIKit

class ViewController: UIViewController {

    let loginView = LoginPageView(frame: .zero)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let group = DispatchGroup()
        
        let queue1 = DispatchQueue(label: "first")
        queue1.async(group: group) {
            sleep(4)
            print("first")
        }
        
        let queue2 = DispatchQueue(label: "second")
        queue2.async(group: group) {
            sleep(2)
            print("second")
        }
        
        group.notify(queue: DispatchQueue.main) {
            print("All done")
        }
        
        print("layout")
        layout()
        
    }

    var button1: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("button1", for: .normal)
        button.layer.cornerRadius = 25
        button.backgroundColor = .orange
        button.addTarget(self, action: #selector(button1Tapped), for: .primaryActionTriggered)
        
        return button

    }()
    
    var button2: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("button2", for: .normal)
        button.layer.cornerRadius = 25
        button.backgroundColor = .orange
        button.addTarget(self, action: #selector(button2Tapped), for: .primaryActionTriggered)

        return button

    }()
    
    func layout() {
        view.addSubview(button1)
        view.addSubview(button2)
        
        NSLayoutConstraint.activate([
            button1.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            button1.widthAnchor.constraint(equalToConstant: 200),
            button1.heightAnchor.constraint(equalToConstant: 50),
            button1.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            button2.topAnchor.constraint(equalTo: button1.bottomAnchor),
            button2.widthAnchor.constraint(equalToConstant: 200),
            button2.heightAnchor.constraint(equalToConstant: 50),
            button2.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
        
    }
    
    @objc func button1Tapped() {
        let queue = DispatchQueue(label: "downloadimage")
        
        queue.async {
            sleep(3)
            
            DispatchQueue.main.async {
                self.view.backgroundColor = .green
            }
        }
        view.backgroundColor = .blue
    }
    
    @objc func button2Tapped() {
        view.backgroundColor = .red
    }
}

