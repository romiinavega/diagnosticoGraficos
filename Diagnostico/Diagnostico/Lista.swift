//
//  Lista.swift
//  Diagnostico
//
//  Created by Alumno on 1/17/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import Foundation

class Lista {
    
    var lineage = ""
    var date = ""
    var designated = ""
    var assigned = ""
    var name = ""
    
    init(lineage: String, date: String, designated: String, assigned: String, name: String) {
        self.lineage = lineage
        self.date = date
        self.designated = designated
        self.assigned = assigned
        self.name = name
    }
    
}
