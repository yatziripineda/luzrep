//
//  cuest4.swift
//  CUESTIONARIO2
//
//  Created by CEDAM04 on 11/05/23.
//

import SwiftUI

struct cuest4: View {
    @State private var contador = 0
    @State private var mostrarAlerta = false
    @State private var mostrarMasInformacion = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.pink.edgesIgnoringSafeArea(.all)
                
                Form {
                    Section(header: Text("."))
                    
                    {
                        Toggle("¿Ha experimentado recuerdos o imágenes intrusivas relacionados con el parto o el embarazo?", isOn: Binding(
                            get: { self.contador >= 1 },
                            set: { self.contador = $0 ? self.contador + 1 : self.contador - 1 }
                        ))
                        
                        Toggle("¿Ha evitado situaciones o actividades que puedan desencadenar recuerdos o imágenes relacionados con el parto o el embarazo?", isOn: Binding(
                            get: { self.contador >= 2 },
                            set: { self.contador = $0 ? self.contador + 1 : self.contador - 1 }
                        ))
                        
                        Toggle("¿Ha experimentado sensación de adormecimiento emocional o falta de conexión con el bebé?", isOn: Binding(
                            get: { self.contador >= 3 },
                            set: { self.contador = $0 ? self.contador + 1 : self.contador - 1 }
                        ))
                        
                        Toggle("¿Ha experimentado sensación de adormecimiento emocional o falta de conexión con el bebé?", isOn: Binding(
                            get: { self.contador >= 4 },
                            set: { self.contador = $0 ? self.contador + 1 : self.contador - 1 }
                        ))
                        
                        Toggle("¿Ha buscado ayuda o tratamiento para estos síntomas?", isOn: Binding(
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


struct Cuest41: PreviewProvider {
    static var previews: some View {
        cuest4()
    }
}
