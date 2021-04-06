//
//  NSMenuController.swift
//  MacOSProj
//
//  Created by LHP on 2021/4/4.
//

import Cocoa

class NSMenuController: NSViewController {

    @IBOutlet var sbMenu: NSMenu!
    @IBOutlet weak var handleBtn: NSButton!
    @IBOutlet weak var listBtn: NSButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        let listMenu = NSMenu(title: "右键菜单")
        
        let orderItem = NSMenuItem(title: "排列", action: #selector(orderItemAction), keyEquivalent: "")
        listMenu.addItem(orderItem)
        
        let refreshItem = NSMenuItem(title: "刷新", action: #selector(refreshItemAction), keyEquivalent: "")
        listMenu.addItem(refreshItem)
        
        let reNameItem = NSMenuItem(title: "重命名", action: #selector(reNameItemAction), keyEquivalent: "")
        listMenu.addItem(reNameItem)
        
        let deleteItem = NSMenuItem(title: "删除", action: #selector(deleteItemAction), keyEquivalent: "")
        listMenu.addItem(deleteItem)
        
        listBtn.menu = listMenu
    }
    @IBAction func handleBtnClick(_ sender: NSButton) {
        let handleMenu = NSMenu(title: "左键菜单")
        let newItem = NSMenuItem(title: "新建", action: #selector(newMenuAction), keyEquivalent: "")
        handleMenu.addItem(newItem)
        let openItem = NSMenuItem(title: "打开", action: #selector(openMenuAction), keyEquivalent: "")
        handleMenu.addItem(openItem)
        let closeItem = NSMenuItem(title: "关闭", action: #selector(closeMenuAction), keyEquivalent: "")
        handleMenu.addItem(closeItem)
        NSMenu.popUpContextMenu(handleMenu, with: NSApp.currentEvent!, for: sender)
    }
    @IBAction func mainMenuBtnClick(_ sender: NSButton) {
        let mainMenu = NSApp.mainMenu
        let myMenu = NSMenu(title: "说明")
        let aboutItem = NSMenuItem(title: "关于", action: #selector(aboutItemAction), keyEquivalent: "")
        myMenu.addItem(aboutItem)
        let preferenceItem = NSMenuItem(title: "设置", action: #selector(preferenceItemAction), keyEquivalent: "")
        myMenu.addItem(preferenceItem)
        let quitItem = NSMenuItem(title: "关闭", action: #selector(closeMenuAction), keyEquivalent: "")
        myMenu.addItem(quitItem)
        
        let firstMenuItem = mainMenu?.items.first
        firstMenuItem?.submenu = myMenu
        // firstMenuItem?.submenu?.insertItem(aboutItem, at: 0)
        // firstMenuItem?.submenu?.insertItem(withTitle: "关闭", action: #selector(closeMenuAction), keyEquivalent: "", at: 1)
    }
    
    @objc func orderItemAction() {
        print("排列")
    }
    
    @objc func refreshItemAction() {
        print("刷新")
    }
    
    @objc func reNameItemAction() {
        print("重命名")
    }
    
    @objc func deleteItemAction() {
        print("删除")
    }
    
    @objc func newMenuAction() {
        print("新建")
    }
    
    @objc func openMenuAction() {
        print("打开")
    }
    
    @objc func closeMenuAction() {
        print("关闭")
    }
    
    @objc func aboutItemAction() {
        print("关于")
    }
    
    @objc func preferenceItemAction() {
        print("设置")
    }
    
    @IBAction func menuItemClick(_ sender: NSMenuItem) {
        print("点击了\(sender.title)")
    }
    
}
