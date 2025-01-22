//
//  PostData.swift
//  H4XOR News
//
//  Created by Bijon Krishna Bairagi on 1/22/25.
//

import Foundation

struct Result: Decodable{
let hits: [Post]
}


struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    
    let objectID: String
    let title: String
    let url: String?
    let points: Int
}
