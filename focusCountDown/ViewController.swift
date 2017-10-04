//
//  ViewController.swift
//  focusCountDown
//
//  Created by ST5 on 4.10.2017.
//  Copyright © 2017 Kugim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
// saniye bilgisi
    var second = 0
    var timer = Timer()
    
    @IBOutlet weak var actionviewsOutlet: UIView!
    @IBOutlet weak var countDownLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var stepperOutlet: UIStepper!
    
    
    @IBAction func stepperAction(_ sender: UIStepper) {
        countDownLabel.text! = String (Int(sender.value))
        print (sender.value)
        progressBar.progress = 0
     }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print ("ekrana dokundun")
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.timerFunc), userInfo: nil, repeats: true)
    }
    
    
    func timerFunc () {
        print ("çalışıyor")
        if second <= 0 {
            timer.invalidate()
        }
        second -= 1
        print (second)
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
     print ("touch ended")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

