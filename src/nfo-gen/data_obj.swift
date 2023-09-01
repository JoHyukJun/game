//
//  data_obj.swift
//  nfo-gen
//
//  Created by johyukjun on 2023/09/01.
//

import Foundation
import SwiftUI


struct TestData: Identifiable {
    let id = UUID()
    let t1: String
    let t2: String
    let t3: String?
}


struct NfoData: Identifiable {
    let media: String
    let title: String
    let originaltitle: String
    let id: String
    let premierd: String
    let year: Date
    let director: String
    let studio: String
    let rating: String
    let votes: Int
    let plot: String
    let runtime: Int
    let trailer: String
    let mpaa: String
    let tagline: String
    let set: String
    let thumb: String
    let genre: [String]
    let actor: [Actor]
}


struct Actor {
    let name: String
    let altname: String
    let thumb: String
    let role: String
}
