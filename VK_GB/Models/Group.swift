//
//  Group.swift
//  VK_GB
//
//  Created by Булат Минибаев on 09.06.2021.
//

import Foundation

struct Group {
    
    let name: String
    let avatar: String
}

struct GroupStorage {
    
    static var shared = GroupStorage()
    
    var groups: [Group]
    var searchGroup: [Group]
    
    private init() {
        groups = [
            Group(name: "Футбол в Дербышках", avatar: "figure.walk"),
            Group(name: "Автомобили", avatar: "car"),
            Group(name: "Компьютеры", avatar: "laptopcomputer"),
            Group(name: "Программирование", avatar: "keyboard"),
            Group(name: "Apple", avatar: "applelogo")
        ]
        searchGroup = [
            Group(name: "Биржевые ставки", avatar: "dollarsign.circle.fill"),
            Group(name: "Авиабилеты дешево", avatar: "airplane"),
            Group(name: "Знакомства", avatar: "heart.fill"),
            Group(name: "Все для игроманов", avatar: "gamecontroller.fill"),
            Group(name: "Ремонт компьютеров", avatar: "pc")
        ]
        }
}
