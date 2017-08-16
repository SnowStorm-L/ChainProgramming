//
//  UIButton+Extension.swift
//  ChainProgramming
//
//  Created by L on 2017/8/2.
//  Copyright © 2017年 L. All rights reserved.
//

import UIKit

extension UIButton {
  
    struct Constant {
        static var buttonActionKey = "buttonAction"
    }
    
    override class var make: UIButton {
        let view = UIButton(type: .system)
        return view
    }

    @discardableResult
    override func owner(_ superView: UIView) -> UIButton {
        superView.addSubview(self)
        return self
    }

    @discardableResult
    override func bgColor(_ bgColor: UIColor?) -> UIButton {
        backgroundColor = bgColor
        return self
    }
    
    @discardableResult
    func image(_ image: UIImage?, state: UIControlState = UIControlState.normal) -> UIButton {
        setImage(image, for: state)
        return self
    }
    
    @discardableResult
    func title(_ title: String?, state: UIControlState = UIControlState.normal) -> UIButton {
        setTitle(title, for: state)
        return self
    }
    
    @discardableResult
    func titleColor(_ titleColor: UIColor?, state: UIControlState = UIControlState.normal) -> UIButton {
        setTitleColor(titleColor, for: state)
        return self
    }
    
    @discardableResult
    func bgImage(_ image: UIImage?, state: UIControlState = UIControlState.normal) -> UIButton {
        setBackgroundImage(image, for: state)
        return self
    }
    
    @discardableResult
    func attributedTitle(_ attributedTitle: NSAttributedString?, state: UIControlState = UIControlState.normal) -> UIButton {
        setAttributedTitle(attributedTitle, for: state)
        return self
    }
    
    @discardableResult
    func addAction(_ controlEvents: UIControlEvents = UIControlEvents.touchUpInside, action: @escaping (_ sender: UIButton?)->Void) -> UIButton {
        buttonActionClosure = action
        addTarget(self, action: #selector(buttonAction(sender:)), for: controlEvents)
        return self
    }
    
    @objc @discardableResult
    fileprivate func buttonAction(sender: UIButton) -> UIButton {
        buttonActionClosure?(sender)
        return self
    }
    
    fileprivate var buttonActionClosure: ((_ sender: UIButton?)->Void)? {
        set {
            objc_setAssociatedObject(self, &Constant.buttonActionKey, newValue, .OBJC_ASSOCIATION_COPY_NONATOMIC)
        }
        get {
            return (objc_getAssociatedObject(self, &Constant.buttonActionKey)) as? ((_ sender: UIButton?)->Void)
        }
    }
    
}
