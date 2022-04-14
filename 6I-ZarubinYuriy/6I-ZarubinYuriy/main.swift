//
//  main.swift
//  6I-ZarubinYuriy
//
//  Created by Jane Z. on 12.04.2022.
//

import Foundation

// Реализовать свой тип коллекции «очередь» (queue) c использованием дженериков.

struct GenericQueue<T> {
    
    var names = [T]()
    
    mutating func push(name: T){
        names.append(name)
    }

}

var stringName = GenericQueue(names: [ ])

stringName.push(name: "Jane")
stringName.push(name: "Alex")
stringName.push(name: "Fill")
stringName.push(name: "Nataly")
stringName.push(name: "Gerg")

print(stringName.names)

// Добавление метода высшего порядка

let nameArray = stringName.names

let filterName = nameArray.drop(while: {$0 as! String == "A"})
print(filterName)

//*Добавить свой subscript, который будет возвращать nil в случае обращения к
//несуществующему индексу.

struct FullName {
    let firstName = "Jane"
    let secondName = "Radov"
    let thirdName = "Michaile"
    
    subscript(index: Int) -> String? {
        get {
            switch index {
            case 0:
                return firstName
            case 1:
                return thirdName
            case 3:
                return secondName
            case 4:
                return firstName + " " + thirdName + " " + secondName
            default:
                return nil
            }
        }
    }
}


let family = FullName()
print(family[3])
print(family[4])
print(family[6])


