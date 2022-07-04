//
//  ViewController.swift
//  View
//
//  Created by Nguyễn Tùng on 18/06/2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var filledBtn: UIButton!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var helloBtn: UIButton!
    @IBOutlet var labels: [UILabel]!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        for index in 0..<labels.count {
//            labels[index].text = "Title lable \(index + 1)"
//        }
        
        var i = 0
        for label in labels {
            i += 1
            label.text = "hihi \(i)"
        }
        
        
       
//        myLabel.text = "Hello xxx"
//        let avatar = uiimageview(image: uiimage(named: "no_avatar"))
//        let frame = cgrect(x: 10, y: 10, width: 50, height: 50)
//        avatar.frame = frame
//        avatar.contentmode = .scaletofill
//        view.addsubview(avatar)
//
//
//        let username = uilabel(frame: cgrect(x: 10, y: 100, width: 150, height: 50))
//        username.text = "tung nguyen"
//        view.addsubview(username)
//
//        let btn = uibutton(frame: cgrect(x: 10, y: 200, width: 100, height: 50))
//        btn.backgroundcolor = .gray
//        btn.addtarget(self, action: #selector(tap), for: .touchdown)
//        view.addsubview(btn)
    }
    
//    @objc func tap() {
//        print("xxx")
//    }
    
    
    @IBAction func tap(_ sender: Any) {
        print("Hihihi")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            let currentPoint = touch.location(in: view)
            print("view \(currentPoint.x) \(currentPoint.y)")
            
            let currentPointGreen = touch.location(in: greenView)
            print("green view \(currentPointGreen.x) \(currentPointGreen.y)")
            
            
            if touch.view == greenView {
                print("inside green view")
            }
            
            if touch.view == helloBtn {
                print("inside hello btn")
            }
            
            if touch.view ==  imgView{
                print("inside img view")
            }
            
            imgView.center = currentPoint
            
            
            
            
            
        }
    }
}

