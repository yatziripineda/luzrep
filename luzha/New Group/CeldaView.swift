//
//  CeldaView.swift
//  Contactos1
//
//  Created by CEDAM05 on 28/04/23.
//

import SwiftUI

struct CeldaView: View {
    var nombre: String
    var apellido: String
    var telefono: String
    var iniciales: String
    
    var body: some View {
        HStack{
            Text(self.iniciales)
                .padding(20)
                .background(Color.gray)
                .clipShape(Circle())
                .foregroundColor(.white)
                .font(.title)
            VStack(alignment: .leading){
                Text(self.nombre)
                    .font(.title)
                    .bold()
                Text(self.apellido)
                    .font(.headline)
                Text(self.telefono)
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
        }
    }
}

struct CeldaView_Previews: PreviewProvider {
    static var previews: some View {
        CeldaView(nombre: "", apellido: "", telefono: "", iniciales:  "")
    }
}
