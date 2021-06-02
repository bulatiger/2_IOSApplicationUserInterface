//
//  StartPageViewController.swift
//  VK_GB
//
//  Created by Булат Минибаев on 31.05.2021.
//

import UIKit

class StartPageViewController: UIViewController {
    
    
    @IBOutlet weak var logoStartPageImage: UIImageView!
    @IBOutlet weak var registrationButton: UIButton!
    @IBOutlet weak var goToLoginViewButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logoStartPageImage.layer.cornerRadius = 25
        registrationButton.layer.cornerRadius = 8
        goToLoginViewButton.layer.cornerRadius = 8
    }
}
