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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        // 实时监听拖动时的value值
        vertValueLabel.isContinuous = true
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
}
