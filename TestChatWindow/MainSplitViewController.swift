//
//  MainSplitViewController.swift
//  TestChatWindow
//
//  Created by 吳淑菁 on 2017/9/14.
//  Copyright © 2017年 吳淑菁. All rights reserved.
//

import Cocoa

protocol splitViewProtocol {

    func collapseChatVC()
    func showChatVC()
    func compactProfile(iscompact :Bool)
    func isChatVCCollaped() -> Bool
}

class MainSplitViewController: NSSplitViewController,splitViewProtocol {
    
    @IBOutlet fileprivate weak var profileItem : NSSplitViewItem!
    @IBOutlet fileprivate weak var chatvcitem : NSSplitViewItem!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.splitView.translatesAutoresizingMaskIntoConstraints = false
        let profile = profileItem.viewController as! ProfileMainVC
        //profile.container = profileMainVCItem
        profile.panelInfo = self
        
        if let chatvc = chatvcitem?.viewController as? ChatVC {
            //chatvc.container = chatVCItem
            chatvc.panelInfo = self
            
        }
        
        //if let window = NSApplication.shared().mainWindow {
        //    window.setAnchorAttribute(.right, for: .horizontal)
        //}
        
    }
    
    func isChatVCCollaped() -> Bool {
        return (chatvcitem?.isCollapsed)!
        
    }
    
    func compactProfile(iscompact :Bool) {
        
        if let window = NSApplication.shared().mainWindow {
            
            window.setAnchorAttribute(.left, for: .horizontal)
            
            if iscompact {
                
                window.setContentSize(NSMakeSize(780,640))
                self.splitView.setPosition(180, ofDividerAt: 0)
            } else {
                window.setContentSize(NSMakeSize(960,640))
                self.splitView.setPosition(360, ofDividerAt: 0)
            }
        }
        
    }
    
    func showChatVC() {
        
        let c = chatvcitem.isCollapsed

        if let window = NSApplication.shared().mainWindow {
            window.setAnchorAttribute(.right, for: .horizontal)
            if !c {
                collapseChatVC()
            } else {
                
                chatvcitem?.isCollapsed = false
                window.setContentSize(NSMakeSize(960,640))
                self.splitView.setPosition(360, ofDividerAt: 0)
            }
        }
    }
    func collapseChatVC() {
        if profileItem.viewController.view.frame.width <= 180 { return }
        chatvcitem?.isCollapsed = true
        
        if let window = NSApplication.shared().mainWindow {
            
            window.setContentSize(NSMakeSize(360,640))
            self.splitView.setPosition(360, ofDividerAt: 0)
        }
        
    }
}
