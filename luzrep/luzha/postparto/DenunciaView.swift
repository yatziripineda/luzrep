//
//  DenunciaView.swift
//  luzha
//
//  Created by CEDAM05 on 11/05/23.
//

import SwiftUI

struct DenunciaView: View {
    
    @State private var experiencia: String = ""
    @State private var tipoViolencia: String = ""
    @State private var fecha: Date = Date()
    @State private var ubicacion: String = ""
    @State private var detalles: String = ""
    
    var body: some View {
        Form {
            Section(header: Text("Cuéntanos tu experiencia")) {
                TextEditor(text: $experiencia)
                    .frame(minHeight: 150)
            }
            
            Section(header: Text("Tipo de violencia")) {
                Picker(selection: $tipoViolencia, label: Text("Selecciona el tipo de violencia")) {
                    Text("Trato irrespetuoso").tag("Trato irrespetuoso")
                    Text("Violencia física").tag("Violencia física")
                    Text("Violencia psicológica").tag("Violencia psicológica")
                    Text("Intervención no consentida").tag("Intervención no consentida")
                    Text("Otro").tag("Otro")
                }
                .pickerStyle(MenuPickerStyle())
            }
            
            Section(header: Text("Fecha de la experiencia")) {
                DatePicker(selection: $fecha, displayedComponents: [.date]) {
                    Text("Fecha")
                }
            }
            
            Section(header: Text("Ubicación")) {
                TextField("Lugar donde ocurrió la experiencia", text: $ubicacion)
            }
            
            Section(header: Text("Detalles adicionales")) {
                TextEditor(text: $detalles)
                    .frame(minHeight: 150)
            }
            
            Section {
                Button(action: {
                    // Aquí se podría agregar la lógica para enviar la denuncia
                }) {
                    Text("Enviar denuncia")
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                }
                .padding()
                .background(Color.red)
                .cornerRadius(10)
            }
        }
        .navigationBarTitle(Text("Violencia obstétrica"))
    }

}

struct DenunciaView_Previews: PreviewProvider {
    static var previews: some View {
        DenunciaView()
    }
}
