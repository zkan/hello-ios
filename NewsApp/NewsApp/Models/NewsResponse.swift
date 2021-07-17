//
//  NewsResponse.swift
//  NewsApp
//
//  Created by Kan Ouivirach on 17/7/2564 BE.
//

import Foundation

struct NewsResponse: Codable {
    let articles: [Article]
}

struct Article: Codable, Identifiable {
    let id = UUID()
    let author: String?
    let url: String?
    let source, title: String?
    let articleDescription: String?
    let image: String?
    let date: Date?

    enum CodingKeys: String, CodingKey {
        case author, url, source, title
        case articleDescription = "description"
        case image, date
    }
}

extension Article {
    static var dummyData: Article {
        .init(author: "Annie Palmer", url: "https://www.cnbc.com/2021/07/16/apple-removes-fakespot-from-app-store-after-amazon-complains.html", source: "CNBC", title: "Amazon asked Apple to remove an app that spots fake reviews, and Apple agreed - CNBC", articleDescription: "Fakespot is a well-known app used to help shoppers detect fraudulent reviews on Amazon.", image: "https://image.cnbcfm.com/api/v1/image/106896626-1623684563673-gettyimages-1231490015-20090101210303-99-672422.jpeg?v=1623684670", date: Date())
    }
}
