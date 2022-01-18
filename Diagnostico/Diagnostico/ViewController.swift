//
//  ViewController.swift
//  Diagnostico
//
//  Created by Alumno on 1/17/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaLista") as! CeldaListaController
        celda.lblLineage.text = listas[indexPath.row].lineage
        celda.lblDate.text = listas[indexPath.row].date
        celda.lblDesignated.text = listas[indexPath.row].designated
        celda.lblAssigned.text = listas[indexPath.row].assigned
        celda.lblName.text = listas[indexPath.row].name
        
        return celda
    }
    
    
    @IBOutlet weak var tvLista: UITableView!
    
    var listas : [Lista] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "List"
        
        listas.append(Lista(lineage: "A", date: "30/12/19", designated: "1698", assigned: "2293", name: ""))
        listas.append(Lista(lineage:"A.1",date: "22/02/20",designated: "2699",assigned: "3026",name: ""))
        listas.append(Lista(lineage:"A.2", date: "17/02/20", designated: "1107",assigned: "1283",name: ""))
        listas.append(Lista(lineage: "A.2.2",date:"17/03/20", designated: "473", assigned: "550", name: ""))
        
        
    }


}

