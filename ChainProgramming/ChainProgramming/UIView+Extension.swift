//
//  UIView+Extension.swift
//  ChainProgramming
//
//  Created by L on 2017/8/1.
//  Copyright © 2017年 L. All rights reserved.
//

import UIKit

extension UIView {
 
    class var make: UIView {
        let view = UIView()
        return view
    }
    
    func owner(_ superView: UIView) -> UIView {
        superView.addSubview(self)
        return self
    }
    
    func bgColor(_ bgColor: UIColor?) -> UIView {
        backgroundColor = bgColor
        return self
    }
    
    func layout(_ location: [CGFloat]) -> UIView {
        assert(location.count == 4, "X,Y,W,H")
        frame = CGRect(x: location[0], y: location[1], width: location[2], height: location[3])
        return self
    }
    
}
