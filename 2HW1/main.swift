//
//  main.swift
//  2HW1
//
//  Created by Indira on 23/12/22.
//

import Foundation

print("Hello, World!")


class Car {
    var model: String
    var year: Int
    var name: String
    func tuning (dvigatel:Int, horsepower:Int){
        print(" tuning \(dvigatel), \(horsepower)")
    }
    init(model: String, year: Int, name: String) {
        self.model = model
        self.year = year
        self.name = name
    }
    func showInfo () {
        print("\(model) \(year) \(name)")
        print("tuning")
        tuning(dvigatel: 25, horsepower: 2400)
    }
}
var item = Car(model: "x5", year: 2009, name: "BMW")
item.showInfo()


class Supermarket {
    var name: String
    var location: String
    var placequan: Int
    var tovar:[Product] = [Product]()
    init(name: String, location: String, placequan: Int) {
        self.name = name
        self.location = location
        self.placequan = placequan
    }
    func seeResult () {
        print("\(name) \(location) \(placequan)")
        for i in tovar{
            print("\(i.name) \(i.type) \(i.deadline) \(i.quality)")
        }
    }
    func add(device: Product) {
        tovar.append(device)
    }
}
var good = Supermarket(name: "globus", location: "asanbai", placequan: 1300)

class Product {
    var name: String
    var type: String
    var deadline: Int
    var quality: String
    init(name: String, type: String, deadline: Int, quality: String) {
        self.name = name
        self.type = type
        self.deadline = deadline
        self.quality = quality
        print("\(name) \(type) \(deadline) \(quality)")
    }
    func checkIt () {
        print("\(name) \(type) \(deadline) \(quality)")
    }
}

var alpro = Product(name: "Alpro", type: "wothout sugar", deadline: 31, quality: "soft")
good.add(device: alpro)
good.seeResult()
