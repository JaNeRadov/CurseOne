//
//  main.swift
//  3I-ZarubinYuriy
//
//  Created by Jane Z. on 03.04.2022.
//
// Описать несколько структур - любой легковой автомобиль sport car и любой грузовик trunk car
import Foundation

enum WindowStatus: String{          //Перечисление открыто окно или нет
    case  open
    case close
}

enum EngineStatus: String {         //Режим двигателя запущен или остановлен
    case start
    case stop
}
 
enum BacDoorStatus: String {        //Перечисление пуст багажник или полон
    case full
    case empty
}

enum WindowStatusBacDoor{           //Окно багажника открыто или закрыто
    case open
    case close
}
enum Pogruzit: String{              //Пречисление погрусить вещи в багажник или нет
    case yes
    case not
}

struct SportCar {                   //Структура спортивного автомобиля
    let model: String               //Модель автомобиля
    let year: Int                   //Год выпуска автомобиля
    let volume: Int                 //Объём багажнка
    var engineStatus: EngineStatus  //Запуск/остановка двгателя
    var windowStatus: WindowStatus  //Открыте/закрытие окна багажнка
    var volumeBacdoor: BacDoorStatus//Заполнен/пуст багажник
    var pogruzkaVBacDoor: Pogruzit
    
    mutating func startEngine(){       //Изменение метода с запуска двигателя на заглушение двигателя
        self.engineStatus = .stop
    }
    mutating func openWindow(){         // изменение метода закрытого окна на открытое
        self.windowStatus = .open
    }
}

let sportCar = SportCar(model: "Porsche", year: 2008, volume: 45, engineStatus: .start, windowStatus: .close, volumeBacdoor: .full, pogruzkaVBacDoor: .yes) //Передача значений структуры в константу

let sportCar2 = SportCar(model: "BMW", year: 2017, volume: 64, engineStatus: .stop, windowStatus: .open, volumeBacdoor: .full, pogruzkaVBacDoor: .not)

let sportCar3 = SportCar(model: "Honda", year: 1997, volume: 94, engineStatus: .start, windowStatus: .open, volumeBacdoor: .empty, pogruzkaVBacDoor: .yes)


struct TrunkCar {
    let model: String
    let year: Int
    let volume: Int
    var engineStatus: EngineStatus
    var windowStatus: WindowStatus
    var volumeBacdoor: BacDoorStatus
    var pogruzkaVBacDoor: Pogruzit
   
    mutating func startEngine(){
        self.engineStatus = .stop
    }
    
    mutating func openWindow(){
        self.windowStatus = .open
    }
}

let trunkCar = TrunkCar(model: "Volvo", year: 2018, volume: 1340, engineStatus: .stop, windowStatus: .open, volumeBacdoor: .empty, pogruzkaVBacDoor: .not)

let trunkCar2 = TrunkCar(model: "Mersedes-Benz", year: 2020, volume: 1290, engineStatus: .stop, windowStatus: .close, volumeBacdoor: .empty, pogruzkaVBacDoor: .not)

let trunkCar3 = TrunkCar(model: "Pegout", year: 2018, volume: 1340, engineStatus: .start, windowStatus: .close, volumeBacdoor: .full, pogruzkaVBacDoor: .yes)


print (sportCar.model, ",", sportCar.year, ",", sportCar.volume, ",",sportCar.engineStatus, ",", sportCar.windowStatus, ",",sportCar.volumeBacdoor, ",", sportCar.pogruzkaVBacDoor, ".")

print (sportCar2.model, ",", sportCar2.year, ",", sportCar2.volume, ",", sportCar2.engineStatus, ",", sportCar2.windowStatus, ",", sportCar2.volumeBacdoor, ",",  sportCar2.pogruzkaVBacDoor, ".")

print (sportCar3.model, ",",  sportCar3.year, ",",  sportCar3.volume, ",", sportCar3.engineStatus, ",",  sportCar3.windowStatus, ",", sportCar3.volumeBacdoor, ",",  sportCar3.pogruzkaVBacDoor, ".")

print (trunkCar.model, ",",  trunkCar.year, ",", trunkCar.volume, ",", trunkCar.engineStatus, ",",  trunkCar.windowStatus, ",",  trunkCar.volumeBacdoor, ",",  trunkCar.pogruzkaVBacDoor, ".")

print (trunkCar2.model, ",", trunkCar2.year, ",", trunkCar.volume, ",",  trunkCar2.engineStatus, ",",  trunkCar2.windowStatus, ",",  trunkCar2.volumeBacdoor, ",",  trunkCar2.pogruzkaVBacDoor, ".")

print (trunkCar3.model, ",",  trunkCar3.year, ",", trunkCar.volume, ",",  trunkCar3.engineStatus, ",",  trunkCar3.windowStatus, ",",  trunkCar3.volumeBacdoor, ",",  trunkCar3.pogruzkaVBacDoor, ".")

