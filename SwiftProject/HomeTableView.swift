//
//  HomeTableView.swift
//  SwiftProject
//
//  Created by mac on 2017/5/11.
//  Copyright © 2017年 mac. All rights reserved.
//

import UIKit



class HomeTableView: UITableView ,UITableViewDataSource ,UITableViewDelegate{
    
    
    override init(frame: CGRect, style: UITableViewStyle) {
        
        super.init(frame: frame, style: style)
        self.delegate = self
        self.dataSource = self
        self.tableHeaderView = UIView.init()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let string = "cell"
        var cell = tableView.dequeueReusableCell(withIdentifier: string)
        if (cell == nil) {
            cell = GoodsCell.init(style: UITableViewCellStyle.default, reuseIdentifier: string)
        }
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let detailVc = GoodsDetailController()
        let nc: UINavigationController = UIApplication.shared.keyWindow?.rootViewController as! UINavigationController
        nc.pushViewController(detailVc, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0.01
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }

    func requestForGoodsList() -> Void {
        
    }
    
    
    
}

class GoodsCell: UITableViewCell {
    var nameLab : IvyLabel!
    var logIV : UIImageView!
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        
        logIV = UIImageView.init(frame: CGRect.init(x: 10, y: 10, width: 60, height: 60))
        logIV.image = UIImage.init(named: "zheng")
        addSubview(logIV)
        
        nameLab = IvyLabel.init(frame: CGRect.init(x: logIV.frame.origin.x + logIV.frame.size.width + 10, y: logIV.frame.origin.y, width: 200, height: 16), text: "商品名字", font: UIFont.systemFont(ofSize: 16), textColor: UIColor.gray, textAlignment: NSTextAlignment.left, numberLines: 0)
        addSubview(nameLab)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}












