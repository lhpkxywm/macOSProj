//
//  NSPopoverController.swift
//  MacOSProj
//
//  Created by LHP on 2021/4/4.
//

import Cocoa

class NSPopoverController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    @IBAction func showPopover(_ sender: NSButton) {
        let popover = NSPopover()
        let popoverVc = NSStoryboard(name: "NSPopover", bundle: nil).instantiateController(identifier: "popover") as NSViewController
        popover.contentViewController = popoverVc
        //在当前界面的右侧展示辅助窗口
        popover.show(relativeTo: view.bounds, of: view, preferredEdge: .maxX)
    }
}
