//
//  NibWrapped.swift
//  ReusableXibViews
//
//  Created by Matthias Lamoureux on 13/01/2020.
//  Copyright © 2020 QSC. All rights reserved.
//

import UIKit

/// Property wrapper used to wrapp a view instanciated from a Nib
@propertyWrapper @dynamicMemberLookup public struct NibWrapped<T: UIView> {
    
    /// Initializer
    ///
    /// - Parameter type: Type of the wrapped view
    public init(_ type: T.Type) { }
    
    /// The wrapped value
    public var wrappedValue: UIView!
    
    /// The final view
    public var unwrapped: T { (wrappedValue as! NibWrapperView<T>).contentView }
    
    /// Dynamic member lookup to transfer keypath to the final view
    public subscript<U>(dynamicMember keyPath: KeyPath<T,U>) -> U { unwrapped[keyPath: keyPath] }

    /// Dynamic member lookup to transfer writable keypath to the final view
    public subscript<U>(dynamicMember keyPath: WritableKeyPath<T,U>) -> U {
        get { unwrapped[keyPath: keyPath] }
        set {
            var unwrappedView = unwrapped
            unwrappedView[keyPath: keyPath] = newValue
        }
    }
}

