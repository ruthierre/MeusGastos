//
//  Item.swift
//  MeusGastos
//
//  Created by walber Ruthierre da Costa on 02/09/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
