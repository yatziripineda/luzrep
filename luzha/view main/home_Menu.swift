//
//  home_Menu.swift
//  luzha
//
//  Created by CEDAM05 on 11/05/23.
//

import SwiftUI
struct home_Menu: View {
    @Binding var selectedTable: String
    
    init(selectedTab: Binding<String>){
        self._selectedTable = selectedTab
        
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        
        
        TabView(selection: $selectedTable){
            inicio()
            
        }
    }
}

struct home_Menu_Previews: PreviewProvider {
    static var previews: some View {
        MainMenu()
        
    }
    
}

struct inicio: View{
    var body: some View{
        NavigationStack{
            Color.gray.opacity(0.5).edgesIgnoringSafeArea(.all)//cambiar de color en fondo
            
            ZStack{
                
                ZStack{
                    
                    Image("rectangulo").resizable().frame(width: 480 , height: 300).opacity(1).offset(y:-450)
                    
                    Image("mapanombres").resizable().frame(width: 380 , height: 900).opacity(1).offset(y:50)
                    
                    
                    Image("mushu").resizable().frame(width: 200 , height: 200).opacity(1).offset(x: 00,y:-350)
                    Image("rectangulo").resizable().frame(width: 480 , height: 100).opacity(1).offset(y:410)
                    
                    // RowReporte().frame(width: 400 , height: 100) .offset(y: -250)
                    
                    
                }
            }
            
        }
    }
}

