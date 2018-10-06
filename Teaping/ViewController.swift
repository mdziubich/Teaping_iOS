//
//  ViewController.swift
//  Teaping
//
//  Created by Małgorzata Dziubich on 06/10/2018.
//  Copyright © 2018 GGC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: CurrencyField!

    @IBOutlet weak var actionButtton: UIButton!


    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        let tap = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        view.addGestureRecognizer(tap)

        textField.textAlignment = .center
        drawShdow(on: actionButtton)
        drawShdow(on: textField)
        actionButtton.layer.cornerRadius = actionButtton.frame.height / 2
    }

    @objc private func dismissKeyboard() {
        textField.endEditing(true)
    }

    func drawShdow(on view: UIView) {
        view.layer.shadowColor = UIColor.gray.cgColor
        view.layer.shadowOpacity = 1
        view.layer.shadowOffset = CGSize.zero
        view.layer.shadowRadius = 7
    }
}
