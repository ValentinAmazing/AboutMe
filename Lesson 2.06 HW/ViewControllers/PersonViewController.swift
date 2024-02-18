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

    var personData: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        nameLabel.text = personData.name
        surnameLabel.text = personData.surname
        companyLabel.text = personData.company
        departmentLabel.text = personData.department
        positionLabel.text = personData.position
    }
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let bioVC = segue.destination as? BioViewController
        
        bioVC?.bio = Bio(
            name: personData.name,
            surname: personData.surname,
            bio: personData.bio
        )
    }
}
