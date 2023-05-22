//
//  Configuraciones.swift
//  luzha
//
//  Created by CEDAM05 on 11/05/23.
//

import SwiftUI

struct ConfiguracionView: View {
    @State private var nombreHijo1: String = "Lucas"
    @State private var nombreHijo2: String = "Sofía"
    @State private var nombre: String = "Ana"

    var body: some View {
        Form {
            Section(header: Text("Información personal")) {
                TextField("Nombre", text: $nombre)
            }
            
            Section(header: Text("Hijos")) {
                TextField("Nombre del primer hijo", text: $nombreHijo1)
                TextField("Nombre del segundo hijo", text: $nombreHijo2)
            }
            
            Section {
                Button(action: {
                    // Aquí se podrían guardar los datos modificados en una base de datos, por ejemplo
                }) {
                    Text("Guardar cambios")
                }
            }
        }
        .navigationBarTitle(Text("Configuración"))
    }
}

struct ConfiguracionView_Previews: PreviewProvider {
    static var previews: some View {
        ConfiguracionView()
    }
}





