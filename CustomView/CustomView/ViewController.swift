//
//  ViewController.swift
//  CustomView
//
//  Created by Nguyễn Tùng on 20/06/2022.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //        let myView = MyView(frame: CGRect(x: 0, y: 100, width: 100, height: 100))
        //        myView.nameLabel?.text = "Hello x-x"
        //        myView.avatarImg?.image = UIImage(named: "posty")
        //        view.addSubview(myView)
        
        let userView = Bundle.main.loadNibNamed("UserView", owner: self, options: nil)?.first as? UserView
        userView?.frame = CGRect(x: 10, y: 50, width: 200, height: 150)
        userView?.delegate = self
        view.addSubview(userView!)
        
    }
}

extension ViewController : UserViewDelegate {
    func didTap(view: UserView, count: Int) {
        print("Count \(count)")
    }
    
    
}

