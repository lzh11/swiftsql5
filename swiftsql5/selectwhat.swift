//
//  selectwhat.swift
//  swiftsql5
//
//  Created by LZH on 16/7/8.
//  Copyright © 2016年 LZH. All rights reserved.
//

import Foundation
import UIKit

class selectwhat: UIViewController {
    var db:SQLiteDB!
    
    @IBOutlet weak var textf: UITextField!
    
    @IBOutlet weak var textf1: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //获取数据库实例
        db = SQLiteDB.sharedInstance()
        //如果表还不存在则创建表（其中uid为自增主键）
        db.execute("create table if not exists t_user(uid integer primary key,uname varchar(20),mobile varchar(20))")
        //如果有数据则加载
        //initUser()
    }
    
    //点击保存
    
    @IBAction func nameselect(sender: AnyObject) {
        nameselect()
    }
    func nameselect(){
    textf1.text! = ""
        let a = textf.text!
        let data = db.query("select * from t_user where uname='\(a)'")
        for (var i=0;i<data.count;i++) {
            let tuser = data[i]
            textf1.text! += "姓名" + String(tuser["uname"]!) + "手机" + String(tuser["mobile"]!) + "\n"
        }

    }
    @IBAction func phoneselect(sender: AnyObject) {
        phoneselect()
    }
    func phoneselect(){
        textf1.text! = ""
        let b = textf.text!
        let data = db.query("select * from t_user where mobile='\(b)'")
        for (var j=0;j<data.count;j++) {
            let tuser = data[j]
            textf1.text! += "姓名" + String(tuser["uname"]!) + "手机" + String(tuser["mobile"]!) + "\n"
        }
        
    }
    
    
    
    //从SQLite加载数据
    
    
    //保存数据到SQLite
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
