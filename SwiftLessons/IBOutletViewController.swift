//
//  IBOutletViewController.swift
//  SwiftLessons
//
//  Created by Prince Avecillas on 1/28/23.
//

import UIKit

class IBOutletViewController: UIViewController {
    @IBOutlet weak var toggleSwitch: UISwitch!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var nameField: UITextField!
    
    @IBAction func submitButtonClicked(_ sender: UIButton) {
        let name = nameField.text ?? ""
        
        titleLabel.text = "Welcome, \(name)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        nameField.resignFirstResponder()
    }
    
    
    @IBAction func switchToggled(_ sender: UISwitch) {
        if sender.isOn {
            self.view.backgroundColor = .white
        } else {
            self.view.backgroundColor = .lightGray
        }
    }
}
