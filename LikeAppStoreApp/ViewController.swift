//
//  ViewController.swift
//  LikeAppStoreApp
//
//  Created by Mitsuhiko Yamamoto on 2015/10/07.
//  Copyright © 2015年 Fusic. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var tableDataLists: [TableDataList!] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        for (var i=0; i<10; ++i){
            let childArray:NSMutableArray = []
            for (var j=0; j<10; ++j){
                let childDic: NSDictionary = NSDictionary(dictionary: ["title": "サブタイトル\(j+1)", "thumbnail_path": "prin_nobi"])
                childArray.addObject(childDic)
            }
            let dic: NSDictionary = NSDictionary(dictionary: ["title": "タイトル\(i+1)", "collections": childArray])
            let tableDataList:TableDataList = TableDataList(dict: dic)
            tableDataLists.append(tableDataList)
        }
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.registerClass(TableCell.self, forCellReuseIdentifier: "TableCell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int  {
        return 1
    }
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return self.tableDataLists.count
    }
    
    // ----------------------------------------------------------------------------------------------------
    //
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
    
    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let tableHeader:TableHeader = TableHeader.instance()
        tableHeader.name.text = tableDataLists[section].title
        return tableHeader
    }
    
    // ----------------------------------------------------------------------------------------------------
    // 内容をセット
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let index:Int = indexPath.row
        let section:Int = indexPath.section
        let cell:TableCell = self.tableView.dequeueReusableCellWithIdentifier("TableCell", forIndexPath: indexPath) as! TableCell
        cell.setTableDataList(tableDataLists[section])
        //cell.delegate = self
        return cell
    }
    
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 144
    }

}

