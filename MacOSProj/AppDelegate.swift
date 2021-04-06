//
//  AppDelegate.swift
//  MacOSProj
//
//  Created by LHP on 2020/11/22.
//

import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {

    


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
    
    /// 关闭程序后点击dock窗口
    /// - Parameters:
    ///   - sender: App对象
    ///   - flag: 窗口状态
    /// - Returns: 返回值
    func applicationShouldHandleReopen(_ sender: NSApplication, hasVisibleWindows flag: Bool) -> Bool {
        if flag == false {
            // 获取App的窗口
            // NSApp.mainWindow 主窗口
            // NSApp.keyWindow 可输入的窗口
            // NSApp.window(withWindowNumber: <#T##Int#>) 根据窗口号获取
            let window = NSApp.keyWindow
            // 让窗口显示出来
            window?.makeKeyAndOrderFront(nil)
            return true
        }
        return flag
    }

    func applicationDockMenu(_ sender: NSApplication) -> NSMenu? {
        let dockMenu = NSMenu(title: "Dock菜单")
        let dockItem = NSMenuItem(title: "Dock菜单项", action: #selector(dockItemAction), keyEquivalent: "")
        dockMenu.addItem(dockItem)
        return dockMenu
    }
    
}

extension AppDelegate {
    @objc func dockItemAction() {
        print("Dock图标被点击")
    }
}

