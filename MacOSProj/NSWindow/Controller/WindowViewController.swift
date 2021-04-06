//
//  WindowViewController.swift
//  MacOSProj
//
//  Created by LHP on 2021/4/3.
//

import Cocoa

class WindowViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    override func viewDidAppear() {
        super.viewDidAppear()
        let window = view.window
        // 通过window设置背景色
        window?.backgroundColor = .orange
        // 设置窗口左上角按钮，隐藏不需要的按钮
        // 隐藏最小化按钮
        // window?.standardWindowButton(.miniaturizeButton)?.isHidden = true
        // 隐藏缩放按钮
        window?.standardWindowButton(.zoomButton)?.isHidden = true
        
        // 窗口的level
        /**
         level的级别决定窗口之间的覆盖关系
         级别越高的显示层级越靠近用户
         级别越低的显示层级越远离用户
         同层级，后出现的显示在最上面
         默认层级为normal
         */
        window?.level = .normal
        // 点击窗口背景，支持拖动窗口
        window?.isMovableByWindowBackground = true
        // 设置最小化后窗口的角标
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 5) {
            window?.dockTile.badgeLabel = "1"
        }
    }
    
}
