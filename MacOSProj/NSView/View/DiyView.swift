//
//  DiyView.swift
//  MacOSProj
//
//  Created by LHP on 2020/11/22.
//

import Cocoa

class DiyView: NSView {

    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)

        NSColor.yellow.set()
        NSBezierPath.fill(dirtyRect)
    }
    
}
