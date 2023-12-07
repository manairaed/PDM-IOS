//
//  CategoryModel.swift
//  pdm
//
//  Created by Mac-Mini_2021 on 07/12/2023.
//

import Foundation

struct Category: Codable {
    let idCategory: String
    let strCategory: String
}

struct CategoryResponse: Codable {
    let categories: [Category]
}
