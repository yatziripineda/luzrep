//
//  Cuest1.swift
//  CUESTIONARIO2
//
//  Created by CEDAM04 on 11/05/23.
//

import SwiftUI

struct Cuest1: View {
    @State private var contador = 0
    @State private var mostrarAlerta = false
    @State private var mostrarMasInformacion = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.pink.edgesIgnoringSafeArea(.all)
                
                Form {
                    Section(header: Text(".")) {
                        Toggle("¿Te cuesta conciliar el sueño o te despiertas varias veces durante la noche?", isOn: Binding(
                            get: { self.contador >= 1 },
                            set: { self.contador = $0 ? self.contador + 1 : self.contador - 1 }
                        ))
                        
                        Toggle("¿Tiene o ha notado sentimientos de culpa posterior al parto?", isOn: Binding(
                            get: { self.contador >= 2 },
                            set: { self.contador = $0 ? self.contador + 1 : self.contador - 1 }
                        ))
                        
                        Toggle("¿Sientes falta de energía o cansancio constante?", isOn: Binding(
                            get: { self.contador >= 3 },
                            set: { self.contador = $0 ? self.contador + 1 : self.contador - 1 }
                        ))
                        
                        Toggle("¿Tuvo contacto con el/la bebe poco despues de dar a luz?", isOn: Binding(
                            get: { self.contador >= 4 },
                            set: { self.contador = $0 ? self.contador + 1 : self.contador - 1 }
                        ))
                        
                        Toggle("¿Te cuesta concentrarte o tomar decisiones?", isOn: Binding(
                            get: { self.contador >= 5 },
                            set: { self.contador = $0 ? self.contador + 1 : self.contador - 1 }
                        ))
                    }
                    
                    Section(header: Text("Puntos")) {
                        Text("Puntos: \(contador)")
                    }
                }
                .foregroundColor(.blue)
            }
            .alert(isPresented: $mostrarAlerta) {
                Alert(
                    title: Text("Contador mayor a 2"),
                    message: Text("El contador es \(contador)."),
                    primaryButton: .cancel(),
                    secondaryButton: .default(Text("Más información"), action: {
                        mostrarMasInformacion = true
                    })
                )
            }
            .sheet(isPresented: $mostrarMasInformacion) {
                PostpartumMentalHealthView()
            }
            .onChange(of: contador) { newValue in
                if newValue > 2 {
                    mostrarAlerta = true
                }
            }
        }
    }
}

struct Cuest1_Previews: PreviewProvider {
    static var previews: some View {
        Cuest1()
    }
}

