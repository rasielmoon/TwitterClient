//
//  ViewController.swift
//  TwitterClient
//
//  Created by rasiel on 2015/10/04.
//  Copyright © 2015年 rasielmoon. All rights reserved.
//

import UIKit
import Social
import Accounts

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{

    let SCREEN = UIScreen.mainScreen().bounds.size
    
    @IBOutlet var _tableView: UITableView?
    var _accountStore: ACAccountStore?
    var _account:ACAccount?
    var _items = [Status]()
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

