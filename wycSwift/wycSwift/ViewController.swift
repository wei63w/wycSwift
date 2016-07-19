//
//  ViewController.swift
//  wycSwift
//
//  Created by genilex3 on 16/7/19.
//  Copyright © 2016年 wei63w. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstbtn: UIButton!
    @IBOutlet weak var secondBtn: UIButton!
    @IBOutlet weak var thirdBtn: UIButton!
    
    
    @IBAction func firstBtnTouch(sender: UIButton) {
        
        //var alertView = UIAlertView(title: "标题", message: getValWithType(0), delegate: self, cancelButtonTitle: "取消", otherButtonTitles: "确定", nil)
        let alertController = UIAlertController(title: "标题", message: getValWithType(0), preferredStyle: UIAlertControllerStyle.Alert)
        let cancelAction = UIAlertAction(title: "取消", style: UIAlertActionStyle.Cancel, handler: nil)
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil)
        alertController.addAction(okAction)
        alertController.addAction(cancelAction)
        self.presentViewController(alertController, animated: true, completion: nil)
        
    }
    
    @IBAction func secondBtnTouch(sender: AnyObject) {
        let alertController = UIAlertController(title: "标题", message: getValWithType(1), preferredStyle: UIAlertControllerStyle.Alert)
        let cancelAction = UIAlertAction(title: "取消", style: UIAlertActionStyle.Cancel, handler: nil)
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil)
        alertController.addAction(okAction)
        alertController.addAction(cancelAction)
        self.presentViewController(alertController, animated: true, completion: nil)
    }
    
    @IBAction func thirdBtnTouch(sender: AnyObject) {
        let alertController = UIAlertController(title: "标题", message: getValWithType(2), preferredStyle: UIAlertControllerStyle.Alert)
        let cancelAction = UIAlertAction(title: "取消", style: UIAlertActionStyle.Cancel, handler: nil)
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil)
        alertController.addAction(okAction)
        alertController.addAction(cancelAction)
        self.presentViewController(alertController, animated: true, completion: nil)
    }
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.firstbtn.backgroundColor = UIColor.redColor();
        self.secondBtn.backgroundColor = UIColor.blueColor();
        self.thirdBtn.backgroundColor = UIColor.greenColor();
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    
    func getValWithType(Type:Int32) -> String {
        
        var tempStr = "this is default"
        
        switch Type {
        case 0:
            tempStr = "This Type is 0"
        case 1:
            tempStr = "This Type is 1"
        case 2:
            tempStr = "This Type is 2"
        default:
            tempStr = "Last result Default"
        }
        
        return tempStr;
    }
    
    
    
    
}

