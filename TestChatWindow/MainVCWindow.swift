//
//  MainVCWindow.swift
//  TestChatWindow
//
//  Created by 吳淑菁 on 2017/9/13.
//  Copyright © 2017年 吳淑菁. All rights reserved.
//

import Cocoa

class MainVCWindow: NSWindow {
    
    override init(contentRect: NSRect, styleMask style: NSWindowStyleMask, backing bufferingType: NSBackingStoreType, defer flag: Bool) {
        
            super.init(contentRect: contentRect, styleMask: [.titled,.closable,.resizable,.miniaturizable],backing: NSBackingStoreType.buffered, defer: false)
        
            self.isOpaque = false
            self.makeKeyAndOrderFront(nil)
            self.makeMain()
            self.center()
        
            self.titlebarAppearsTransparent = true
            self.titleVisibility = .hidden
            self.styleMask = [.titled,.closable,.resizable,.miniaturizable,.fullSizeContentView] //NSFullSizeContentViewWindowMask
        

        
        }
    
    
    //required init?(coder: NSCoder) {fatalError("init(coder:) has not been implemented")}
   

}
