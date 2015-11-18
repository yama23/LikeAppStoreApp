//
//  CollectionCell.swift
//
//  Created by Mitsuhiko Yamamoto on 2015/09/28.
//

import UIKit

class CollectionCell: UICollectionViewCell {
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var name: UILabel!
    func setThumbnailImage(src: String) -> Void{
        // サムネイルを表示する場合は処理を書く
        self.image.image = UIImage(named: src)
    }
}