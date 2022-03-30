//
//  main.swift
//  2I-ZarubinYuriy
//
//  Created by Jane Z. on 29.03.2022.
//

import Foundation
///Функция проверяет четное число или нет,
///принимает одно значение x
func proverkaChetnosty(x: Int){ //Объявляем функцию
    if x % 2 == 0{ //проверяем делится ли х на 2 без остатка
        print("Число четное") //если да принтуем "Число чётное"
    }else{
        print("Число не чётное") //Если нет принтуем "Число не четное"
    }
}
proverkaChetnosty(x: 5)
proverkaChetnosty(x: 6)

///функция проверки деления числа на 3 без остатка
func delenieNaTre(y: Int){
    if y % 3 == 0{
        print("Число делится на 3 без остатка")
    }else{
        print("Число не делится на 3 без остатка")
    }
}

delenieNaTre(y: 9)
delenieNaTre(y: 10)
//ЗАполнить возрастающий массив до 100
var arrayOt0Do100 = [Int]()
for i in 1...100{
    arrayOt0Do100.append(i)
}
print (arrayOt0Do100)
//удалить из массива все четные числа и числа которые не делятся на 3
for i in arrayOt0Do100{
if i % 2 == 0 || i % 3 != 0{
arrayOt0Do100.remove(at: arrayOt0Do100.firstIndex(of: i) ?? 0)
}
}
print(arrayOt0Do100)
    

