//
//  main.swift
//  pop
//
//  Created by Sai Sumanth Nissankara rao on 2022-10-19.
//

import Foundation

protocol Animal {
    var animalName : String {get}
    var continent : String {get}
    func displayAnimal()->String
}
protocol AnimalInDanger {
    var number : Int {get}
    func displayAnimalInDanger()->String
}
protocol gadget{
    var gadgetName : String{get}
    var price : Double {get}
    func displaygadget()->String
    func display_price()->String
}
protocol Breed{
    var breed : String {get}
    func run()
}
class StuffedAnimal:Animal,AnimalInDanger,gadget{
    var animalName: String
    var gadgetName: String
    var continent: String
    var number: Int
    var price: Double
    init(animalName: String, gadgetName: String, continent: String, number: Int, price: Double) {
        self.animalName = animalName
        self.gadgetName = gadgetName
        self.continent = continent
        self.number = number
        self.price = price
    }
    func displayAnimal() -> String {
        return "I am \(animalName) and I live in \(continent) "
    }
    
    func displayAnimalInDanger() -> String {
        return "There is only \(number) individual of my species left on earth"
    }
    
    func displaygadget() -> String {
        return "My name is \(gadgetName)"
    }
    func display_price() -> String {
        return "Buy me for \(price) dollars and contribute in saving me"
    }
    func label() {
        var string = "Hello \n"
        string +=  "\(displaygadget()) \n\(displayAnimal()) \n\(displayAnimalInDanger()) \n\(display_price()) "
        print(string)
    }
}
class Pet:Animal,Breed{
    var animalName: String
    var continent: String
    var breed: String
    init(breed: String,animalName: String, continent: String) {
        self.animalName = animalName
        self.continent = continent
        self.breed = breed
    }
    
    func displayAnimal() -> String {
        return "I am \(animalName) and I live in \(continent) "
    }
    func run(){
        var string = "Hello \n"
        string += "\(displayAnimal())\nI will bite run away"
        print(string)
    }
    
}
class GuardAnimal:Animal,Breed{
    var breed: String
    var animalName: String
    var continent: String
    init(breed: String, animalName: String, continent: String) {
        self.breed = breed
        self.animalName = animalName
        self.continent = continent
    }
    
    func displayAnimal() -> String {
        return "I am \(animalName) and I live in \(continent) "
    }
    func run() {
        var string = "Hello \n"
        string += "\(displayAnimal())\nI will bite run away"
        print(string)
    }
    func bark(){
        var string = "Hello \n"
        string += "\(displayAnimal())\nI will bark as bowbow "
        print(string)
    }
    
    
    
}
