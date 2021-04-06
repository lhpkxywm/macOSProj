//
//  DiySliderCell.swift
//  MacOSProj
//
//  Created by LHP on 2021/4/5.
//

import Cocoa

class DiySliderCell: NSSliderCell {
    override func drawKnob(_ knobRect: NSRect) {
        /*
        let image = NSImage(named: "heart")
        image?.draw(in: knobRect)
        */
        
        NSColor.red.set()
        // 使用贝塞尔曲线绘制矩形
        let knobPath = NSBezierPath(rect: knobRect)
        // 带圆角的矩形
        // NSBezierPath(roundedRect: knobRect, xRadius: 2, yRadius: 2)
        // 绘制圆形
        // NSBezierPath(ovalIn: knobRect)
        knobPath.fill()
    }
    
    /// 绘制进度条颜色
    /// - Parameters:
    ///   - rect: 区域
    ///   - flipped:
    override func drawBar(inside rect: NSRect, flipped: Bool) {
        // 设置整个bar的背景颜色
        NSColor.lightGray.set()
        let allPath = NSBezierPath(roundedRect: rect, xRadius: 0, yRadius: 0)
        allPath.fill()
        // 获取高亮进度范围
        let ratio = CGFloat((doubleValue - minValue) / (maxValue - minValue))
        let leftWidth = rect.size.width * ratio
        var leftRect = rect
        leftRect.size.width = leftWidth
        // 绘制高亮进度路径
        let leftPath = NSBezierPath(roundedRect: leftRect, xRadius: 0, yRadius: 0)
        NSColor.orange.set()
        leftPath.fill()
    }
}
