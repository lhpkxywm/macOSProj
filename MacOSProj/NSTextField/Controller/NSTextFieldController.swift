//
//  NSTextFieldController.swift
//  MacOSProj
//
//  Created by LHP on 2021/4/3.
//

import Cocoa

class NSTextFieldController: NSViewController {

    @IBOutlet weak var label: NSTextField!
    @IBOutlet weak var normalTF: NSTextField!
    @IBOutlet weak var passwordTF: NSSecureTextField!
    @IBOutlet weak var numberTF: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        label.stringValue = "normalLabel"
        passwordTF.placeholderString = "请输入密码"
        // 设置代理监听输入
        normalTF.delegate = self
    }
    
}

extension NSTextFieldController: NSTextFieldDelegate {
    // 监听TextField开始编辑
    func controlTextDidBeginEditing(_ obj: Notification) {
        print("开始编辑")
    }
    // 监听TextField文本改变
    func controlTextDidChange(_ obj: Notification) {
        print("修改内容")
    }
    // 监听TextField结束编辑
    func controlTextDidEndEditing(_ obj: Notification) {
        print("结束编辑")
    }
    // 监听键盘特定按键输入事件
    func control(_ control: NSControl, textView: NSTextView, doCommandBy commandSelector: Selector) -> Bool {
        // insertNewLine = 回车键
        // deleteBackward = 回退键
        if commandSelector.description == "deleteBackward:" {
            print("回退")
        }
        // 返回false，由系统自动处理。如果返回true，则系统不处理。
        return false
    }
}
