//
//  Mosque.swift
//  Assignment3
//
//  Created by Alyaa AlOstad on 5/6/20.
//  Copyright © 2020 Alyaa. All rights reserved.
//

import Foundation

struct Mosque : Hashable, Identifiable{
    var place : String
    var name : String
    var id = UUID()
    var people : [String]
}

let Albisher = Mosque(place: "مشرف", name: "البشر", people: ["الكندري", "العفاسي"])
let AlMashaan = Mosque(place: "مشرف", name: "المشعان", people: ["الكندري", "العفاسي"])
let Alshamroukh = Mosque(place: "مشرف", name: "الشمروخ", people: ["الكندري", "العفاسي"])

var mosques = [Albisher, AlMashaan, Alshamroukh ]
