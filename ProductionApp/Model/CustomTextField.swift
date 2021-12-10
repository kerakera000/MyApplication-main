//
//  CustomTextField.swift
//  ProductionApp
//
//  Created by kerakera on 2021/12/06.
//

import UIKit

@IBDesignable class CustomTextField: UITextField {

    @IBInspectable var topPadding: CGFloat = 10
    @IBInspectable var bottomPadding: CGFloat = 10
    @IBInspectable var leftPadding: CGFloat = 10
    @IBInspectable var rightPadding: CGFloat = 10
    
    override open func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: UIEdgeInsets.init(top: topPadding, left: leftPadding, bottom: bottomPadding, right: rightPadding))
    }

    override open func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: UIEdgeInsets.init(top: topPadding, left: leftPadding, bottom: bottomPadding, right: rightPadding))
    }
}
