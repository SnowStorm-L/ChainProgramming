//
//  UIView+Extension.swift
//  ChainProgramming
//
//  Created by L on 2017/8/1.
//  Copyright © 2017年 L. All rights reserved.
//

import UIKit

extension UIView {
 
    @objc class var make: UIView {
        let view = UIView()
        return view
    }
    
    @discardableResult @objc
    func owner(_ superView: UIView) -> UIView {
        superView.addSubview(self)
        return self
    }
    
    @discardableResult @objc
    func bgColor(_ bgColor: UIColor?) -> UIView {
        backgroundColor = bgColor
        return self
    }
    
}
