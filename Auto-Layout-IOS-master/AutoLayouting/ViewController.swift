//
//  ViewController.swift
//  AutoLayouting
//
//  Created by BANYUSTUDIO ID on 26/07/19.
//  Copyright © 2019 Banyu Center. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        topView.roundedBottom()
    }


}

extension UIView{
    func roundedBottom(){
        let maskPath1 = UIBezierPath(roundedRect: bounds,
                                     byRoundingCorners: [.bottomRight , .bottomLeft],
                                     cornerRadii: CGSize(width: 15, height: 15))
        let maskLayer1 = CAShapeLayer()
        maskLayer1.frame = bounds
        maskLayer1.path = maskPath1.cgPath
        layer.mask = maskLayer1
    }
}

