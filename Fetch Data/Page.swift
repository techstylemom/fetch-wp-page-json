//
//  Page.swift
//  Fetch Data
//
//  Created by Irish on 2/20/21.
//

import Foundation

struct Rendered: Codable {
    var rendered: String?
}

struct Page: Codable {
    var title: Rendered?
    var content: Rendered?
    
}
