//
//  NSViewDemoController.swift
//  MacOSProj
//
//  Created by LHP on 2020/11/22.
//

import Cocoa

class NSViewDemoController: NSViewController {

    @IBOutlet var customView: NSView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let subView = NSView(frame: NSMakeRect(10, 10, 150, 100))
        //Swift5以后，如果想给banckgroundColor设置背景色，必须设置控件的wantsLayer=true
        subView.wantsLayer = true
        //subView.layer?.backgroundColor = NSColor.orange.cgColor
        subView.layer?.backgroundColor = NSColor(hexStr: "#00ff00").cgColor
        customView.addSubview(subView)
        
        //通过覆盖layer层设置背景色
        setBackgroundColorByLayer()
        //自定义nsview
        addDiyView()
    }
    
}

extension NSViewDemoController{
    fileprivate func setBackgroundColorByLayer(){
        let tmpSubview = NSView(frame: NSMakeRect(10, 120, 150, 100))
        let tmpLayer = CALayer()
        tmpLayer.backgroundColor = NSColor(hexStr: "#0000ff").cgColor
        tmpLayer.frame = tmpSubview.bounds
        tmpSubview.layer = tmpLayer
        customView.addSubview(tmpSubview)
    }
    
    fileprivate func addDiyView(){
        let diyView = DiyView(frame: NSMakeRect(180, 10, 150, 100))
        customView.addSubview(diyView)
    }
}
