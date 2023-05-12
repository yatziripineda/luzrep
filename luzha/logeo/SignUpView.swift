//
//  SignUpView.swift
//  luzha
//
//  Created by CEDAM05 on 11/05/23.
//SignUpView.swift
//  luzha
//
//  Created by CEDAM05 on 11/05/23.
//
import SwiftUI
extension Color {
    static let darkPetroleumBlue = Color(red: 12/255, green: 22/255, blue: 33/255)
}

struct SignUpView: View {
    @State var email = ""
    @State var password = ""
    @EnvironmentObject var viewModel: AppViewModel
   
    var body: some View {
        ZStack {
            Color.darkPetroleumBlue
                .ignoresSafeArea()
            
            VStack {
                Text("Creación de cuenta")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding(.bottom, 30)
                
                VStack {
                    TextField("Correo Electrónico", text: $email)
                        .disableAutocorrection(true)
                        .autocapitalization(.none)
                        .padding()
                        .background(Color(.secondarySystemBackground))
                        .cornerRadius(10)
                        .overlay(RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.orange, lineWidth: 2))
                        .foregroundColor(.black)
                    
                    SecureField("Contraseña", text: $password)
                        .disableAutocorrection(true)
                        .autocapitalization(.none)
                        .padding()
                        .background(Color(.secondarySystemBackground))
                        .cornerRadius(10)
                        .overlay(RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.orange, lineWidth: 2))
                        .foregroundColor(.black)
                    
                    Button(action: {
                        guard !email.isEmpty, !password.isEmpty else {
                            return
                        }
                        
                        viewModel.signUp(email: email, password: password)
                    }, label: {
                        Text("Crear cuenta")
                            .foregroundColor(Color.white)
                            .frame(width: 200, height: 50)
                            .cornerRadius(30)
                            .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.orange]), startPoint: .leading, endPoint: .trailing))
                            .font(.headline)
                    })
                    .padding(.top, 20)
                }
                .padding()
                .background(Color.gray)
                .cornerRadius(20)
                .shadow(color: .gray, radius: 5, x: 0, y: 2)
                
                Spacer()
            }
            .padding()
            .navigationBarTitle("", displayMode: .inline)
                .foregroundColor(Color.white)
                .bold()

        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
