//
//  ContentView.swift
//  luzha
//
//  Created by CEDAM05 on 11/05/23.
//



import SwiftUI
import FirebaseAuth
import SwiftOpenAI

class AppViewModel: ObservableObject{
    let auth = Auth.auth()
    
    @Published var signedIn = false
    
    var isSignedIn: Bool{
        return auth.currentUser != nil
    }
    
    func signIn (email: String, password: String){
        auth.signIn(withEmail: email, password: password){
            [weak self] result, error in
            guard result != nil, error == nil else{
                return
            }
            DispatchQueue.main.async{
                //Success
                self?.signedIn = true
            }
        }
    }
    
    func signUp (email: String, password: String){
        auth.createUser(withEmail: email, password: password){
            [weak self] result, error in
            guard result != nil, error == nil else
            {
                return
            }
            DispatchQueue.main.async{
                //Success
                self?.signedIn = true
            }
        }
    }
    func signOut(){
        try? auth.signOut()
        self.signedIn = false
    }
}//fin clase



struct ContentView: View {
    @EnvironmentObject var viewModel: AppViewModel
    @State var offsetY = 0.0
    let gradient = Gradient(colors: [
        Color(red: 40/255.0, green: 13/255.0, blue: 88/255.0),
        .black
    ])
    
    var body: some View {
        NavigationStack {
            ZStack {
                RadialGradient(
                    gradient: gradient,
                    center: .center,
                    startRadius: 0,
                    endRadius: 360
                )
                .ignoresSafeArea()
                
                ScrollView {
                    VStack(spacing: 0) {
                        //Image("fondomuestra2")
                            //.resizable()
                       // Image("fondomuestra2")
                           // .resizable()
                    }
                    .scaledToFill()
                    .frame(width: 800, height: 500)
                    .offset(y: offsetY)
                    .mask(
                        
                        VStack {
                            Spacer()
                            Text("SwiftBeta")
                                .font(.system(size: 65, weight: .bold, design:
                                        .monospaced))
                            Spacer()
                        }
                    )
                }
                
                VStack {
                    Spacer()
                    Spacer()
                    NavigationLink(
                        destination: UsuarioView(),
                        label: {
                            Text("Siguiente")
                                .foregroundColor(.black)
                                .padding()
                                .background(Color.white)
                                .cornerRadius(10)
                        }
                    )
                    .padding(.bottom, 50)
                }
            }
            .onAppear {
                withAnimation(
                    Animation.linear(duration: 5)
                        .repeatForever(autoreverses: false)
                ) {
                    offsetY = -500
                }
        }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
