//
//  ViewController.swift
//  Basic touches and gestures
//
//  Created by Faheeam Ahmed on 13/08/2024.
//

import UIKit

class TochesAndMovings: UIViewController {

    let box = UIView(frame: CGRect(x: 50, y: 100, width: 50, height: 50))
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray4
        
        setupBox()
        ///this will enable touches
        view.isUserInteractionEnabled = true
        ///this will enable multitouches
        view.isMultipleTouchEnabled = true
    }
    
    func setupBox() {
        view.addSubview(box)
        box.backgroundColor = .green
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        let touch = touches.first!
        if touch.view == box {
            let location = touch.location(in: box)
            print("Box touched at \(location)")
            return
        }
        let location = touch.location(in: view)
        print("Touches began \(location)")
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesMoved(touches, with: event)
        let touch = touches.first!
        if touch.view == box {
            let location = touch.location(in: box)
            print("Box touch moved at \(location)")
            return
        }
        let location = touch.location(in: view)
        print("Touches moved \(location)")
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        let touch = touches.first!
        if touch.view == box {
            let location = touch.location(in: box)
            print("Box touche ended at \(location)")
            return
        }
        let location = touch.location(in: view)
        print("Touches ended \(location)")
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesCancelled(touches, with: event)
        let touch = touches.first!
        if touch.view == box {
            let location = touch.location(in: box)
            print("Box touch cancelled at \(location)")
            return
        }
        let location = touch.location(in: view)
        print("Touches Cancelled \(location)")
    }


}

