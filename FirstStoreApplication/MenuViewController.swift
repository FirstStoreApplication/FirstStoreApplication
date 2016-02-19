    //
//  LeftSortsViewController.swift
//  LSoS
//
//  Created by  lifirewolf on 15/7/15.
//  Copyright (c) 2015年  lifirewolf. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableview.dataSource = self
        self.tableview.delegate  = self
        self.tableview.separatorStyle = UITableViewCellSeparatorStyle.None
        self.tableview.backgroundColor = UIColor.clearColor()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        

        
        let cell = tableView.dequeueReusableCellWithIdentifier("menuItem", forIndexPath: indexPath)
        
        cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        cell.textLabel!.font = UIFont.systemFontOfSize(20.0)
        cell.backgroundColor = UIColor.clearColor()
        cell.textLabel!.textColor = UIColor.whiteColor()
        
        if (indexPath.row == 0) {
            cell.textLabel!.text = "Anasayfa";
        } else if (indexPath.row == 1) {
            cell.textLabel!.text = "Hakkımızda";
        } else if (indexPath.row == 2) {
            cell.textLabel!.text = "Ürünler";
        } else if (indexPath.row == 3) {
            cell.textLabel!.text = "Galeri";
        } else if (indexPath.row == 4) {
            cell.textLabel!.text = "Siparişlerim";
        } else if (indexPath.row == 5) {
            cell.textLabel!.text = "İletişim";
        } else if (indexPath.row == 6) {
            cell.textLabel!.text = "Mesaj";
        }else if (indexPath.row == 7) {
            cell.textLabel!.text = "Web Sayfası";
        }
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        let tempAppDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        
      

        
        //tempAppDelegate.lsmVC?.closeSlideMenu()
        
       // tempAppDelegate.mainNavigationController?.pushViewController(getVC, animated: true)
    }
    
}
