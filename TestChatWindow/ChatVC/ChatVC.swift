//
//  ChatVC.swift
//  TestChatWindow
//
//  Created by 吳淑菁 on 2017/9/13.
//  Copyright © 2017年 吳淑菁. All rights reserved.
//

import Cocoa

class ChatVC: NSViewController {


    var panelInfo:splitViewProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    @IBAction func collapseSelf(_ sender:Any) {
        
        panelInfo?.collapseChatVC()
        
    }
}
