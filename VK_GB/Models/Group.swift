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
        groups = []
        searchGroup = [
            Group(name: "Футбол по выходным", avatar: "fut"),
            Group(name: "Автомобили", avatar: "auto"),
            Group(name: "Компьютеры", avatar: "comp"),
            Group(name: "Программирование", avatar: "swift"),
            Group(name: "Новости Apple", avatar: "apple"),
            Group(name: "Биржевые ставки", avatar: "birzha"),
            Group(name: "Авиабилеты дешево", avatar: "avia"),
            Group(name: "Общение на любые темы", avatar: "znakom"),
            Group(name: "Все для игроманов", avatar: "gamer"),
            Group(name: "Ремонт компьютеров", avatar: "remont")
        ]
        }
}
