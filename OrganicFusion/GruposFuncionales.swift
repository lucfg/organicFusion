//
//  GruposFuncionales.swift
//  OrganicFusion
//
//  Created by Luis Carlos on 04/04/16.
//  Copyright © 2016 Luis. All rights reserved.
//

import UIKit

class GruposFuncionales : UITableViewController {
    
    var listaGruposFuncionales : [String] = ["Alcanos", "Alquenos", "Alquinos","Alcoholes", "Aldehidos", "Amidas", "Aminas"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Grupos Funcionales"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return listaGruposFuncionales.count
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("celda", forIndexPath: indexPath)
        
        cell.textLabel?.text = listaGruposFuncionales[indexPath.row]
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        if listaGruposFuncionales[indexPath.row] == "Alcanos" {
            performSegueWithIdentifier("alcano", sender: self)
        } else if listaGruposFuncionales[indexPath.row] == "Alquenos" {
            performSegueWithIdentifier("alqueno", sender: self)
        } else if listaGruposFuncionales[indexPath.row] == "Alquinos" {
            performSegueWithIdentifier("alquino", sender: self)
        } else if listaGruposFuncionales[indexPath.row] == "Alcoholes" {
            performSegueWithIdentifier("alcohol", sender: self)
        } else if listaGruposFuncionales[indexPath.row] == "Aldehidos" {
            performSegueWithIdentifier("aldehido", sender: self)
        } else if listaGruposFuncionales[indexPath.row] == "Amidas" {
            performSegueWithIdentifier("amida", sender: self)
        } else if listaGruposFuncionales[indexPath.row] == "Aminas" {
            performSegueWithIdentifier("amina", sender: self)
        }
        
    }
    /*
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        //let indexPath = tableView.indexPathForSelectedRow
        
        if segue.identifier == "alcano" {
            let view = segue.destinationViewController as! Alcano
            view.sTitulo = "Alcano"
            
        } else if segue.identifier == "alqueno" {
            let view = segue.destinationViewController as! Alqueno
            view.sTitulo = "Alqueno"
        }
        
    }*/
}