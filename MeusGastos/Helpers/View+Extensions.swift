//
//  View+Extensions.swift
//  MeusGastos
//
//  Created by walber Ruthierre da Costa on 05/09/24.
//

import SwiftUI

extension View {
  @ViewBuilder
  func hSpacing(_ alignment: Alignment = .center) -> some View {
    self
      .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: alignment)
  }
  
  @ViewBuilder
  func vSpacing(_ alignment: Alignment = .center) -> some View {
    self
      .frame(maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: alignment)
  }
  
  var safeArea: UIEdgeInsets {
    if let windowScene = (UIApplication.shared.connectedScenes.first as? UIWindowScene) {
      return windowScene.keyWindow?.safeAreaInsets ?? .zero
    }
    
    return .zero
  }
  
  func format(date: Date, format: String) -> String {
    let formatter = DateFormatter()
    formatter.dateFormat = format
    return formatter.string(from: date)
  }
  
  func currencyString(_ value: Double, allowedDigits: Int = 2 ) -> String {
    let formatter = NumberFormatter()
    formatter.numberStyle = .currency
    formatter.maximumFractionDigits = allowedDigits
    
    return formatter.string(from: .init(value: value)) ?? ""
  }
  
  var currencySymbol: String {
    let locale = Locale.current
    
    return locale.currencySymbol ?? ""
  }
}
