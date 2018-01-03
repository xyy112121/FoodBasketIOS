//
//  HpTopSelectButton.swift
//  FoodBasketIOS
//
//  Created by xyy on 2018/1/3.
//  Copyright © 2018年 谢毅. All rights reserved.
//

//首页顶部选项bt

import Foundation
import UIKit

class HpTopSelectButton:UIView{
    
    var imageView: UIImageView!
    var titlelabel    :UILabel!
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        
        self.backgroundColor = UIColor.clear
        
        imageView = UIImageView.init(frame: CGRect.init(x: kXYViewWidth(view: self)/2.0-28, y: (kXYViewHeight(view: self)-22)/2.0, width: 22, height: 22))
        imageView.backgroundColor = UIColor.clear
        self.addSubview(imageView)
        
        titlelabel = UILabel.init(frame: CGRect.init(x: kXYViewR(view: imageView)+5, y: kXYViewTop(view: imageView), width: kXYViewWidth(view: self)/2, height: kXYViewHeight(view: imageView)))
        titlelabel.backgroundColor = UIColor.clear
        titlelabel.font = kFONTN(size: 16.0)
        titlelabel.textColor = UIColor.black
        self.addSubview(titlelabel)
        
    }
    
    public func setviewimagetitle(image:UIImage,title:String)
    {
        imageView.image = image
        titlelabel.text = title
    }
}
