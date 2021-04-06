//
//  NSAlertController.swift
//  MacOSProj
//
//  Created by LHP on 2021/4/4.
//

import Cocoa

class NSAlertController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    @IBAction func showAlert(_ sender: NSButton) {
        let alert = NSAlert()
        alert.icon = NSImage(named: "userIcon")
        alert.messageText = "标题文字"
        alert.informativeText = "详情文字"
        //添加操作按钮，按钮顺序从右向左排列
        alert.addButton(withTitle: "取消")
        alert.addButton(withTitle: "确定")
        //显示帮助按钮
        alert.showsSuppressionButton = true
        //设置帮助按钮的文字
        alert.suppressionButton?.title = "帮助文字"
        /**
         样式
         warning = 0    警告
         informational = 1  提示
         critical = 2   致命
         */
        alert.alertStyle = .warning
        // 内嵌方式显示
        alert.beginSheetModal(for: view.window!) { (result) in
            if result == .alertFirstButtonReturn {
                print("点击了取消")
            } else if result == .alertSecondButtonReturn {
                print("点击了确定")
            }
            print("帮助选项按钮是否点击=\(String(describing: alert.suppressionButton?.state))")
        }
        // 单独弹出窗口显示
        // let result = alert.runModal()
    }
    
}
