//
//  User.swift
//  VK_GB
//
//  Created by Булат Минибаев on 09.06.2021.
//

import Foundation

struct User {
    
    let name: String
    let avatar: String
    let photos: [Photo]
}

struct UserStorage {
    
    static let shared = UserStorage()
    
    var users: [User]
    
    private init() {
        users = [
            User(name: "Вадим Ахметзянов", avatar: "VA0", photos: [
                Photo(photoImage: "VA1"),
                Photo(photoImage: "VA2"),
                Photo(photoImage: "VA3"),
                Photo(photoImage: "VA4"),
                Photo(photoImage: "VA5")
            ]),
            User(name: "Наталья Асадуллина", avatar: "NA0", photos: [
                Photo(photoImage: "NA1"),
                Photo(photoImage: "NA2"),
                Photo(photoImage: "NA3")
            ]),
            User(name: "Нияз Минибаев", avatar: "NM0", photos: [
                Photo(photoImage: "NM1"),
                Photo(photoImage: "NM2"),
                Photo(photoImage: "NM3"),
                Photo(photoImage: "NM4"),
                Photo(photoImage: "NM5"),
                Photo(photoImage: "NM6"),
                Photo(photoImage: "NM7"),
                Photo(photoImage: "NM8"),
                Photo(photoImage: "NM9"),
                Photo(photoImage: "NM10"),
                Photo(photoImage: "NM11")
            ]),
            User(name: "Артур Сафиуллин", avatar: "AS0", photos: [
                Photo(photoImage: "AS1"),
                Photo(photoImage: "AS2"),
                Photo(photoImage: "AS3"),
                Photo(photoImage: "AS4"),
                Photo(photoImage: "AS5"),
                Photo(photoImage: "AS6"),
                Photo(photoImage: "AS7")
            ]),
            User(name: "Рушания Ахметзянова", avatar: "RA0", photos: [
                Photo(photoImage: "RA1"),
                Photo(photoImage: "RA2"),
                Photo(photoImage: "RA3"),
                Photo(photoImage: "RA4")
            ])
        ]
    }
}
