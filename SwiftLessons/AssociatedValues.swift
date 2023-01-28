//
//  AssociatedValues.swift
//  Learnings
//
//  Created by Prince Avecillas on 11/19/22.
//

import Foundation
import UIKit

class AssociatedValuesViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(Greeting.spanish(period: .afternoon).value)
    }
}
enum Greeting {
    case spanish(period: SpanishGreeting)
    case german(GermanGreeting)
    
    var value: String {
        switch self {
        case .spanish(let period):
            return period.rawValue
        case .german(let period):
            return period.rawValue
        }
    }
    
}
enum SpanishGreeting: String {
    case morning = "Buenos Dias"
    case afternoon = "Buenas Tardes"
    case night = "Buenas Noches"
}

enum GermanGreeting: String {
    case morning = "Guten Morgan"
    case afternoon = "Guten Tag"
    case night = "Gute Nacht"
}


