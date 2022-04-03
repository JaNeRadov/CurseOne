//
//  main.swift
//  3I-ZarubinYuriy
//
//  Created by Jane Z. on 03.04.2022.
//
// Описать несколько структур - любой легковой автомобиль sport car и любой грузовик trunk car
import Foundation

enum WindowStatus: String{
    case  open = "Окно открыто"
    case close = "Окно закрыто"
}
enum EngineStatus {
    case start
    case stop
}
enum BacDoorStatus {
    case full
    case empty
}
enum WindowStatusBacDoor{
    case open
    case close
}
enum {
    
}
struct SportCar {
    
    let model: String
    let year: Int
    let volume: Int
    let engineStatus: EngineStatus
    let windowStatus: WindowStatus
    let volumeBacdoor: BacDoorStatus
}
let sportCar = SportCar(model: "Porsche", year: 2008, volume: 45, engineStatus: .start, windowStatus: .close, volumeBacdoor: .full)
print(sportCar)
