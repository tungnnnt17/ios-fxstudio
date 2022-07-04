//
//  MyView.swift
//  CustomView
//
//  Created by Nguyễn Tùng on 20/06/2022.
//

import Foundation
import UIKit

class MyView : UIView {
    var count = 0
    
    var avatarImg : UIImageView?
    var nameLabel: UILabel?
    var markBtn: UIButton?
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .blue
        avatarImg = UIImageView(frame: CGRect(x: 0, y: 0, width: frame.size.width, height: frame.size.height*4/5))
        avatarImg?.contentMode = .scaleAspectFit
        addSubview(avatarImg!)
        
        nameLabel = UILabel(frame: CGRect(x: 0, y: frame.size.height*4/5, width: frame.size.width, height: frame.size.height/5))
        nameLabel?.text = "xxx"
        nameLabel?.textAlignment = .center
        addSubview(nameLabel!)
        
        markBtn = UIButton(frame: CGRect(x: 0, y: 0, width: frame.size.width, height: frame.size.height))
        markBtn?.backgroundColor = .clear
        markBtn?.addTarget(self, action: #selector(tap), for: .touchUpInside)
        addSubview(markBtn!)
    }
    
    @objc func tap() {
        count += 1
        nameLabel?.text = "\(count)"
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
