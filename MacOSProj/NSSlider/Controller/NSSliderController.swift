//
//  NSSliderController.swift
//  MacOSProj
//
//  Created by LHP on 2021/4/5.
//

import Cocoa

class NSSliderController: NSViewController {

    @IBOutlet weak var horzSlider: NSSlider!
    @IBOutlet weak var vertSlider: NSSlider!
    @IBOutlet weak var circleSlider: NSSlider!
    @IBOutlet weak var horzValueLabel: NSTextField!
    @IBOutlet weak var vertValueLabel: NSTextField!
    @IBOutlet weak var popoverSlider: NSSlider!
    
    var popover = NSPopover()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        // 实时监听拖动时的value值
        vertValueLabel.isContinuous = true
        popoverSlider.isContinuous = true
        
        let storyBoard = NSStoryboard(name: "NSSlider", bundle: nil)
        let popoverVC = storyBoard.instantiateController(withIdentifier: "SliderPopoverController") as? NSViewController
        popover.contentViewController = popoverVC
        // 半透明
        popover.behavior = .semitransient
    }
    
    @IBAction func horzValueChange(_ sender: NSSliderCell) {
        // 获取slider当前的值
        let currentValue = sender.floatValue
        horzValueLabel.stringValue = "水平值=\(currentValue)"
    }
    
    @IBAction func vertValueChange(_ sender: NSSlider) {
        let currentValue = sender.floatValue
        vertValueLabel.stringValue = "垂直值=\(currentValue)"
    }
    @IBAction func popoverSliderChange(_ sender: NSSlider) {
        // 计算popover显示的位置
        let sliderWidth = sender.bounds.size.width
        // slider圆点的宽高默认=28
        let cellSideLen: CGFloat = 28
        let popoverWidth: CGFloat = 40
        // 滑动进度的比例
        let ratio = CGFloat((sender.doubleValue - sender.minValue) / (sender.maxValue - sender.minValue))
        // slider滑动时因cell产生的细微动态误差
        let dynamicCellErr = (0.5 - ratio) * cellSideLen / 2
        // 计算x坐标轴的值
        let popoverX = sliderWidth * ratio - popoverWidth / 2 + dynamicCellErr
        let targetRect = NSMakeRect(popoverX, 0, popoverWidth, 30)
        print("popoverX = \(popoverX)")
        
        
        popover.show(relativeTo: targetRect, of: sender, preferredEdge: .minY)
    }
}
