//
//  ViewController.swift
//  popbutton
//
//  Created by aosue on 2018/12/13.
//  Copyright © 2018 aosue. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let popBtn = NSPopUpButton()
        self.view.addSubview(popBtn)
        popBtn.frame = CGRect(x: 100, y: 150, width: 100, height: 50)
        popBtn.addItem(withTitle: "  OA几点呢我教你 ")
        popBtn.addItem(withTitle: "驾驶飞机可能吧")
        popBtn.addItem(withTitle: "我电话费欧文")
        popBtn.addItem(withTitle: "时间OS按实际开发")
        popBtn.addItem(withTitle: "   科技热会  ")
     
        popBtn.wantsLayer = true
        popBtn.layer?.backgroundColor = NSColor.red.cgColor
        
        
      
        for item in popBtn.itemArray {
            item.view?.layer?.backgroundColor = NSColor.red.cgColor
            item.attributedTitle = NSAttributedString(string: item.title,
                                                      attributes: [NSFontAttributeName: NSFont.systemFont(ofSize: 16),
                                                                   NSForegroundColorAttributeName: NSColor.init(red: 120, green: 214, blue: 214, alpha: 1),
                                                                   NSBackgroundColorAttributeName: NSColor.red,
                                                                   NSStrokeColorAttributeName: NSColor.green,
                                                                   NSStrikethroughColorAttributeName: NSColor.green,
                                                                   NSUnderlineColorAttributeName: NSColor.green,
                                                                   
                                                                   ])
        }
    
        
        
        
        
//        let Btn = NSButton()
//        Btn.frame = CGRect(x: 100, y: 100, width: 100, height: 33)
//        Btn.titleTextColor = NSColor.red
//        self.view.addSubview(Btn)
        
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}


extension NSButton {
    
    var titleTextColor : NSColor {
        get {
            let attrTitle = self.attributedTitle
            return attrTitle.attribute(NSForegroundColorAttributeName, at: 0, effectiveRange: nil) as! NSColor
        }
        
        set(newColor) {
            let attrTitle = NSMutableAttributedString(attributedString: self.attributedTitle)
            let titleRange = NSMakeRange(0, self.title.count)
            
            attrTitle.addAttributes([NSForegroundColorAttributeName: newColor], range: titleRange)
            self.attributedTitle = attrTitle
        }
    }
    
}

extension NSPopUpButton {
    
    var titleColor : NSColor {
        get {
            let attrTitle = self.attributedTitle
            return attrTitle.attribute(NSForegroundColorAttributeName, at: 0, effectiveRange: nil) as! NSColor
        }
        
        set(newColor) {
            let attrTitle = NSMutableAttributedString(attributedString: self.attributedTitle)
            let titleRange = NSMakeRange(0, self.title.count)
            
            attrTitle.addAttributes([NSForegroundColorAttributeName: newColor], range: titleRange)
            self.attributedTitle = attrTitle
        }
    }
    
}
