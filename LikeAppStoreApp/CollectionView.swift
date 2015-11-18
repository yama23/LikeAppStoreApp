//
//  CollectionView.swift
//
//  Created by Mitsuhiko Yamamoto on 2015/09/29.
//

import UIKit

class CollectionView: UIView, UICollectionViewDataSource, UICollectionViewDelegate{
    
    @IBOutlet weak var collectionView: UICollectionView!
    var tableDataList: TableDataList!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        let collectionCell:UINib = UINib(nibName: "CollectionCell", bundle: nil)
        self.collectionView.registerNib(collectionCell, forCellWithReuseIdentifier: "CollectionCell")
        
        let flowLayout:UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = UICollectionViewScrollDirection.Horizontal
        flowLayout.itemSize = CGSizeMake(80.0, 150.0)
        self.collectionView.collectionViewLayout = flowLayout
        
        self.collectionView.backgroundColor = UIColor.whiteColor()
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
    }

    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1 // 1固定
    }
    
    // CollectionViewに表示するデータをセットする
    func setTableDataList(_tableDataList: TableDataList){
        self.tableDataList = _tableDataList
        self.collectionView.contentOffset = CGPointZero
        self.collectionView.reloadData()
    }

    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        return self.tableDataList.collections.count
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath){
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell{
        let cell:CollectionCell = self.collectionView.dequeueReusableCellWithReuseIdentifier("CollectionCell", forIndexPath: indexPath) as! CollectionCell
        let index:Int = indexPath.item
        cell.name.text = self.tableDataList.collections[index].title
        cell.setThumbnailImage(self.tableDataList.collections[index].thumbnailPath)
        return cell
    }
    
}