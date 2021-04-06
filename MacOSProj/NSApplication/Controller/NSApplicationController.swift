//
//  NSApplicationController.swift
//  MacOSProj
//
//  Created by LHP on 2021/4/3.
//

import Cocoa

class NSApplicationController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    /// 关闭程序
    /// - Parameter sender: 按钮
    @IBAction func closeApp(_ sender: NSButton) {
        // NSApplication.shared.terminate(nil)
        NSApp.terminate(nil)
    }
    
    /// 设置角标数字
    /// - Parameter sender: 按钮
    @IBAction func showBradgeNum(_ sender: Any) {
        NSApp.dockTile.badgeLabel = "1"
    }
    
    @IBAction func bounceDockIcon(_ sender: NSButton) {
        /**
         criticalRequest 多次跳动，直到用户选中App为活动状态
         informationalRequest 单次跳动
         */
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 5) {
            NSApp.requestUserAttention(.criticalRequest)
        }
    }
}
