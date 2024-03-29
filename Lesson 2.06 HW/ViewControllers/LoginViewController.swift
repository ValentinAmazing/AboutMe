//
//  ViewController.swift
//  Lesson 2.06 HW
//
//  Created by Valentin on 11.02.2024.
//

import UIKit

final class LoginViewController: UIViewController {
    
    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    private let userData = Account.getAccount()
    
    private var correctUser = ""
    private var correctPassword = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        correctUser = userData.login
        correctPassword = userData.password
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }

    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard
            userNameTF.text == correctUser,
            passwordTF.text == correctPassword
        else {
            showAlert(
                withTitle: "Invalid login or password",
                andMessage: "Please, enter correct login and password"
            )
            return false
        }
        return true
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarVC = segue.destination as? UITabBarController
        
        tabBarVC?.viewControllers?.forEach { viewController in
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.userName = userData.person.name
            } else if let personNavigationVC = viewController as? UINavigationController {
                personNavigationVC.title = "\(userData.person.name) \(userData.person.surname)"
                
                let personVC = personNavigationVC.topViewController as? PersonViewController
                personVC?.personData = userData.person
            }

        }
    }
        
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }

    @IBAction func forgotUserNameBtn() {
        showAlert(withTitle: "Oops!", andMessage: "Your name is \(correctUser)  \u{1F436}")
    }
    
    @IBAction func forgotPasswordBtn() {
        showAlert(withTitle: "Oops!", andMessage: "Your password is \(correctPassword) \u{1F436}")
    }
        
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTF.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
}

