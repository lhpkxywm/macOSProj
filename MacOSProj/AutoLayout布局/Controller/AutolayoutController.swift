//
//  AutolayoutController.swift
//  MacOSProj
//
//  Created by LHP on 2020/11/22.
//

import Cocoa

class AutolayoutController: NSViewController {
    
    @IBOutlet weak var layoutBtn: NSButton!
    @IBOutlet weak var layoutView: NSView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //去除按钮的autoresizing
        layoutBtn.translatesAutoresizingMaskIntoConstraints = false
        
        //设置layoutBtn的约束条件,约束之间要添加逗号分隔
        let btnConstraints = [
            //按钮左侧距离父视图20个像素
            layoutBtn.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 20),
            layoutBtn.topAnchor.constraint(equalTo: view.topAnchor,constant: 0),
            //按钮右侧与父视图水平中心点一致
            layoutBtn.rightAnchor.constraint(equalTo: view.centerXAnchor),
            //按钮高度固定60
            layoutBtn.heightAnchor.constraint(equalToConstant: 60)
        ]
        
        //去除视图的autoresizing
        layoutView.translatesAutoresizingMaskIntoConstraints = false
        //设置layoutView的约束条件
        let viewContraints = [
            layoutView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20),
            layoutView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20),
            //view的左侧与按钮水平中心点一致
            layoutView.leftAnchor.constraint(equalTo: layoutBtn.centerXAnchor),
            layoutView.heightAnchor.constraint(equalToConstant: 60)
        ]
        
        guard let customView = layoutView else {
            return
        }
        //Swift5以后，如果想给banckgroundColor设置背景色，必须设置控件的wantsLayer=true
        customView.wantsLayer = true
        //customView.layer?.backgroundColor = CGColor.init(red: 255, green: 0, blue: 0, alpha: 1)
        customView.layer?.backgroundColor = NSColor(hexStr: "#ff0000").cgColor
        //激活约束
        NSLayoutConstraint.activate(btnConstraints)
        NSLayoutConstraint.activate(viewContraints)
    }
    
}
