//
//  AboutViewController.swift
//  AboutMeApp
//
//  Created by Evgeny Likhachev on 11/10/23.
//

import UIKit

final class AboutViewController: UIViewController {
    
    @IBOutlet var aboutText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        applyGradient(to: self)
        
        aboutText.text = Person.getPersonInfo().about
    }
}
