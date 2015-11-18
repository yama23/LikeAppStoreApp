//
//  TableDataList.swift
//
//  Created by Mitsuhiko Yamamoto on 2015/09/28.
//

import Foundation

/**
* TableView用のデータ
*/
class TableDataList{
    var title: String
    var collections:[CollectionDataList!] = []
    
    init(dict :NSDictionary){
        title = dict.objectForKey("title") as! String
        let collectionArr:NSArray = dict.objectForKey("collections") as! NSArray
        for var i=0; i<collectionArr.count; i++ {
            let collectionDict:NSDictionary = collectionArr.objectAtIndex(i) as! NSDictionary
            let _collection:CollectionDataList = CollectionDataList(dict: collectionDict)
            collections.append(_collection)
        }
    }
}