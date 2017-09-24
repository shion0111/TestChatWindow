//
//  ProfileMainVC.swift
//  TestChatWindow
//
//  Created by 吳淑菁 on 2017/9/13.
//  Copyright © 2017年 吳淑菁. All rights reserved.
//

import Cocoa

class ProfileMainVC: NSViewController {

    @IBOutlet weak var collapseSelf: NSButton!
    @IBOutlet weak var collapseChatVC: NSButton!
    @IBOutlet weak var widthConstrain: NSLayoutConstraint!
    var panelInfo:splitViewProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        
        
    }
    
    @IBAction func changeSelfWidth(_ sender:Any) {
        
        if (panelInfo?.isChatVCCollaped())! {return}
        
        if widthConstrain.constant > 180 {
            widthConstrain.constant = 180
            panelInfo?.compactProfile(iscompact: true)
        } else {
            widthConstrain.constant = 360
            panelInfo?.compactProfile(iscompact: false)
        }
        
        
        
    }
    @IBAction func collapseChatVC(_ sender:Any ) {
        panelInfo?.showChatVC()
    }
}
