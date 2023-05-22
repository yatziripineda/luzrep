//
//  ContentView.swift
//  LUZ1
//
//  Created by CEDAM04 on 11/05/23.
//

import SwiftUI
// import FirebaseAuth  // Comentado porque aún no tienes conectada tu base de datos
// import SwiftOpenAI  // Comentado porque aún no se utiliza en este código

class AppViewModel: ObservableObject {
    // let auth = Auth.auth()  // Comentado porque aún no tienes conectada tu base de datos
    
    @Published var signedIn = false
    
    var isSignedIn: Bool {
        // return auth.currentUser != nil  // Comentado porque aún no tienes conectada tu base de datos
        return false  // Cambiado para evitar el error mientras no tengas conectada tu base de datos
    }
    
    func signIn(email: String, password: String) {
        // auth.signIn(withEmail: email, password: password) { [weak self] result, error in
        //     guard result != nil, error == nil else {
        //         return
        //     }
        //     DispatchQueue.main.async {
        //         //Success
        //         self?.signedIn = true
        //     }
        // }
    }
    
    func signUp(email: String, password: String) {
        // auth.createUser(withEmail: email, password: password) { [weak self] result, error in
        //     guard result != nil, error == nil else {
        //         return
        //     }
        //     DispatchQueue.main.async {
        //         //Success
        //         self?.signedIn = true
        //     }
        // }
    }
    
    func signOut() {
        // try? auth.signOut()  // Comentado porque aún no tienes conectada tu base de datos
        self.signedIn = false
    }
} // fin clase

struct ContentView: View {
    @EnvironmentObject var viewModel: AppViewModel
    @State var offsetY = 0.0
    let gradient = Gradient(colors: [
        Color(red: 255/255, green: 255/255, blue: 255/255),
        Color.yellow
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
                        Image("img4")
                            .resizable()
                        Image("img4")
                            .resizable()
                    }
                    .scaledToFill()
                    .frame(width: 800, height: 500)
                    .offset(y: offsetY)
                    .mask(
                        VStack {
                            Spacer()
                            Text("TLALLI")
                                .font(.system(size: 100, weight: .bold, design: .monospaced))
                                .shadow(color: .black, radius: 3, x: 0, y: 0)

                            Spacer()
                        }
                    )
                }
                
                VStack {
                    Spacer()
                    Spacer()
                    NavigationLink(
                        destination: SingInView(),
                        label: {
                            Text("Siguiente")
                                .foregroundColor(.blue)
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
            .environmentObject(AppViewModel())
    }
}
