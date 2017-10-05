//
//  ResultViewController.swift
//  focusCountDown
//
//  Created by ST5 on 5.10.2017.
//  Copyright © 2017 Kugim. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultText: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print (counter)
        
        
        var str = ""
        for (ind,result) in leapArray.enumerated() {
            
            //print(ind,result)
            str += "\n" + String(ind+1) + "-) \(result) second"
            
        }
        resultText.text = str
    }
        
        
    
    
        // Do any additional setup after loading the view.


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
