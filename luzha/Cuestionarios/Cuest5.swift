//
//  Cuest5.swift
//  CUESTIONARIO2
//
//  Created by CEDAM04 on 11/05/23.
//

import SwiftUI

struct Cuest5: View {
    @State private var contador = 0
    @State private var mostrarAlerta = false
    @State private var mostrarMasInformacion = false
    
    var body: some View {
        NavigationView {
            VStack {
              
                VStack {
                    Form {
                        Section(header: Text(".")) {
                            Toggle("¿Has sufrido alguna vez algún tipo de maltrato o violencia durante el proceso de parto o atención médica prenatal?", isOn: Binding(
                                get: { self.contador >= 1 },
                                set: { self.contador = $0 ? self.contador + 1 : self.contador - 1 }
                            ))
                            
                            Toggle("¿Te han obligado alguna vez a tomar decisiones médicas sin tu consentimiento durante el embarazo o parto?", isOn: Binding(
                                get: { self.contador >= 2 },
                                set: { self.contador = $0 ? self.contador + 1 : self.contador - 1 }
                            ))
                            
                            Toggle("¿Te han realizado alguna intervención médica innecesaria durante el parto sin tu consentimiento?", isOn: Binding(
                                get: { self.contador >= 3 },
                                set: { self.contador = $0 ? self.contador + 1 : self.contador - 1 }
                            ))
                            
                            Toggle("Has sentido alguna vez que no han tomado en cuenta tus opiniones o preferencias durante el parto o atencion médica prenatal", isOn: Binding(
                                get: { self.contador >= 4 },
                                set: { self.contador = $0 ? self.contador + 1 : self.contador - 1 }
                            ))
                            
                            Toggle("¿Te han discriminado o tratado de forma diferente por razones de género, raza, orientación sexual o cualquier otra razón durante el parto o atención médica prenatal?", isOn: Binding(
                                get: { self.contador >= 5 },
                                set: { self.contador = $0 ? self.contador + 1 : self.contador - 1 }
                            ))
                        }
                        
                        Section(header: Text("Puntos")) {
                            Text("Puntos: \(contador)")
                        }
                    }
                    .foregroundColor(.blue)
                    
                    Button(action: {
                        mostrarAlerta = true
                    }, label: {
                        Text("¿Quieres denunciar?")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.red)
                            .cornerRadius(8)
                    })
                }
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
        }
    }
}

struct Cuest5_Previews: PreviewProvider {
    static var previews: some View {
        Cuest5()
    }
}
