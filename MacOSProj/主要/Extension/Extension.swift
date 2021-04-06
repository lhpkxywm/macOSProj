//
//  Extension.swift
//  MacOSProj
//
//  Created by LHP on 2020/11/22.
//

import Foundation
import AppKit

extension NSColor{
    convenience init(hexStr:String) {
        let hexStr = hexStr.trimmingCharacters(in: .whitespacesAndNewlines)
        let scanner = Scanner(string: hexStr)
        
        if hexStr.hasPrefix("#") {
            //scanner.scanLocation = 1  已经过期，用下面的方法代替
            scanner.currentIndex = scanner.string.index(after: scanner.currentIndex)
        }
        
        var color:UInt64 = 0
        scanner.scanHexInt64(&color)
        let mask = 0x000000FF
        let r = Int(color >> 16) & mask
        let g = Int(color >> 8) & mask
        let b = Int(color) & mask
                 
        let red   = CGFloat(r) / 255.0
        let green = CGFloat(g) / 255.0
        let blue  = CGFloat(b) / 255.0
                 
        self.init(red: red, green: green, blue: blue, alpha: 1)
    }
    /*
    var hexStr: String? {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var alpha: CGFloat = 0
             
        let multiplier = CGFloat(255.999999)
        
        self.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
             
        if alpha == 1.0 {
            return String(
                format: "#%02lX%02lX%02lX",
                Int(red * multiplier),
                Int(green * multiplier),
                Int(blue * multiplier)
            )
        }
        else {
            return String(
                format: "#%02lX%02lX%02lX%02lX",
                Int(red * multiplier),
                Int(green * multiplier),
                Int(blue * multiplier),
                Int(alpha * multiplier)
            )
        }
    }
 */
}

