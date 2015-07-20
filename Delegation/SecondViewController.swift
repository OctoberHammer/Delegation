//
//  SecondViewController.swift
//  
//
//  Created by Ocotober Hammer on 7/19/15.
//
//

import UIKit

protocol DataEnteredDelegate{
    func UserDidEnterInformation(info:NSString)
}

class SecondViewController: UIViewController {

    @IBOutlet weak var dataTextField: UITextField! = UITextField();
    
    var delegate:DataEnteredDelegate?  = nil;
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func sendData(sender: AnyObject) {
        if (delegate != nil) {
            let information:NSString = dataTextField.text;
            delegate?.UserDidEnterInformation(information);
            self.navigationController?.popViewControllerAnimated(true);
        }
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
