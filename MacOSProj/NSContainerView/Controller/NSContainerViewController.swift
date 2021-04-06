//
//  NSContainerViewController.swift
//  MacOSProj
//
//  Created by LHP on 2021/4/4.
//

import Cocoa

class NSContainerViewController: NSViewController {
    
    @IBOutlet weak var containerView: NSView!
    
    var leftVc: NSViewController?
    var rightVc: NSViewController?
    var currentVc: NSViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        // 初始化
        let storyBoard = NSStoryboard(name: "NSContainerView", bundle: nil)
        leftVc = storyBoard.instantiateController(withIdentifier: "LeftViewController") as? NSViewController
        rightVc = storyBoard.instantiateController(withIdentifier: "RightViewController") as? NSViewController

    }
    
    @IBAction func leftBtnClick(_ sender: NSButton) {
        guard let leftViewController = leftVc else { return }
        showVc(leftViewController)
    }
    
    @IBAction func rightBtnClick(_ sender: NSButton) {
        guard let rightViewController = rightVc else { return }
        showVc(rightViewController)
    }
    
}

extension NSContainerViewController {
    func showVc(_ vc: NSViewController) {
        if currentVc != nil {
            currentVc?.view.removeFromSuperview()
            currentVc?.removeFromParent()
        }
        addChild(vc)
        vc.view.frame = containerView.bounds
        containerView.addSubview(vc.view)
        currentVc = vc
    }
}
