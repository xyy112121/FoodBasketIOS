//
//  HpTopSelectItemView.swift
//  FoodBasketIOS
//
//  Created by xyy on 2018/1/2.
//  Copyright © 2018年 谢毅. All rights reserved.
//

//首页顶部先项条view

import Foundation
import UIKit

class HpTopSelectItemView:UIView{
    
    var topbtleft:HpTopSelectButton!
    var topbtmiddle:HpTopSelectButton!
    var topbtright:HpTopSelectButton!
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        
        self.backgroundColor = UIColor.white
        
        let imageline1 = UIImageView.init(frame: CGRect.init(x: kSCREEN_WIDTH/3, y: 15, width: 1, height: kXYViewHeight(view: self)-30))
        imageline1.backgroundColor = UIColor.gray
        self.addSubview(imageline1)
        
        topbtleft = HpTopSelectButton.init(frame: CGRect.init(x: 0, y: 0, width: kXYYViewL(view: imageline1), height: kXYViewHeight(view: self)))
        topbtleft?.setviewimagetitle(image: kLOADIMAGE(imageName: "种类", PicType: "png"), title: "干货")
        let tap1 = UITapGestureRecognizer(target:self, action:#selector(self.tapClickleft(sender:)))
        topbtleft?.addGestureRecognizer(tap1)
        self.addSubview(topbtleft!)
        
        let imageline2 = UIImageView.init(frame: CGRect.init(x: kSCREEN_WIDTH/3*2, y: 15, width: 1, height: kXYViewHeight(view: self)-30))
        imageline2.backgroundColor = UIColor.gray
        self.addSubview(imageline2)
        
        topbtmiddle = HpTopSelectButton.init(frame: CGRect.init(x: kXYYViewL(view: imageline1), y: 0, width: kSCREEN_WIDTH/3, height: kXYViewHeight(view: self)))
        topbtmiddle?.setviewimagetitle(image: kLOADIMAGE(imageName: "种类", PicType: "png"), title: "蔬菜")
        let tap2 = UITapGestureRecognizer(target:self, action:#selector(self.tapClickmiddle(sender:)))
        topbtmiddle?.addGestureRecognizer(tap2)
        self.addSubview(topbtmiddle!)
        
        topbtright = HpTopSelectButton.init(frame: CGRect.init(x: kXYYViewL(view: imageline2), y: 0, width: kSCREEN_WIDTH/3, height: kXYViewHeight(view: self)))
        topbtright?.setviewimagetitle(image: kLOADIMAGE(imageName: "种类", PicType: "png"), title: "肉类")
        let tap3 = UITapGestureRecognizer(target:self, action:#selector(self.tapClickright(sender:)))
        topbtright?.addGestureRecognizer(tap3)
        self.addSubview(topbtright!)
        
        let imagelinebottom = UIImageView.init(frame: CGRect.init(x: 0, y: kXYViewHeight(view: self)-1, width: kSCREEN_WIDTH, height: 1))
        imagelinebottom.backgroundColor = kCOLORNOW(a: 220, b: 220, c: 220)
        self.addSubview(imagelinebottom)
    }
    
    @objc func tapClickleft(sender:UIView)
    {
        topbtleft.titlelabel.textColor = UIColor.red;
    }
    
    @objc func tapClickmiddle(sender:UIView)
    {
        
    }
    
    @objc func tapClickright(sender:UIView)
    {
        
    }
    
    
}
