//
//  NSButtonController.swift
//  MacOSProj
//
//  Created by LHP on 2020/11/22.
//

import Cocoa

class NSButtonController: NSViewController {
    
    @IBOutlet weak var pushBtn: NSButton!
    @IBOutlet weak var texturedRoundBtn: NSButton!
    @IBOutlet weak var popUpBtn: NSPopUpButton!
    @IBOutlet weak var checkBtn: NSButton!
    @IBOutlet weak var radioBtn: NSButton!
    @IBOutlet weak var roundReactBtn: NSButton!
    @IBOutlet weak var inlineBtn: NSButton!
    @IBOutlet weak var imgBtn: NSButton!
    @IBOutlet weak var onOffBtn: NSButton!
    @IBOutlet weak var otherBtn: NSButton!
    @IBOutlet weak var helpBtn: NSButton!
    @IBOutlet weak var squareBtn: NSButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //按钮的常用属性
        //1.title
        pushBtn.title = "按钮文字"
        //2。image
        imgBtn.image = NSImage(named: "userIcon")
        //3.state:Int on,off,mixed
        //pushBtn.state = NSControlStateValueOn
        pushBtn.state = NSControl.StateValue.on
        //4.alternateTitle按钮状态文字
        pushBtn.alternateTitle = "开启状态文字"
        //5.imagePosition=按钮中图片和文字的位置关系
        /**
         noImage:不显示图片
         imageOnly:仅显示图片
         imageLeft:图片在左边
         imageRight:图片在右边
         imageBelow:图片在下边
         imageAbove:图片在上边
         imageOverlaps:图片文字混合显示
         imageLeading:图片正方向
         imageTrailing:图片逆方向
         */
        squareBtn.imagePosition = NSControl.ImagePosition.imageRight
        squareBtn.imagePosition = NSControl.ImagePosition.imageTrailing
        //6.imageScaling:NSImageScaling图片缩放,NSImageScaling是一个枚举变量,点击可以查看枚举内的值
        imgBtn.imageScaling = NSImageScaling.scaleNone
        //7.imageHugTitle:Bool设置图片环绕标题
        squareBtn.imageHugsTitle = true
        //8.isBordered:Bool是否显示边框
        //roundReactBtn.isBordered = false
        //9.isTransparent是否透明
        //pushBtn.isTransparent = true
        //10.keyEquivalent=按钮的快捷键
        //pushBtn.keyEquivalent
        //11.快捷键的掩码
        //pushBtn.keyEquivalentModifierMask
        
        //12.setButtonType=设置按钮的样式
        pushBtn.setButtonType(NSButton.ButtonType.pushOnPushOff)
        //13.highlight=设置按钮高亮
        pushBtn.highlight(true)
        //14.执行按钮的快捷键=performKeyEquivalent
        //pushBtn.performKeyEquivalent(with: NSEvent.init())
        
        //按钮的事件监听Target-->action方式监听响应事件
        //按钮事件的响应对象
        pushBtn.target = self
        //设置按钮的响应方法
        pushBtn.action = #selector(pushBtnClick(_ :))
    }
    
    @objc func pushBtnClick(_ sender:NSButton) {
        print("pushBtn被点击")
    }
    
}
