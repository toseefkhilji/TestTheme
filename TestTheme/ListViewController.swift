//
//  ViewController.swift
//  TestTheme
//
//  Created by Toseef Khilji on 19/03/20.
//  Copyright © 2020 Toseef. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {

    @IBOutlet var navBar: UIView!
    @IBOutlet var cardV: UIView!
    @IBOutlet var lblHeader: UILabel!
    @IBOutlet var lblcardHeader: UILabel!
    @IBOutlet var lbldetail1: UILabel!
    @IBOutlet var lbldetail2: UILabel!
    @IBOutlet var lbldetail3: UILabel!

    @IBOutlet var stackView: UIStackView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        let card2 = cardV!
        stackView.addArrangedSubview(card2)
        stackView.addArrangedSubview(card2)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupUI()
    }
    
    private func setupUI() {
        view.backgroundColor = AppTheme.current.background
        cardV.backgroundColor = AppTheme.current.cardViewBackground
        navBar.backgroundColor = AppTheme.current.navigationBar
        lblHeader.textColor = AppTheme.current.navigationBarTint
        lblcardHeader.textColor = AppTheme.current.labelheader
        lbldetail1.textColor = AppTheme.current.labelDetail
        lbldetail2.textColor = AppTheme.current.labelDetail
        lbldetail3.textColor = AppTheme.current.labelDetail
    }
}

