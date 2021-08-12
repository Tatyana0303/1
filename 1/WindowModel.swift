//
//  WindowModel.swift
//  1
//
//  Created by Tania on 03.08.2021.
//

import Foundation


struct JsonModel: Codable {
    var response: ResponseModel
}

struct ResponseModel: Codable {
    var numFound: Int
    var start: String
    var docs: [Doc]
}

struct Doc: Codable {
    var id: String
}
