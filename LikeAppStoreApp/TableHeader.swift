//
//  TableHeader.swift
//
//  Created by Mitsuhiko Yamamoto on 2015/09/30.
//

import UIKit

/**
* TableViewのカスタムヘッダー
*/
class TableHeader: UIView {
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var toListButton: UIButton! // 次の画面へ遷移する場合向けボタン
    
    class func instance() -> TableHeader {
        return UINib(nibName: "TableHeader", bundle: nil).instantiateWithOwner(self, options: nil)[0] as! TableHeader
    }
}