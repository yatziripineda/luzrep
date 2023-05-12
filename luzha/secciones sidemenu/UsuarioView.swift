//
//  UsuarioView.swift
//  luzha
//
//  Created by CEDAM05 on 11/05/23.
//

import SwiftUI

struct UsuarioView: View {
    @EnvironmentObject var viewModel: AppViewModel
    var body: some View {
        
        if viewModel.signedIn{
            MainMenu()
            //            VStack{
            //                Spacer()
            //                Text("Estas Registrado")
            //                Button(action: {
            //                    viewModel.signOut()
            //                }, label: {
            //                    Text("Cerrar Sesión")
            //                        .frame(width: 200, height: 50)
            //                        .background(Color.blue)
            //                        .foregroundColor(Color.white)
            //                        .padding()
            //                })
            //            }
        }
        else{
            Spacer()
            SignInView()
            
        }
    }
}

struct UsuarioView_Previews: PreviewProvider {
    static var previews: some View {
        UsuarioView()
    }
}
