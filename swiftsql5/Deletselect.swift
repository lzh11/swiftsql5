//
//  Deletselect.swift
//  swiftsql5
//
//  Created by LZH on 16/7/8.
//  Copyright © 2016年 LZH. All rights reserved.
//

import Foundation
import UIKit

class Deletselect: UIViewController {
    var db:SQLiteDB!
    @IBOutlet weak var y: UITextField!
    @IBAction func deletname(sender: AnyObject) {
        deletname()
    }
    func deletname() {
        let a = y.text!
        let sql = "delete from t_user where uname='\(a)'"
        let result = db.execute(sql)
        print(result)
    }
    @IBAction func deletphone(sender: AnyObject) {
        deletphone()
    }
    func deletphone() {
        let b = y.text!
        let sql = "delete from t_user where mobile='\(b)'"
        let result = db.execute(sql)
        print(result)
    }

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
    
    
    
    
    
    //从SQLite加载数据
    
    
    //保存数据到SQLite
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

