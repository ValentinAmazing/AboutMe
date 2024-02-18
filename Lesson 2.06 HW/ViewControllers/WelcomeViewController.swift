//
//  WelcomeViewController.swift
//  Lesson 2.06 HW
//
//  Created by Valentin on 11.02.2024.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!

    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        welcomeLabel.text = "Welcome, \(userName ?? "")!"
    }
    
}
