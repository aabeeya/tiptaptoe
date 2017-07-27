//
//  ViewController.swift
//  tiptaptoe
//
//  Created by Aabeeya on 7/26/17.
//  Copyright © 2017 Aabeeya Salman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()

        billField.becomeFirstResponder()
    }

    override func viewWillAppear(_ animated: Bool) {
        // Check to see if there's already a default
        // Perform this on viewWillAppear instead of
        // viewDidLoad to force the tipControl to reflect
        // whatever the user selects in Settings,
        // returning from which doesn't call viewDidLoad
        // but does call viewDidAppear
        // #lifecycle

        let originalTipIndex = tipControl.selectedSegmentIndex

        let userDefaults = UserDefaults.standard
        let tipIndex = userDefaults.integer(forKey: "tipIndex")

        if (tipIndex != originalTipIndex) {
            tipControl.selectedSegmentIndex = tipIndex
            calculateTip({})
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }

    @IBAction func calculateTip(_ sender: Any) {

        let tipPercentages = [0.18, 0.2, 0.25]

        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip

        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}

