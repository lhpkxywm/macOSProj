//
//  NSTableViewController.swift
//  MacOSProj
//
//  Created by LHP on 2021/4/2.
//

import Cocoa

class NSTableViewController: NSViewController {
    @IBOutlet weak var tableView: NSTableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        let cellNib = NSNib(nibNamed: "TableCellView", bundle: nil)
        tableView.register(cellNib, forIdentifier: NSUserInterfaceItemIdentifier("tableItemCellId"))
        tableView.dataSource = self
        tableView.delegate = self
    }
    
}

extension NSTableViewController: NSTableViewDataSource, NSTableViewDelegate {
    func tableView(_ tableView: NSTableView, heightOfRow row: Int) -> CGFloat {
        return 100
    }
    /**
     返回有多少行
     */
    func numberOfRows(in tableView: NSTableView) -> Int {
        return 10
    }
    
    func tableView(_ tableView: NSTableView, viewFor tableColumn: NSTableColumn?, row: Int) -> NSView? {
        let cellView = tableView.makeView(withIdentifier: NSUserInterfaceItemIdentifier("tableItemCellId"), owner: nil) as! TableCellView
        // cellView.imageView
        // cellView.label.
        return cellView
    }

    /// 点击代理方法
    /// - Parameter notification: 通知
    func tableViewSelectionDidChange(_ notification: Notification) {
        //选中的行数
        let clickRow = tableView.selectedRow
        //选中的列数
        let clickColumn = tableView.selectedColumn
        //选中的view
        let clickView = tableView.view(atColumn: clickColumn, row: clickRow, makeIfNecessary: true)
        guard let cellView = clickView as? TableCellView else {
            return
        }
        print("点击了\(cellView.label.stringValue)")
    }
    
    /// 实现此方法，用于支持滑动cell的操作菜单(选项)
    /// - Parameters:
    ///   - tableView: 列表
    ///   - row: 行
    ///   - edge: 控制滑动方向
    /// - Returns: 操作对象
    func tableView(_ tableView: NSTableView, rowActionsForRow row: Int, edge: NSTableView.RowActionEdge) -> [NSTableViewRowAction] {
        if edge == .trailing {
            let rightAction = NSTableViewRowAction(style: .destructive, title: "删除") { (rowAction, row) in
                print("删除")
            }
            return [rightAction]
        }
        return []
        
    }
}
