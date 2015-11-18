//
//  TableCell.swift
//
//  Created by Mitsuhiko Yamamoto on 2015/09/29.
//

import UIKit

class TableCell: UITableViewCell {
    var collectionView:CollectionView!
    
    required init(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)!
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String!){
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.collectionView = NSBundle.mainBundle().loadNibNamed("CollectionView", owner: nil, options: nil)[0] as! CollectionView
        self.collectionView.frame = self.bounds
        self.contentView.addSubview(self.collectionView)
    }
    
    // 1行分のデータをセット
    func setTableDataList(tableDataList: TableDataList){
        self.collectionView.setTableDataList(tableDataList)
    }
    
    
}