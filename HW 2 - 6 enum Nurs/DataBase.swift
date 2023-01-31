//
//  DataBase.swift
//  HW 2 - 6 enum Nurs
//
//  Created by cpu on 30/1/23.
//

import Foundation
//Создать структуру User c параметрами имя, фамилия, номер телефона. Создать enum из стран с кодами телефонов. Добавить параметр code в  структуру User. Создать класс DataBase с параметром массив юзеров и функций распечатки информации всех юзеров, функий распечатки только по определенной стране. В main cделать так, чтобы пользователь вводил все данные через ридлайн. Введенные данные должны записаться в массив в классе DataBase. Для телефона сделать 2 ридлайна, один для указывания страны по названию, другой для ввода номера. В общей информации номер телефона должен распечатываться в таком виде: “+996777777777”. Запрос для ввода данных сделать несколько раз циклом, чтобы можно было ввести разные данные.
class DataBase{
    var arrayUser: [User] = []
    func addUser(user: User) {
        arrayUser.append(user)
    }
    func showInfoArrayUser(){
        for i in arrayUser{
            print("имя - \(i.name), фамилия - \(i.surname), номек телефона - \(i.numbetPhone), код страны - \(i.code.rawValue)")
        }
    }
        func printCountry (country: Country){
            for i in arrayUser where i.code == country {
                print("имя - \(i.name), фамилия - \(i.surname), номек телефона - \(i.numbetPhone), код страны - \(i.code.rawValue)")
                
            }
        }
    }
