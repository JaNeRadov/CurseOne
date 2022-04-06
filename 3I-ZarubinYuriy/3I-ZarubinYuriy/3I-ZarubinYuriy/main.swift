//
//  main.swift
//  3I-ZarubinYuriy
//
//  Created by Jane Z. on 06.04.2022.
//

import Foundation
// MARK: - enum
enum EngineStatus {
    case start
    case stop
}
enum DoorStatus {
    case open
    case close
}
enum WindowsStatus {
    case open
    case close
}
enum BacDoorStatus {
    case full
    case empty
}
enum Pogruzka {
    case loading
    case complted
}
enum HatchStatus {
    case open
    case close
}

// MARK: - Class
class Car {
    let engine: EngineStatus
    let door: DoorStatus
    let windows: WindowsStatus
    let bacDoor: BacDoorStatus
    var probeg: Double
    init(engin: EngineStatus, door: DoorStatus,windows: WindowsStatus, bacDoor: BacDoorStatus, probeg: Double){
        self.engine = engin
        self.door = door
        self.windows = windows
        self.bacDoor = bacDoor
        self.probeg = probeg
    }
}
// MARK: -SportCar
class SportCar: Car {
    var hatchStatus: HatchStatus
    init(engin: EngineStatus, door: DoorStatus, windows: WindowsStatus, bacDoor: BacDoorStatus, probeg: Double,
         hatchStatus: HatchStatus) {
        self.hatchStatus = hatchStatus
        super.init(engin: .stop, door: .close, windows: .close, bacDoor: .empty, probeg: 150.0)
    }
    func openHatch(){
        hatchStatus = .open
    }
    func closeHatch(){
        hatchStatus = .close
    }
}
// MARK: -TruckCar
class TruckCar: Car {
    var pogruzka: Pogruzka
    init(engin: EngineStatus, door: DoorStatus, windows: WindowsStatus, bacDoor: BacDoorStatus, probeg: Double,
                  pogruzka: Pogruzka) {
        self.pogruzka = pogruzka
        super.init(engin: .start, door: .open, windows: .open, bacDoor: .full, probeg: 350.0)
    }
    func fullPogruszka() {
        pogruzka = .complted
    }
    func emptyPogrizka() {
        pogruzka = .loading
    }
    
  
}

let truck = TruckCar(engin: .start, door: .open, windows: .open, bacDoor: .full, probeg: 150, pogruzka: .complted)
let sport = SportCar(engin: .start, door: .close, windows: .close, bacDoor: .empty, probeg: 50,
                     hatchStatus: .close)
print(sport.probeg, ",", sport.bacDoor, ",", sport.windows, ",", sport.door, ",", sport.engine, ",", sport.hatchStatus)
print(truck.engine, ",", truck.door, ",", truck.windows, ",", truck.bacDoor, ",", truck.probeg, ",", truck.pogruzka)

