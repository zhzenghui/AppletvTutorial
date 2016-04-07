//
//  ServiceProvider.swift
//  TopShelf
//
//  Created by xy on 16/4/7.
//  Copyright © 2016年 yuenvshen. All rights reserved.
//

import Foundation
import TVServices

class ServiceProvider: NSObject, TVTopShelfProvider {

    override init() {
        super.init()
    }

    // MARK: - TVTopShelfProvider protocol

    var topShelfStyle: TVTopShelfContentStyle {
        // Return desired Top Shelf style.
        return .Sectioned
    }

    var topShelfItems: [TVContentItem] {

        let breakingNewsIdentifier = TVContentIdentifier(identifier: "breading news", container: nil)!
        let breakingNewsSection =    TVContentItem(contentIdentifier: breakingNewsIdentifier)!
        breakingNewsSection.title = "Breaking news"
        
        let martianRotIdentifier  = TVContentIdentifier(identifier: "martinas Riot", container: nil)!
        let martionRiotItem       = TVContentItem(contentIdentifier: martianRotIdentifier)
        breakingNewsSection.topShelfItems  = [martionRiotItem!]
        
        return [breakingNewsSection]
    }

}

