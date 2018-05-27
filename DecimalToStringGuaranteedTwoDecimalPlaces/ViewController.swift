//
//  ViewController.swift
//  DecimalToStringGuaranteedTwoDecimalPlaces
//
//  Created by Xavier Lian on 5/27/18.
//  Copyright © 2018 XavierLian. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    override func viewDidLoad()
    {
        super.viewDidLoad()
        let whateverMan: Decimal = 1.2345
        let lbl = UILabel()
        lbl.text = """
        This app doesn't do anything. I only created this for the unit tests.
        Why did I create this?
        BECAUSE WHY NOT?! HAHAHAHAHAHAHAHAHA
        1.2345 rounded to 2 decimal places is \(whateverMan.toStringGuaranteedTwoDecimalPlaces())
        HAHAHAHAHAHHAHAHAHHAHAHAHAHAHAHAHAHHAHAHAHAHAHAHAHAHA
        """
        lbl.numberOfLines = 0
        lbl.lineBreakMode = .byWordWrapping
        lbl.textAlignment = .center
        view.addSubview(lbl)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        lbl.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        lbl.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        lbl.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
    }
}

