//
//  ContentView.swift
//  MeusGastos
//
//  Created by walber Ruthierre da Costa on 02/09/24.
//

import SwiftUI

struct ContentView: View {
  @AppStorage("isFirstTime") private var isFirstTime: Bool = true
  /// App Lock Properties
  @AppStorage("isAppLockEnabled") private var isAppLockEnabled: Bool = false
  @AppStorage("lockWhenAppGoesBackground") private var lockWhenAppGoesBackground: Bool = false
  /// Active Tab
  @State private var activeTab: Table = .recents
  var body: some View {
    LockView(lockType: .biometric, lockPin: "", isEnabled: isAppLockEnabled, lockWhenAppGoesBackground: lockWhenAppGoesBackground) {
      TabView(selection: $activeTab) {
        Recents()
          .tag(Table.recents)
          .tabItem { Table.recents.tableContent }
        
        Search()
          .tag(Table.recents)
          .tabItem { Table.search.tableContent }
        
        Graphs()
          .tag(Table.recents)
          .tabItem { Table.charts.tableContent }
        
        Settings()
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
}

#Preview{
  ContentView()
}
