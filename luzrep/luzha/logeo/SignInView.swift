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
import SwiftUI
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
//}struct SignInView: View {
import SwiftOpenAI
extension Color {
    static let darkBlue = Color(red: 12/255, green: 22/255, blue: 33/255)
}
struct SignInView: View {
@State var email = ""
@State var password = ""
@EnvironmentObject var viewModel: AppViewModel
    
var body: some View{
    ZStack {
        Color.darkBlue
            .ignoresSafeArea()

        
        VStack{
            Text("Inicia tu cuenta")
                .font(.largeTitle)
                .bold()
                .foregroundColor(.white)
                .padding(.bottom, 30)
            TextField("Correo Electrónico", text: $email)
                .disableAutocorrection(true)
                .autocapitalization(.none)
                .padding()
                .background(Color(.secondarySystemBackground))
                .font(.system(size: 16, weight: .regular, design: .serif))
                .foregroundColor(.black)
                .cornerRadius(10)
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))
            
            SecureField("Contraseña", text: $password)
                .disableAutocorrection(true)
                .autocapitalization(.none)
                .padding()
                .background(Color(.secondarySystemBackground))
                .font(.system(size: 16, weight: .regular, design: .serif))
                .foregroundColor(.black)
                .cornerRadius(10)
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))
            
            NavigationLink(destination: MainMenu()) {
                Text("Inicio de Sesión")
                    .foregroundColor(Color.white)
                    .frame(width: 200, height: 50)
                    .cornerRadius(30)
                    .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.orange]), startPoint: .leading, endPoint: .trailing))
                    .font(.headline)
            }
           
            NavigationLink("Crear Cuenta", destination: SignUpView())
                .padding()
                .foregroundColor(.black)
                .font(.system(size: 16, weight: .semibold, design: .serif))
        }
        .padding()
        .background(Color.gray)
        .cornerRadius(20)
        .shadow(color: .gray, radius: 5, x: 0, y: 2)
        

        
        Spacer()
    }
}
}

struct SignInView_Previews: PreviewProvider {
static var previews: some View {
    SignInView()
}
}
