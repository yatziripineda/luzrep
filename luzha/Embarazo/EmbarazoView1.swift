//
//  EmbarazoView1.swift
//  luzha
//
//  Created by CEDAM05 on 11/05/23.
//

import SwiftUI

struct EmbarazoView1: View {
    var body: some View {
        TabView
        {
            Cuestionariox()
                .tabItem
            {
                Image(systemName: "person.fill")
                Text("Perfil")
            }
            LactanciaView()
                .tabItem {
                    Image(systemName: "clipboard.fill")
                    Text("Metodos Anticonceptivos")
                }
            ForoPView()
                .tabItem {
                    Image(systemName: "person.fill.questionmark")
                    Text("ILE")
                }
//            ETSView()
//                .tabItem {
//                    Image(systemName: "magnifyingglass.circle.fill")
//
//                    Text("ETS")
//                }
              
        }
    }
}

struct EmbarazoView1_Previews: PreviewProvider {
    static var previews: some View {
        EmbarazoView1()
    }
}
