//
//  Petition.swift
//  Project 9
//
//  Created by Alexis Orellano on 3/19/19.
//  Copyright © 2019 Alexis Orellano. All rights reserved.
//

import Foundation
struct Petition: Codable{
    var title: String
    var body: String
    var signatureCount: Int
}
//This defines a custom struct with three properties. One advantage of structs in Swift is that it gives us a meemberwise initializer
//- specialfunction that can create new Petition instances by passing in values for title, body, and signatureCount.
