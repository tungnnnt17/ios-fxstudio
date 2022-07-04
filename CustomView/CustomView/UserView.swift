//
//  UserView.swift
//  CustomView
//
//  Created by Nguyễn Tùng on 20/06/2022.
//

import Foundation
import UIKit

protocol UserViewDelegate {
    func didTap(view: UserView, count: Int)
}

class UserView: UIView {
    
    var count = 0
    var delegate: UserViewDelegate?
    
    @IBOutlet weak var avatarImg: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBAction func tap(_ sender: Any) {
        count += 1
        nameLabel.text = "\(count)"
        
        if let delegate = delegate {
            delegate.didTap(view: self, count: count)
        }
    }
}
