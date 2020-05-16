//
//  ViewController.swift
//  SpaceTravel
//
//  Created by danny phu on 5/15/20.
//  Copyright © 2020 BMCC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var rocketLabel: UILabel!;
    @IBOutlet weak var warningLabel: UILabel!
    @IBOutlet weak var crashLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //choose custom color for swift
        //www.ralfebert.de/ios-examples/uikit/swift-uicolor-picker/
        self.view.backgroundColor = UIColor(red: 0/255, green: 0/255, blue: 28/255, alpha: 1.0);
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch: UITouch = touches.first {
            let point: CGPoint = touch.location(in: view);
            rocketLabel.center = point;
        }
    }
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch: UITouch = touches.first {
            let point: CGPoint = touch.location(in: view);
            rocketLabel.center = point;
            if point.y <= 300 && point.x >= 170 {
                if rocketLabel.frame.contains(point) {
                    warningLabel.text = "WARNING: too close to the Sun!!";
                }
            } else {
                warningLabel.text = ""
            }
            
            if point.y <= 200 && point.x >= 250 {
                if rocketLabel.frame.contains(point) {
                    crashLabel.text = "💥";
                    rocketLabel.text = "";
                    warningLabel.text = "Tried to warn ya...";
                }
            }
        }
    }
        
}
