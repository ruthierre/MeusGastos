//
//  Table.swift
//  MeusGastos
//
//  Created by walber Ruthierre da Costa on 02/09/24.
//

import SwiftUI

enum Table: String {
  case recents = "Recentes"
  case search = "Filtro"
  case charts = "gráficos"
  case settings = "Configurações"
  
  @ViewBuilder
  var tableContent: some View {
    switch self {
      case .recents:
        Image(systemName: "calendar")
        Text(self.rawValue)
      case .search:
        Image(systemName: "magnifyingglass")
        Text(self.rawValue)
      case .charts:
        Image(systemName: "chart.bar.xaxis")
        Text(self.rawValue)
      case .settings:
        Image(systemName: "gearshape")
        Text(self.rawValue)
    }
  }
}
