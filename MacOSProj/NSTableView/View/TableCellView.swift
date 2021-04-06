//
//  TableCellView.swift
//  MacOSProj
//
//  Created by LHP on 2021/4/2.
//

import Cocoa

class TableCellView: NSTableCellView {
    @IBOutlet weak var imgView: NSImageView!
    @IBOutlet weak var label: NSTextField!
    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)

        // Drawing code here.
    }
    
}
