//
//  ViewControllerChains.swift
//  OrganicFusion
//
//  Created by Ivan Cabrer on 4/4/16.
//  Copyright © 2016 Luis. All rights reserved.
//

import UIKit

class ViewControllerChains: UIViewController
{
    @IBOutlet weak var b11: UIButton!
    @IBOutlet weak var b12: UIButton!
    @IBOutlet weak var b13: UIButton!
    @IBOutlet weak var b14: UIButton!
    @IBOutlet weak var b15: UIButton!
    @IBOutlet weak var b16: UIButton!
    @IBOutlet weak var b21: UIButton!
    @IBOutlet weak var b22: UIButton!
    @IBOutlet weak var b23: UIButton!
    @IBOutlet weak var b24: UIButton!
    @IBOutlet weak var b25: UIButton!
    @IBOutlet weak var b26: UIButton!
    @IBOutlet weak var b31: UIButton!
    @IBOutlet weak var b32: UIButton!
    @IBOutlet weak var b33: UIButton!
    @IBOutlet weak var b34: UIButton!
    @IBOutlet weak var b35: UIButton!
    @IBOutlet weak var b36: UIButton!
    @IBOutlet weak var b41: UIButton!
    @IBOutlet weak var b42: UIButton!
    @IBOutlet weak var b43: UIButton!
    @IBOutlet weak var b44: UIButton!
    @IBOutlet weak var b45: UIButton!
    @IBOutlet weak var b46: UIButton!
    @IBOutlet weak var b51: UIButton!
    @IBOutlet weak var b52: UIButton!
    @IBOutlet weak var b53: UIButton!
    @IBOutlet weak var b54: UIButton!
    @IBOutlet weak var b55: UIButton!
    @IBOutlet weak var b56: UIButton!
    @IBOutlet weak var b61: UIButton!
    @IBOutlet weak var b62: UIButton!
    @IBOutlet weak var b63: UIButton!
    @IBOutlet weak var b64: UIButton!
    @IBOutlet weak var b65: UIButton!
    @IBOutlet weak var b66: UIButton!
    @IBOutlet weak var b71: UIButton!
    @IBOutlet weak var b72: UIButton!
    @IBOutlet weak var b73: UIButton!
    @IBOutlet weak var b74: UIButton!
    @IBOutlet weak var b75: UIButton!
    @IBOutlet weak var b76: UIButton!
    @IBOutlet weak var b81: UIButton!
    @IBOutlet weak var b82: UIButton!
    @IBOutlet weak var b83: UIButton!
    @IBOutlet weak var b84: UIButton!
    @IBOutlet weak var b85: UIButton!
    @IBOutlet weak var b86: UIButton!
    @IBOutlet weak var b91: UIButton!
    @IBOutlet weak var b92: UIButton!
    @IBOutlet weak var b93: UIButton!
    @IBOutlet weak var b94: UIButton!
    @IBOutlet weak var b95: UIButton!
    @IBOutlet weak var b96: UIButton!
    
    @IBOutlet weak var bTabC: UIButton!
    @IBOutlet weak var bTabCH: UIButton!
    @IBOutlet weak var bTabCH2: UIButton!
    @IBOutlet weak var bTabCH3: UIButton!
   
    let tbSelectColor: UIColor = UIColor(red:0.797, green:0.957, blue:0.966, alpha:1)
    
    
    
    var arButtons: [[UIButton]] = []
    var arToolButtons: [UIButton] = []
    
    var selectedElement = ""
    var didSelectedElement = false
    var x = 0, y = 0
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        arButtons = [[b11,b12,b13,b14,b15,b16],[b21,b22,b23,b24,b25,b26],[b31,b32,b33,b34,b35,b36],[b41,b42,b43,b44,b45,b46],[b51,b52,b53,b54,b55,b56],[b61,b62,b63,b64,b65,b66],[b71,b72,b73,b74,b75,b76],[b81,b82,b83,b84,b85,b86],[b91,b92,b93,b94,b95,b96]]
        
        arToolButtons = [bTabC,bTabCH,bTabCH2,bTabCH3]

        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var toolBarOutlet: UIToolbar!
    
    
    func resetBarButtons()
    {
        for buttons in arToolButtons
        {
            buttons.backgroundColor = UIColor.clearColor()
        }
    }
    
    func setElement(position: UIButton)
    {
        position.setTitle(selectedElement, forState: .Normal)
        resetBarButtons()
        position.backgroundColor = UIColor.clearColor()
        
        //let index = [arButtons].indexOf(position).
        var cuenta = 0, yIndex = 0
        for filas in arButtons
        {
            if filas.contains(position)
            {
                yIndex = cuenta
            }
            cuenta += 1
        }
        
        let xIndex = arButtons[yIndex].indexOf(position)
        
        print(yIndex)
        print(xIndex!)
        
        activateButtons(xIndex!, y: yIndex)
    }
    
    func activateButtons(x: Int, y: Int)
    {
        if(selectedElement=="CH3")
        {
            activateOne(x, y: y)
        }
        if(selectedElement=="CH2")
        {
            activateTwo(x, y: y)
        }
        if(selectedElement=="CH")
        {
            activateThree(x, y: y)
        }
        if(selectedElement=="C")
        {
            activateFour(x, y: y)
        }
    }
    
    func activateOne(x: Int, y: Int)
    {
        let chX = x + 1
        let chY = y
        
        let chButton = arButtons[chY][chX]
        chButton.hidden = false
    }
    
    func activateTwo(x: Int, y: Int)
    {
        var chButton = arButtons[y][x+1]
        chButton.hidden = false
        
        chButton = arButtons[y+1][x]
        chButton.hidden = false
    }
    
    func activateThree(x: Int, y: Int)
    {
        var chButton = arButtons[y][x+1]
        chButton.hidden = false
        
        chButton = arButtons[y+1][x]
        chButton.hidden = false
        
        chButton = arButtons[y-1][x]
        chButton.hidden = false
    }
    
    func activateFour(x: Int, y: Int)
    {
        var chButton = arButtons[y][x+1]
        chButton.hidden = false
        
        chButton = arButtons[y][x-1]
        chButton.hidden = false
        
        chButton = arButtons[y+1][x]
        chButton.hidden = false
        
        chButton = arButtons[y-1][x]
        chButton.hidden = false
    }

    
    
    @IBAction func selectPosition(sender: UIButton)
    {
        if(didSelectedElement)
        {
            setElement(sender)
        }
    }
    
    
    @IBAction func selectElement(sender: UIButton)
    {
        resetBarButtons()
        didSelectedElement = true
        
        if sender == bTabC
        {
            bTabC.backgroundColor = tbSelectColor
            selectedElement = "C"
        }
        else if sender == bTabCH
        {
            bTabCH.backgroundColor = tbSelectColor
            selectedElement = "CH"
        }
        else if sender == bTabCH2
        {
            bTabCH2.backgroundColor = tbSelectColor
            selectedElement = "CH2"
        }
        else if sender == bTabCH3
        {
            bTabCH3.backgroundColor = tbSelectColor
            selectedElement = "CH3"
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
