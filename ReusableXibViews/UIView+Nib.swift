//
//  UIView+Nib.swift
//  ReusableXibViews
//
//  Created by Matthias Lamoureux on 13/01/2020.
//  Copyright © 2020 QSC. All rights reserved.
//

import UIKit

extension UIView {
    /// Load the view from a nib file called with the name of the class
    ///
    /// - Note: The first object of the nib file **must** be of the matching class
    static func loadFromNib() -> Self {
        let bundle = Bundle(for: self)
        let nib = UINib(nibName: String(describing: self), bundle: bundle)
        return nib.instantiate(withOwner: nil, options: nil).first as! Self
    }
}

