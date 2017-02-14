//
//  ViewController.swift
//  mtroom
//
//  Created by jongsu on 2017. 2. 13..
//  Copyright © 2017년 jongsu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textFiled: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func savesave(_ sender:
        Any) {
        
        
      PlistManager.sharedInstance.saveValue(value: "Hello New Value" as AnyObject, forKey : "aa")
        let delegate = UIApplication.shared.delegate as! AppDelegate
        let pathForThePlistFile = delegate.plistPathInDocument
        print("path")
        print(pathForThePlistFile)
        do{
            try textFiled.text?.write(toFile: pathForThePlistFile,atomically: true, encoding: String.Encoding.utf8)
            print(textFiled.text!)
            print("success ins")
            }
            catch
            {
                print(error)
            }
        
        
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
