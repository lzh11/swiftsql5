//
//  Find.swift
//  swiftsql5
//
//  Created by LZH on 16/7/8.
//  Copyright © 2016年 LZH. All rights reserved.
//

import Foundation
import UIKit

class Find: UIViewController {
    var db:SQLiteDB!
    
    @IBAction func selectfind(sender: AnyObject) {
        select()
    }
    func select(){
        x.text = ""
        let data = db.query("select * from t_user")
        for var i=0;i<data.count;i++ {
            let tuser = data[i]
            x.text! += "姓名" + String(tuser["uname"]!) + "手机" + String(tuser["mobile"]!) + "\n"
        }
    }
    
    @IBAction func deletall(sender: AnyObject) {
        deletall()
    }
    func deletall(){
    let sql = "delete from t_user"
    let result = db.execute(sql)
        print(result)
    }
    @IBOutlet weak var x: UITextView!
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

