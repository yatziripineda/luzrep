//
//  SignInView.swift
//  luzha
//
//  Created by CEDAM05 on 11/05/23.
//
//  SignInView.swift
//  luzha
//
//  Created by CEDAM05 on 11/05/23.
//
//import SwiftUI
//
//
//struct SignInView: View {
//    @State var email = ""
//    @State var password = ""
//    @EnvironmentObject var viewModel: AppViewModel
//
//    var body: some View{
//        //            Image("logo")
//        //                .resizable()
//        //                .scaledToFit()
//        //                .frame(width: 150, height: 150)
//
//        VStack{
//            TextField("Correo Electronico", text: $email)
//                .disableAutocorrection(true)
//                .autocapitalization(.none)
//                .padding()
//                .background(Color(.secondarySystemBackground))
//
//            SecureField("Contraseña", text: $password)
//                .disableAutocorrection(true)
//                .autocapitalization(.none)
//                .padding()
//                .background(Color(.secondarySystemBackground))
//
//            Button(action: {
//                guard !email.isEmpty, !password.isEmpty else{
//                    return
//                }
//
//                viewModel.signIn(email: email, password: password)
//
//            }, label: {
//                Text("Inicio de Sesión")
//                    .foregroundColor(Color.white)
//                    .frame(width: 200, height: 50)
//                    .cornerRadius(8)
//                    .background(Color.blue)
//            })
//
//            NavigationLink("Crea tu cuenta", destination: SignUpView())
//                .padding()
//        }
//        .navigationTitle("Iniciar Sesión")
//        .padding()
//        Spacer()
//
//    }
//}
//
//struct SignInView_Previews: PreviewProvider {
//    static var previews: some View {
//        SignInView()
//    }
//}
import SwiftUI


struct SignInView: View {
    @State var email = ""
    @State var password = ""
    @EnvironmentObject var viewModel: AppViewModel
    
    var body: some View{
//            Image("logo")
//                .resizable()
//                .scaledToFit()
//                .frame(width: 150, height: 150)
            
        VStack{
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
            NavigationLink(destination:
                            MainMenu()) {
                Text("Inicio de Sesión")
                    .foregroundColor(Color.white)
                    .frame(width: 200, height: 50)
                    .cornerRadius(8)
                    .background(Color.blue)
            }
           
//            Button(action: {
//
//                guard !email.isEmpty, !password.isEmpty else{
//                    return
//                }
//
//                viewModel.signIn(email: email, password: password)
//            }, label: {
//                Text("Inicio de Sesión")
//                    .foregroundColor(Color.white)
//                    .frame(width: 200, height: 50)
//                    .cornerRadius(8)
//                    .background(Color.blue)
//            })
            
            NavigationLink("Crea tu cuenta", destination: SignUpView())
                .padding()
        }
        .navigationTitle("Iniciar Sesión")
        .padding()
        Spacer()
      
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
