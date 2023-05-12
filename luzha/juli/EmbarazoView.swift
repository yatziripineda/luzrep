//
//  EmbarazoView.swift
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
           
            BebeView()
                .tabItem {
                    Image(systemName: "clipboard.fill")
                    Text("Cuestionario")
                        .bold()
                        .font(.largeTitle)
                        
                }
            ForoView()
                .tabItem {
                    Image(systemName: "person.fill.questionmark")
                    Text("ILE")
                }
            TipsView()
                .tabItem {
                    Image(systemName: "magnifyingglass.circle.fill")
                    
                    Text("ETS")
                }
            
            PrepartoView()
                .tabItem {
                    Image(systemName: "magnifyingglass.circle.fill")
                    
                    Text("ETS")
                }
              
        }
    }
}

struct EmbarazoView_Previews: PreviewProvider {
    static var previews: some View {
        EmbarazoView()
    }
}
