//
//  CollectionDataList.swift
//
//  Created by Mitsuhiko Yamamoto on 2015/09/25.
//

import Foundation

/**
* CollectionView用のデータ
*/
class CollectionDataList{
    var title: String!
    var thumbnailPath: String
    init(dict :NSDictionary){
        title = dict.objectForKey("title") as! String!
        thumbnailPath = dict.objectForKey("thumbnail_path") as! String
    }
}