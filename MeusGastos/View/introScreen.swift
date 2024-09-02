//
//  introScreen.swift
//  MeusGastos
//
//  Created by walber Ruthierre da Costa on 02/09/24.
//

import SwiftUI

struct introScreen: View {
  /// estado de Visibilidade
  @AppStorage("isFirstTime") private var isFirstTime: Bool = true
    var body: some View {
      VStack(spacing:15){
        Text("O que há de novo em\nMeus Gastos")
          .font(.largeTitle.bold())
          .multilineTextAlignment(.center)
          .padding(.top, 65)
          .padding(.bottom, 35)
        
        VStack(alignment: .leading, spacing: 25, content: {
          PointView(symbol: "brazilianrealsign", title: "Transações", subTitle: "Acompanhe seus ganhos e despesas.")
          
          PointView(symbol: "chart.bar.fill", title: "Gráficos", subTitle: "Visualize suas transações através de gráficos. ")
          
          PointView(symbol: "magnifyingglass", title: "filtros Avançados", subTitle: "encontre as despesas que deseja por meio de pesquisa avançada e filtragem.")
        })
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal, 15)
        
        Spacer(minLength: 10)
        
        Button(action: {
          isFirstTime = false
        }, label: {
          Text("Continue")
            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            .foregroundStyle(.white)
            .frame(maxWidth: .infinity)
            .padding(.vertical, 14)
            .background(appTint.gradient, in : .rect(cornerRadius: 12))
            .contentShape(.rect)
        })
      }
      .padding(15)
    }
  
   @ViewBuilder
  func PointView(symbol: String, title: String, subTitle:String) -> some View{
    HStack(spacing:25){
      Image(systemName: symbol)
        .font(.largeTitle)
        .foregroundStyle(appTint.gradient)
        .frame(width: 45)
      
      VStack(alignment: .leading, spacing: 6, content: {
        Text(title)
          .font(.title3)
          .fontWeight(.semibold)
        
        Text(subTitle)
          .foregroundStyle(.gray)
      })
    }
  }
}

#Preview {
    introScreen()
}
