//
//  RoundedCornersView.swift
//  SwiftUICollectionViewCustom
//
//  Created by Javier on 31/8/15.
//  Copyright (c) 2015 Javier. All rights reserved.
//

import UIKit

@IBDesignable
class RoundedCornersView: UIView {
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = cornerRadius > 0
        }
    }
    
}
