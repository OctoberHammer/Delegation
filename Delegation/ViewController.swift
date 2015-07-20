//
//  ViewController.swift
//  Delegation
//
//  Created by Ocotober Hammer on 7/19/15.
//  Copyright (c) 2015 Ocotober Hammer. All rights reserved.
//

import UIKit

class ViewController: UIViewController, DataEnteredDelegate {

    @IBOutlet weak var dataLabel: UILabel! = UILabel();
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func UserDidEnterInformation(info:NSString){
        dataLabel.text = info as String;
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "showSecondVC" ){
            let secondVC:SecondViewController = segue.destinationViewController as! SecondViewController
            secondVC.delegate = self;
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

