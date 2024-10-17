//
//  BusinessSearch.swift
//  CitySights App
//
//  Created by Johnny Proano on 10/7/24.
//

import Foundation

struct BusinessSearch: Decodable {
    var businesses: [Business] = [Business]()
    var region = Region()
    var total = 0
}

struct Region: Decodable {
    var center: Coordinate?
}

struct Coordinate: Decodable {
    var latitude: Double?
    var longitude: Double?
}
