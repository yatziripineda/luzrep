//
//  AsociacionesView.swift
//  luzha
//
//  Created by CEDAM05 on 12/05/23.
//

import SwiftUI

struct AsociacionesView: View {
    let asociaciones = [
        Asociacion(nombre: "Asociación 1", descripcion: "Descripción de la asociación 1", paginaWeb: "https://unitedgmh.org/support/"),
        Asociacion(nombre: "Asociación 2", descripcion: "Descripción de la asociación 2", paginaWeb: "https://blog.opencounseling.com/suicide-hotlines/"),
        Asociacion(nombre: "Asociación 3", descripcion: "Descripción de la asociación 3", paginaWeb: "https://www.asociacion3.com")
    ]
    
    var body: some View {
        VStack {
            Text("Asociaciones")
                .font(.title)
                .bold()
                .padding(.bottom, 20)
            
            ScrollView {
                ForEach(asociaciones, id: \.self) { asociacion in
                    VStack(alignment: .leading, spacing: 8) {
                        Text(asociacion.nombre)
                            .font(.headline)
                        
                        Text(asociacion.descripcion)
                            .foregroundColor(.gray)
                        
                        Divider()
                        
                        Link(destination: URL(string: asociacion.paginaWeb)!) {
                            Text("Visitar página web")
                                .foregroundColor(.blue)
                        }
                    }
                    .padding(.vertical, 8)
                    .padding(.horizontal, 16)
                    .background(LinearGradient(gradient: Gradient(colors: [Color.yellow, Color.orange]), startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(10)
                    .padding(.vertical, 4)
                }
            }
        }
        .padding()
    }
}

struct Asociacion: Identifiable, Hashable {
    let id = UUID()
    let nombre: String
    let descripcion: String
    let paginaWeb: String
}

