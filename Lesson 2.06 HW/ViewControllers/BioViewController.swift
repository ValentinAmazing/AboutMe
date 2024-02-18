//
//  BioViewController.swift
//  Lesson 2.06 HW
//
//  Created by Valentin on 18.02.2024.
//

import UIKit

final class BioViewController: UIViewController {

    @IBOutlet weak var fioBioLabel: UILabel!
    @IBOutlet weak var bioLabel: UILabel!
    
    var bio: Bio!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        fioBioLabel.text = ("\(bio.name) \(bio.surname) Bio")
        bioLabel.text = bio.bio
    }
}
