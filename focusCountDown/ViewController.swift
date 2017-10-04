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
    var progressValue : Float = 0
    
    @IBOutlet weak var actionviewsOutlet: UIView!
    @IBOutlet weak var countDownLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var stepperOutlet: UIStepper!
    
    
    @IBAction func stepperAction(_ sender: UIStepper) {
        countDownLabel.text! = String (Int(sender.value))
        print (sender.value)
        second = Int(countDownLabel.text!)!
        //progressBar.progress = 1
        progressValue = (1 / Float(second))
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print ("ekrana dokundun")
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.timerFunc), userInfo: nil, repeats: true)
        actionviewsOutlet.isHidden = true
        view.backgroundColor = UIColor(red: 52/255, green: 73/255, blue: 94/255, alpha: 1.0)
    }
    
    // rgba(52, 73, 94,1.0)
    func timerFunc () {
        print ("çalışıyor")
        
        if second <= 0 {
            timer.invalidate()
            second = 0
            
            return
        }
        second -= 1
        print (second)
        countDownLabel.text! = String(second)
        progressBar.progress -=  progressValue
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        print ("touch ended")
        timer.invalidate()
        actionviewsOutlet.isHidden = false
        view.backgroundColor = UIColor.white
        //progressBar.progress = 1.0
    }
    
    // rgba(149, 165, 166,1.0)
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

