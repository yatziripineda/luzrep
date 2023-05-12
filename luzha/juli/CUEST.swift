//
//  CUEST.swift
//  luzha
//
//  Created by CEDAM05 on 11/05/23.
//

import SwiftUI

struct cuestionarios: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Selecciona un cuestionario:")
                    .font(.system(size: 20, weight: .bold, design: .default))
                    .foregroundColor(.black)
                    .padding(.bottom, 20)
                
                VStack(spacing: 20) {
                    
                    NavigationLink(destination: Cuest1()) {
                        Text("Depresion Postparto")
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity, minHeight: 60)
                            .background(Color.yellow)
                            .cornerRadius(10)
                    }
                    NavigationLink(destination: Cuest2()) {
                        Text("Ansiedad Posparto")
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity, minHeight: 60)
                            .background(Color.yellow)
                            .cornerRadius(10)
                    }
                    NavigationLink(destination: Cuest3()) {
                        Text("Transtorno obsesivo-compulsivo postparto")
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity, minHeight: 60)
                            .background(Color.yellow)
                            .cornerRadius(10)
                    }
                    NavigationLink(destination: cuest4()) {
                        Text("Estres postraumatico posparto")
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity, minHeight: 60)
                            .background(Color.yellow)
                            .cornerRadius(10)
                    }
                    NavigationLink(destination: Cuest5()) {
                        Text("Violencia Obstetrica")
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity, minHeight: 60)
                            .background(Color.yellow)
                            .cornerRadius(10)
                    }
                }
                .padding()
            }
            .navigationBarTitle("Cuestionarios")
            .background(Color.yellow.opacity(0.2)).ignoresSafeArea()
            .edgesIgnoringSafeArea(.all)
        }
    }
}









extension View {
    func navigationBarColor(_ backgroundColor: Color) -> some View {
        self.modifier(NavigationBarModifier(backgroundColor: backgroundColor))
    }
}

struct NavigationBarModifier: ViewModifier {
    var backgroundColor: Color

    init(backgroundColor: Color) {
        self.backgroundColor = backgroundColor
        let coloredAppearance = UINavigationBarAppearance()
        coloredAppearance.configureWithTransparentBackground()
        coloredAppearance.backgroundColor = UIColor(backgroundColor)
        coloredAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        coloredAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        
        UINavigationBar.appearance().standardAppearance = coloredAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
    }

    func body(content: Content) -> some View {
        ZStack {
            content
            VStack {
                GeometryReader { geometry in
                    self.backgroundColor
                        .frame(height: geometry.safeAreaInsets.top)
                        .edgesIgnoringSafeArea(.top)
                    Spacer()
                }
            }
        }
    }
}
