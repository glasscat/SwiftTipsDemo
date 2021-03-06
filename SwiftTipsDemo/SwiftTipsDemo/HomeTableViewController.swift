//
//  HomeTableViewController.swift
//  SwiftTipsDemo
//
//  Created by 张飞 on 16/8/9.
//  Copyright © 2016年 张飞. All rights reserved.
//

import UIKit

class HomeTableViewController: UITableViewController {

    let arr = ["轮播图","倒计时按钮","模式切换"]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.tableFooterView = UIView()
        
        //测试模式切换
        tableView.themeBlock1 = { _ in
            self.tableView.backgroundColor = UIColor.yellowColor()
        }
        tableView.themeBlock2 = { _ in
            self.tableView.backgroundColor = UIColor.whiteColor()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        cell.textLabel?.text = arr[indexPath.row]
        return cell
    }

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        switch indexPath.row {
        case 0:
            performSegueWithIdentifier("slide", sender: nil)
        case 1:
            performSegueWithIdentifier("countdown", sender: nil)
        case 2:
            performSegueWithIdentifier("theme", sender: nil)
        default:
            break
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
