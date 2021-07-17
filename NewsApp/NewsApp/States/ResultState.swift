//
//  ResultState.swift
//  NewsApp
//
//  Created by Kan Ouivirach on 17/7/2564 BE.
//

import Foundation

enum ResultState {
    case loading
    case success(content: [Article])
    case failed(error: Error)
}
