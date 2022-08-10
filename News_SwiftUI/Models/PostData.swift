//
//  PostData.swift
//  News_SwiftUI
//
//  Created by Вячеслав Терентьев on 09.08.2022.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
