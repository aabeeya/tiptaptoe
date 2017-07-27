//
//  SettingsViewController.swift
//  tiptaptoe
//
//  Created by Aabeeya on 7/26/17.
//  Copyright © 2017 Aabeeya Salman. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var tipConfirmation: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Check to see if there's already a default
        let userDefaults = UserDefaults.standard
        let tipIndex = userDefaults.integer(forKey: "tipIndex")
        tipControl.selectedSegmentIndex = tipIndex
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func setTipIndex(_ sender: UISegmentedControl) {
        let userDefaults = UserDefaults.standard
        userDefaults.set(tipControl.selectedSegmentIndex, forKey: "tipIndex");
        userDefaults.synchronize()

        // Add an animation to confim that the new setting was saved
        UIView.animate(withDuration: 2.0, animations: {
            self.tipConfirmation.alpha = 1
            UIView.animate(withDuration: 4.0, animations: {
                self.tipConfirmation.alpha = 0
            });
        });
    }

    @IBAction func backClicked(_ sender: UIBarButtonItem) {
        _ = navigationController?.popViewController(animated: true)
    }
}
