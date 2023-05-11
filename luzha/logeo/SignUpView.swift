//
//  SignUpView.swift
//  luzha
//
//  Created by CEDAM05 on 11/05/23.
//


import SwiftUI

struct SignUpView: View {
    @State var email = ""
    @State var password = ""
    
    @EnvironmentObject var viewModel: AppViewModel
    
    
    var body: some View
    {
        VStack{
            //            Image("logo")
            //                .resizable()
            //                .scaledToFit()
            //                .frame(width: 150, height: 150)
            //
            VStack
            {
                TextField("Correo Electronico", text: $email)
                    .disableAutocorrection(true)
                    .autocapitalization(.none)
                    .padding()
                    .background(Color(.secondarySystemBackground))
                
                SecureField("Contraseña", text: $password)
                    .disableAutocorrection(true)
                    .autocapitalization(.none)
                    .padding()
                    .background(Color(.secondarySystemBackground))
                
                Button(action: {
                    
                    guard !email.isEmpty, !password.isEmpty else
                    {
                        return
                    }
                    
                    viewModel.signUp(email: email, password: password)
                    
                }, label: {
                    Text("Crea tu cuenta")
                        .foregroundColor(Color.white)
                        .frame(width: 200, height: 50)
                        .cornerRadius(8)
                        .background(Color.blue)
                })
            }
            .padding()
            
            
            Spacer()
        }
        .navigationTitle("Creacion de cuenta")
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}

