//
//  PersonViewController.swift
//  Lesson 2.06 HW
//
//  Created by Valentin on 18.02.2024.
//

import UIKit

final class PersonViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    @IBOutlet weak var companyLabel: UILabel!
    @IBOutlet weak var departmentLabel: UILabel!
    @IBOutlet weak var positionLabel: UILabel!

    var userData: Account!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        nameLabel.text = userData.name
        surnameLabel.text = userData.surname
        companyLabel.text = userData.company
        departmentLabel.text = userData.department
        positionLabel.text = userData.position
    }
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let bioVC = segue.destination as? BioViewController
        
        bioVC?.bio = Bio(
            name: userData.name,
            surname: userData.surname,
            bio: userData.bio
        )
    }
}
