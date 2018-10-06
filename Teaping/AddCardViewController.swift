//
//  AddCardViewController.swift
//  Teaping
//
//  Created by Małgorzata Dziubich on 06/10/2018.
//  Copyright © 2018 GGC. All rights reserved.
//

import Foundation
import UIKit

final class AddClardViewController: UIViewController {

    @IBOutlet weak var numberTextField: UITextField!
    @IBOutlet weak var dateTextField: UITextField!
    @IBOutlet weak var cvvTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!

    @IBAction func addCard(_ sender: Any) {
        guard let number = numberTextField.text,
            !number.isEmpty,
            let date = dateTextField.text,
            !date.isEmpty,
            let cvv = cvvTextField.text,
            !cvv.isEmpty,
            let name = nameTextField.text,
            !name.isEmpty else {
                return
        }

    }

    @IBAction func closeView(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
