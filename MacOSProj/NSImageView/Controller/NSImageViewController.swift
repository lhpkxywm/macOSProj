//
//  NSImageViewController.swift
//  MacOSProj
//
//  Created by LHP on 2021/4/1.
//

import Cocoa

class NSImageViewController: NSViewController {

    @IBOutlet weak var leftTopImgView: NSImageView!
    @IBOutlet weak var midTopImgView: NSImageView!
    @IBOutlet weak var rightTopImgView: NSImageView!
    
    @IBOutlet weak var leftCenterImgView: NSImageView!
    @IBOutlet weak var midCenterImgView: NSImageView!
    @IBOutlet weak var rightCenterImgView: NSImageView!
    
    @IBOutlet weak var leftBottomImgView: NSImageView!
    @IBOutlet weak var midBottomImgView: NSImageView!
    @IBOutlet weak var rightBottomImgView: NSImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 对齐方式
        leftTopImgView.imageAlignment = .alignTopLeft
        midTopImgView.imageAlignment = .alignTop
        rightTopImgView.imageAlignment = .alignTopRight
        
        leftCenterImgView.imageAlignment = .alignLeft
        midCenterImgView.imageAlignment = .alignCenter
        rightCenterImgView.imageAlignment = .alignRight
        
        leftBottomImgView.imageAlignment = .alignBottomLeft
        midBottomImgView.imageAlignment = .alignBottom
        rightBottomImgView.imageAlignment = .alignBottomRight
        
        /**
         case scaleProportionallyDown = 0 保持图片内容宽高比缩放。如果图像对于目的地太大，则将其缩小。
         case scaleAxesIndependently = 1 填充缩放，图片内容紧贴控件。控件的宽高比是多少，图片的宽高比就是多少。
         case scaleNone = 2 不缩放，图片资源多大就多大，控件不够则显示局部
         case scaleProportionallyUpOrDown = 3 保持图片内容宽高比缩放。将图像缩放到最大可能的尺寸
         */
        // imageScaling
    }
    
}
