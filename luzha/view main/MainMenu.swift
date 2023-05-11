//
//  MainMenu.swift
//  luzha
//
//  Created by CEDAM05 on 11/05/23.
//

import SwiftUI

struct MainMenu: View {
    
    //seleccionar table....
    @State var selectedTable = ""
    @State var ShowMenu = false
    //npmbre de la nimacion
    @Namespace var animation
    
    var body: some View {
        
        ZStack{ //menu lateral
            Color("yellow").ignoresSafeArea()
            Side_Menu(selectedTable: $selectedTable)
            
            ZStack{
                
                Color.white
                    .opacity(0.5)
                    .cornerRadius(ShowMenu ? 15:0)
                    .shadow(color: Color.black.opacity(0.07),radius: 5,x: -5, y: 0)
                    .offset(x:ShowMenu ? -25 : 0)
                    .padding(.vertical,30)
                
                Color.white
                    .opacity(0.5)
                    .cornerRadius(ShowMenu ? 15:0)
                    .shadow(color: Color.black.opacity(0.07),radius: 5,x: -5, y: 0)
                    .offset(x:ShowMenu ? -50 : 0)
                    .padding(.vertical,60)
                
                home_Menu(selectedTab: $selectedTable)
                    .cornerRadius(ShowMenu ? 15:0)
                
                
            }//zstack de la vista anidada
            //.background(.blue)
            
            .scaleEffect(ShowMenu ? 0.84 : 1)
            .offset(x:ShowMenu ? getRect().width - 120:0)
            .ignoresSafeArea()
            
            
            .overlay(
                
                //Boton de Navegacion
                Button(action: {
                    withAnimation(.spring()){
                        ShowMenu.toggle()
                    }
                }, label: {
                    Image("metrocara").resizable().frame(width: 80, height: 80)
                })
                .padding(),alignment:.bottom
            )
            
            
        }//llave del zstack
        .background(.gray)
    }
}

struct MainMenu_Previews: PreviewProvider {
    static var previews: some View {
        MainMenu()
    }
}

extension View{
    
    func getRect()->CGRect{
        return UIScreen.main.bounds
    }
}

