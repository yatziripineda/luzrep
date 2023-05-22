//
//  Cuest2.swift
//  CUESTIONARIO2
//
//  Created by CEDAM04 on 11/05/23.
//
import SwiftUI
struct Cuest2: View {
    @State private var contador = 0
    @State private var mostrarAlerta = false
    @State private var mostrarMasInformacion = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.pink.edgesIgnoringSafeArea(.all)
                
                Form {
                    Section(header: Text(".")) {
                        Toggle("¿Se preocupa constantemente por la salud y seguridad del bebé?", isOn: Binding(
                            get: { self.contador >= 1 },
                            set: { self.contador = $0 ? self.contador + 1 : self.contador - 1 }
                        ))
                        
                        Toggle("¿Tiene miedo de salir de casa o de dejar al bebé solo?", isOn: Binding(
                            get: { self.contador >= 2 },
                            set: { self.contador = $0 ? self.contador + 1 : self.contador - 1 }
                        ))
                        
                        Toggle("¿Tiene miedo de no poder cuidar al bebé adecuadamente?", isOn: Binding(
                            get: { self.contador >= 3 },
                            set: { self.contador = $0 ? self.contador + 1 : self.contador - 1 }
                        ))
                        
                        Toggle("¿Ha experimentado síntomas físicos como sudoración, temblores o palpitaciones cardíacas relacionados con la ansiedad?", isOn: Binding(
                            get: { self.contador >= 4 },
                            set: { self.contador = $0 ? self.contador + 1 : self.contador - 1 }
                        ))
                        
                        Toggle("¿Ha experimentado cambios en su apetito o patrón de sueño desde el parto debido a la ansiedad?", isOn: Binding(
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


struct Cuest2_Previews: PreviewProvider {
    static var previews: some View {
        Cuest2()
    }
}
