//
//  main.swift
//  5I-ZarubinYuriy
//
//  Created by Jane Z. on 11.04.2022.
//

import Foundation


 // MARK: - ENUMы
  
 ///Engine Status Enum

 enum EnginStatus {

     case start
     case stop

 }

 /// Door status

 enum DoorStatus {

     case open
     case close

 }

 ///Windows Status

 enum WindowsStatus {

     case open
     case close

 }

 ///BackDoor Status

 enum BacDoorStatus {

     case full
     case empty

 }
 ///Pogruzka

 enum Pogruzka {

     case loading
     case complted

 }
 ///

 enum HatchStatus {

     case open
     case close

 }

 enum SignalisationStatus {

     case on
     case off

 }

 enum LightStatus {

     case lightOn
     case lightOff
 }

 // MARK: - Протокол

 protocol CarProtocol {

     var engine: EnginStatus { get }
     var windows: WindowsStatus { get }
     var door: DoorStatus { get }
     var bacDoor: BacDoorStatus { get }

 }



 // MARK: -Class

 final class SportCar: CarProtocol {

     var engine: EnginStatus

     var windows: WindowsStatus

     var door: DoorStatus

     var bacDoor: BacDoorStatus

     var lights: LightStatus

     init (engine: EnginStatus,
           windows: WindowsStatus,
           door: DoorStatus,
           bacdoor: BacDoorStatus,
           lights: LightStatus){

         self.engine = engine
         self.bacDoor = bacdoor
         self.windows = windows
         self.door = door
         self.lights = lights
     }

 }

 final class TruckCar:CarProtocol {

     var engine: EnginStatus

     var windows: WindowsStatus

     var door: DoorStatus

     var bacDoor: BacDoorStatus

     var signalization: SignalisationStatus

     init (engine: EnginStatus,
           windows: WindowsStatus,
           door: DoorStatus,
           bacdoor: BacDoorStatus,
           signalization: SignalisationStatus){

         self.engine = engine
         self.bacDoor = bacdoor
         self.windows = windows
         self.door = door
         self.signalization = signalization
     }
 }

 // MARK: -Extension

 extension CarProtocol {

     func printCarStatus() {

         print ("Car ready to driving")

     }

 }

 extension TruckCar {
     func printSignalStatus(){
         print ("Signalisation Off")
     }
 }

 let porsche  = SportCar(engine: .start,
                         windows: .close,
                         door: .close,
                         bacdoor: .empty,
                         lights: .lightOn)

 let volvo  = TruckCar(engine: .start,
                         windows: .close,
                         door: .close,
                         bacdoor: .empty,
                       signalization: .off)


 print (porsche.printCarStatus(), ",",
        porsche.windows, ",",
        porsche.lights, ",",
        porsche.door, ",",
        porsche.bacDoor, ",",
        porsche.engine, ",")

 print("===============================")

 print(volvo.signalization, ",",
       volvo.engine, ",",
       volvo.bacDoor, ",",
       volvo.door, ",",
       volvo.windows, ",",
       volvo.printSignalStatus(),",",
       volvo.printCarStatus())

