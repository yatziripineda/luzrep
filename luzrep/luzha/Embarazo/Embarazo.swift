//
//  Embarazo.swift
//  luzha
//
//  Created by CEDAM05 on 11/05/23.
//

import SwiftUI

struct Embarazo: View {
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

struct Embarazo_Previews: PreviewProvider {
    static var previews: some View {
        Embarazo()
    }
}
