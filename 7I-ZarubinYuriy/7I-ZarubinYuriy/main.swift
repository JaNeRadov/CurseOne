//
//  main.swift
//  7I-ZarubinYuriy
//
//  Created by Jane Z. on 17.04.2022.
//

import Foundation

// MARK: -перечисления ошибок

enum PriceError: Error{
    
    case invalidItem
    case outOnStock
    case invalidCoin(coinNeed: Int)
}
enum ClientError: Error {
    case clientNotFound
}
// MARK: - Структуры
struct Product {
    let name: String
}

struct ItemBase {
    var price: Int
    var quantityInStock: Int
    let product: Product
}

// MARK: -Класс склада 1С

class PriceOneC {
    
    // База данных 1С
    
    var priceProduct = ["Iphone 12": ItemBase(price: 92000, quantityInStock: 12, product:Product(name: "iPhone 12")),
                        "iPad Pro": ItemBase(price: 110000, quantityInStock: 5, product: Product(name: "iPad Pro")),
                        "MacBook Pro": ItemBase(price: 250000, quantityInStock: 3, product: Product(name: "MacBook Pro")),
                        "iMac": ItemBase(price: 280000, quantityInStock: 4, product: Product(name: "iMac")),
                        "iMac Pro": ItemBase(price: 350000, quantityInStock: 2, product: Product(name: "iMac Pro"))]
    
    //Остаток кредитного лимита клиента
    
    var creditDeposite = 0
    
    // MARK: -Продажа товара клиенту
    
    func verificate(itemBaseName name: String) throws -> Product {
        
        //Обработка ошибок
        
        
        // Ошибка "Данного товара нет в базе"
        
        
        guard let item = priceProduct[name] else{
            throw PriceError.invalidItem
        }
        
        
        // Ошибка "Данного товара нет на складе"
        
        guard item.quantityInStock > 0 else {
            throw PriceError.outOnStock
        }
        
        
        // Ошибка "Не хватает кредитного лимита"
        
        guard item.price <= creditDeposite else {
            throw PriceError.invalidCoin(coinNeed: item.price - creditDeposite)
        }
        
        
        // Отпуск товара со склада
        
        creditDeposite -= item.price
        var newItem = item
        newItem.quantityInStock -= 1
        priceProduct[name] = newItem
        print("Отпущен со склада: \(name)")
        return newItem.product
        
}
    
}




