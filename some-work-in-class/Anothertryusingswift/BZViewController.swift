//
//  BZViewController.swift
//  Anothertryusingswift
//
//  Created by Uno on 16/3/9.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

import UIKit

class BZViewController: UIViewController {
    @IBAction func showQ(sender: AnyObject) {
        ++cu
        if (cu == questions.count) {
            cu = 0
        }
        qLabel.text = questions[cu]
    }
    @IBAction func showA(sender: AnyObject) {
        aLabel.text = answers[cu]
    }
    @IBOutlet weak var qLabel: UILabel!
    @IBOutlet weak var aLabel: UILabel!

    var questions = ["1","2","3"]
    var answers = ["a1","a2","a3"]
    var cu = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()


        
        qLabel.text = questions[cu]
        aLabel.text = "what?"
        
        
        
        
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
