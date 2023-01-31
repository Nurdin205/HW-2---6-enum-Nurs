//
//  main.swift
//  HW 2 - 6 enum Nurs
//
//  Created by cpu on 30/1/23.
//

import Foundation

print("Hello, World!")

//Создать структуру User c параметрами имя, фамилия, номер телефона. Создать enum из стран с кодами телефонов. Добавить параметр code в  структуру User. Создать класс DataBase с параметром массив юзеров и функций распечатки информации всех юзеров, функий распечатки только по определенной стране. В main cделать так, чтобы пользователь вводил все данные через ридлайн. Введенные данные должны записаться в массив в классе DataBase. Для телефона сделать 2 ридлайна, один для указывания страны по названию, другой для ввода номера. В общей информации номер телефона должен распечатываться в таком виде: “+996777777777”. Запрос для ввода данных сделать несколько раз циклом, чтобы можно было ввести разные данные.
var database = DataBase()
while true{
    print("Введите имя")
    let name = readLine()!
    print("Введите фамилию")
    let surname = readLine()!
    print("Введите название страны")
    let codeCountry = readLine()!
    var code: Country!
  
    switch codeCountry{
    case "Kyrgyzstan": code = .Kyrgyzstan
    case "USA": code = .USA
    case "England": code = .England
    default:
        code = .USA
    }
    print("введте номер телефона")
    let phoneNumber = readLine()!
    let user = User(name: name, surname: surname, numbetPhone: phoneNumber, code: code )
    database.addUser(user: user)
    print("хотите добавить поставьте yes")
    let answer = readLine()!
    if answer != "Yes" {
        break
    }
  
}
database.showInfoArrayUser()
