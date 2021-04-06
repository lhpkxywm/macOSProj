//
//  NSTextViewController.swift
//  MacOSProj
//
//  Created by LHP on 2021/4/3.
//

import Cocoa

class NSTextViewController: NSViewController {

    @IBOutlet var textView: NSTextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        // 关闭智能引号替换
        textView.isAutomaticQuoteSubstitutionEnabled = false
        // 设置富文本
        let attrText = NSMutableAttributedString(string: "MacOS开发")
        attrText.addAttributes([NSAttributedString.Key.foregroundColor : NSColor.orange], range: NSMakeRange(0, 5))
        textView.textStorage?.setAttributedString(attrText)
        // 可以直接设置背景色
        textView.backgroundColor = .lightGray
        /**
         设置文字的内边距
         width:设置左右的内边距
         height:设置上下的内边距
         */
        // textView.textContainerInset = NSSize(width: 0, height: 0)
        textView.delegate = self
    }
    
}

extension NSTextViewController: NSTextViewDelegate {
    /// 文本内容改变
    func textDidChange(_ notification: Notification) {
        print("文本实时内容=\(textView.string)")
    }
    /// 监听键盘指定按键
    func textView(_ textView: NSTextView, doCommandBy commandSelector: Selector) -> Bool {
        // insertNewline = 回车键
        // deleteBackward = 回退键
        // insertTab = tab键
        // moveUp = 上箭头
        // moveDown = 下箭头
        // moveLeft = 左方向键
        // moveRight = 右方向键
        if commandSelector.description == "insertNewline:" {
            print("换行")
        }
        // 返回false，由系统自动处理。如果返回true，则系统不处理。
        return false
    }
}
