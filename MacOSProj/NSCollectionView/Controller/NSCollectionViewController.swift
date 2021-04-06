//
//  NSCollectionViewController.swift
//  MacOSProj
//
//  Created by LHP on 2021/4/2.
//

import Cocoa

class NSCollectionViewController: NSViewController {
    @IBOutlet weak var collectionView: NSCollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(CollectionViewItem.self, forItemWithIdentifier: NSUserInterfaceItemIdentifier("itemCellId"))
    }
    
}

extension NSCollectionViewController: NSCollectionViewDataSource, NSCollectionViewDelegate {
    /**
     每组中item的数量
     */
    func collectionView(_ collectionView: NSCollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    /**
     每个单元格的内容
     */
    func collectionView(_ collectionView: NSCollectionView, itemForRepresentedObjectAt indexPath: IndexPath) -> NSCollectionViewItem {
        var collectionItem = collectionView.item(at: indexPath)
        if (collectionItem == nil) {
            collectionItem = collectionView.makeItem(withIdentifier: NSUserInterfaceItemIdentifier("itemCellId"), for: indexPath)
        }
        return collectionItem!
    }
    
    
}
