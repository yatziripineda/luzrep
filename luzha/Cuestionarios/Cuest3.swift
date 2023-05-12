//
//  Cuest3.swift
//  CUESTIONARIO2
//
//  Created by CEDAM04 on 11/05/23.
//

import SwiftUI

import SwiftUI

struct Cuest3: View {
    @State private var contador = 0
    @State private var mostrarAlerta = false
    @State private var mostrarMasInformacion = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.pink.edgesIgnoringSafeArea(.all)
                
                Form {
                    Section(header: Text(".")) {
                        Toggle("¿Ha experimentado pensamientos recurrentes y no deseados relacionados con el bebé o la maternidad?", isOn: Binding(
                            get: { self.contador >= 1 },
                            set: { self.contador = $0 ? self.contador + 1 : self.contador - 1 }
                        ))
                        
                        Toggle("¿Ha sentido la necesidad de realizar rituales o comportamientos repetitivos que interfieren con su vida diaria?", isOn: Binding(
                            get: { self.contador >= 2 },
                            set: { self.contador = $0 ? self.contador + 1 : self.contador - 1 }
                        ))
                        
                        Toggle("¿Ha sentido que estos pensamientos y comportamientos son inapropiados o irracionales, pero no puede controlarlos?", isOn: Binding(
                            get: { self.contador >= 3 },
                            set: { self.contador = $0 ? self.contador + 1 : self.contador - 1 }
                        ))
                        
                        Toggle("¿Ha experimentado ansiedad o angustia significativa debido a estos pensamientos y comportamientos?", isOn: Binding(
                            get: { self.contador >= 4 },
                            set: { self.contador = $0 ? self.contador + 1 : self.contador - 1 }
                        ))
                        
                        Toggle("¿Has buscado ayuda o tratamiento para estos sintomas?", isOn: Binding(
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
                // Aquí se debe agregar la vista "MasInformacion"
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
struct Cuest3_Previews: PreviewProvider {
    static var previews: some View {
        Cuest3()
    }
}
