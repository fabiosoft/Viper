//
//  DataProvider.swift
//  Prova
//
//  Created by Diego Caridei on 03/08/18.
//  Copyright © 2018 Diego Caridei. All rights reserved.
//

import Foundation
class DataProvider {
    static func generatePeople() -> [PersonEntity] {
        return [PersonEntity(name: "Diego"),PersonEntity(name: "Fabio"),PersonEntity(name: "Giovanni")]
    }
}
