//
//  ContentView.swift
//  MeusGastos
//
//  Created by walber Ruthierre da Costa on 02/09/24.
//

import SwiftUI

struct ContentView: View {
  @AppStorage("isFirstTime") private var isFirstTime: Bool = true
  @State private var activeTab: Table = .recents
  var body: some View {
    TabView(selection: $activeTab) {
      Text("Recentes")
        .tag(Table.recents)
        .tabItem { Table.recents.tableContent }
      
      Text("Filtro")
        .tag(Table.recents)
        .tabItem { Table.search.tableContent }
      
      Text("Gráficos")
        .tag(Table.recents)
        .tabItem { Table.charts.tableContent }
      
      Text("Configurações")
        .tag(Table.recents)
        .tabItem { Table.settings.tableContent }
    }
    .tint(appTint)
    .sheet(isPresented: $isFirstTime, content: {
      introScreen()
        .interactiveDismissDisabled()
    })
  }
}

#Preview{
  ContentView()
}
