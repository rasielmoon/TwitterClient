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
        self.title = "Twitterクライアント"
    }
    
    func showAlert(title: NSString?,text: NSString?){
        let alert = UIAlertController(title: "Alert", message: "Message", preferredStyle: UIAlertControllerStyle.Alert)
        //(title: title, message: text, preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
    }

    func setIndicator(indicator : Bool){
        UIApplication.sharedApplication().networkActivityIndicatorVisible = indicator
    }
    
    func initTwitterAccount(){
        _account = nil
        _accountStore = ACAccountStore()
        let twitterType = _accountStore?.accountTypeWithAccountTypeIdentifier(ACAccountTypeIdentifierTwitter)
        _accountStore?.requestAccessToAccountsWithType(twitterType, options:nil){(granted,error)in
            if granted{
                let accounts = self._accountStore?.accountsWithAccountType(twitterType)
                if accounts!.count > 0{
                    self._account = accounts![0] as? ACAccount
                    self.timeline()
                    return
                }
            }
            dispatch_async(dispatch_get_main_queue(),{
                self.showAlert(nil,text:"Twitterアカウントが登録されていません")
            })
        }
    }
    func timeline(){
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

