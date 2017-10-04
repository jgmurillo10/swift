//
//  ArtistModel.swift
//  firebase-app
//
//  Created by Juan Murillo on 4/10/17.
//  Copyright © 2017 Juan Murillo. All rights reserved.
//

import UIKit

class ArtistModel: NSObject {
    var id: String?
    var name: String?
    var genre: String?
    override init() {
        super.init()
    }
    convenience init(id: String?, name: String?, genre: String?) {
        self.init()
        self.id = id
        self.name = name
        self.genre = genre
    }
}
