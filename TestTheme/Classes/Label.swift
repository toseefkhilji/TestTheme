//
//  Label.swift
//  TestTheme
//
//  Created by Toseef Khilji on 19/03/20.
//  Copyright © 2020 Toseef. All rights reserved.
//

import UIKit

class Label: UILabel {
    override func layoutSubviews() {
        textColor = AppTheme.current.textfieldPlaceHolder
    }
}
