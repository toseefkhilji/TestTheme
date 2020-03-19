//
//  ViewController.swift
//  TestTheme
//
//  Created by Toseef Khilji on 19/03/20.
//  Copyright © 2020 Toseef. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var iswitch: UISwitch!
    @IBOutlet var slider: UISlider!
    @IBOutlet var activityView: UIActivityIndicatorView!

    @IBOutlet var btn1: UIButton!
    @IBOutlet var btn2: UIButton!
    @IBOutlet var btn3: UIButton!
    @IBOutlet var segment: UISegmentedControl!

    @IBOutlet var textfield: UITextField!

    @IBOutlet var label1: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupUI()
    }

    func setupUI() {
        slider.minimumTrackTintColor = AppTheme.current.primary
        segment.tintColor = AppTheme.current.primary
        label1.textColor = AppTheme.current.labelPlaceholder
        activityView.color = AppTheme.current.primary
        iswitch.onTintColor = AppTheme.current.primary
        view.backgroundColor = AppTheme.current.background
        textfield.textColor = AppTheme.current.textfieldText
        textfield.tintColor = AppTheme.current.textfieldTint

        btn1.backgroundColor = AppTheme.current.primary
        btn1.setTitleColor(AppTheme.current.buttonTitle, for: .normal)
        btn2.setTitleColor(AppTheme.current.buttonTitle, for: .normal)
        btn2.backgroundColor = AppTheme.current.secondary

    }
}
