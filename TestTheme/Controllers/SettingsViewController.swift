//
//  ViewController.swift
//  TestTheme
//
//  Created by Toseef Khilji on 19/03/20.
//  Copyright © 2020 Toseef. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet var segment: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupUI()
    }

    @IBAction func themeChanged(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            AppTheme.current = .dark
        } else if sender.selectedSegmentIndex == 1  {
            AppTheme.current = .light
        } else {
            var dictionary: [String: Any] = [:]
            dictionary["primary"] = "ff0000"
            dictionary["secondary"] = "00ff00"
            dictionary["background"] = "ffffff"
            dictionary["titleColor"] = "0000ff"
            dictionary["placeHolder"] = "606062"
            dictionary["textfieldText"] = "707072"
            dictionary["error"] = "ff0000"
            dictionary["cardView"] = "ffffff"
            let newTheme = AppTheme(with: dictionary)
            AppTheme.current = newTheme
        }
        setupUI()
    }

    private func setupUI() {
        view.backgroundColor = AppTheme.current.background
        segment.tintColor = AppTheme.current.primary
        if let tabbar = self.view.window?.rootViewController as? UITabBarController {
            tabbar.tabBar.backgroundColor = AppTheme.current.cardViewBackground
            tabbar.tabBar.isTranslucent = true
            tabbar.tabBar.tintColor = AppTheme.current.primary
        }
    }

}

