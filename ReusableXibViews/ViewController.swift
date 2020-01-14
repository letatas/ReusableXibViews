//
//  ViewController.swift
//  ReusableXibViews
//
//  Created by Matthias Lamoureux on 13/01/2020.
//  Copyright © 2020 QSC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @NibWrapped(MessageView.self)
    @IBOutlet var messageView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        _messageView.message = "That's awesome !!!"
        _messageView.symbol = "heart"
    }


}

