//
//  Alcohol.swift
//  OrganicFusion
//
//  Created by Luis Carlos on 04/04/16.
//  Copyright © 2016 Luis. All rights reserved.
//

import UIKit

class Alcohol: UIViewController {

    @IBOutlet weak var botonC: UIButton!
    @IBOutlet weak var botonCH: UIButton!
    @IBOutlet weak var botonCH2: UIButton!
    @IBOutlet weak var botonCH3: UIButton!
    @IBOutlet weak var botonCH4: UIButton!
    @IBOutlet weak var botonOH: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Alcohol"
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
