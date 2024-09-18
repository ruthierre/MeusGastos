//
//  Transaction.swift
//  MeusGastos
//
//  Created by walber Ruthierre da Costa on 05/09/24.
//

import SwiftUI

struct Transaction: Identifiable {
  let id: UUID = .init()
  
  var title: String
  var remarks: String
  var amount: Double
  var dateAdded: Date
  var category: String
  var tintColor: String
  
  init(title: String, remarks: String, amount: Double, dateAdded: Date, category: Category, tintColor: TintColor) {
    self.title = title
    self.remarks = remarks
    self.amount = amount
    self.dateAdded = dateAdded
    self.category = category.rawValue
    self.tintColor = tintColor.color
  }
  
  var color: Color {
    return tints.first(where: { $0.color == tintColor})?.value ?? appTint
  }
}


var sampleTransactions: [Transaction] = [
  .init(title:"curso udemy", remarks: "estudo", amount: 129, dateAdded: .now, category: .expense, tintColor: tints.randomElement()!),
  .init(title:"Apple Music", remarks: "assinatura", amount: 30, dateAdded: .now, category: .expense, tintColor: tints.randomElement()!),
  .init(title:"Icloud", remarks: "assinatura ", amount: 25, dateAdded: .now, category: .expense, tintColor: tints.randomElement()!),
  .init(title:"Payment", remarks: "pagamento recebido", amount: 2129.0, dateAdded: .now, category: .income, tintColor: tints.randomElement()!),
]
