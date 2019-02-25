//
//  MainArticle.swift
//  MediaStyleAnimationContents
//
//  Created by 酒井文也 on 2019/02/25.
//  Copyright © 2019 酒井文也. All rights reserved.
//

import Foundation
import SwiftyJSON

class MainArticle {

    // MARK: - Static Function

    // JSONから記事部分のデータ一覧から表示対象Entityの配列へ変換したものを取得する
    static func getMainArticleList(_ json: JSON) -> [MainArticleEntity] {
        let mainArticleList = json[0]["article_list"].map{
            MainArticleEntity($1)
        }
        return mainArticleList
    }

    // JSONから次のページが存在するかのフラグ部分を取得する
    static func getHasNextPage(_ json: JSON) -> Bool {
        let hasNextPage = json[0]["has_next_page"].boolValue
        return hasNextPage
    }
}
