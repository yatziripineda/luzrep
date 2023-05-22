//
//  PostpartoView.swift
//  LUZ1
//
//  Created by CEDAM04 on 11/05/23.
//
import SwiftUI

struct Postparto: View
{
    var body: some View {
        TabView
        {
           
            Cuestionariox()
                .tabItem {
                    Image(systemName: "clipboard.fill")
                    Text("Cuestionario")
                        .bold()
                        .font(.largeTitle)
                        
                }
            LactanciaView()
                .tabItem {
                    Image(systemName: "person.fill.questionmark")
                    Text("ILE")
                }
            AsistenciaPsicologicaView()
                .tabItem {
                    Image(systemName: "magnifyingglass.circle.fill")
                    
                    Text("ETS")
                }
            
            ForoPView()
                .tabItem {
                    Image(systemName: "magnifyingglass.circle.fill")
                    
                    Text("ETS")
                }
              
        }
    }
}

struct PostpartoView_Previews: PreviewProvider {
    static var previews: some View {
        Postparto()
    }
}
