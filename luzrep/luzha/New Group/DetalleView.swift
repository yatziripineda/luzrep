//
//  DetalleView.swift
//  Contactos1
//
//  Created by CEDAM05 on 28/04/23.
//

import SwiftUI

struct DetalleView: View {
    @Environment(\.presentationMode) var atras
    var contacto :Contactos
    var body: some View {
        VStack(alignment: .center){
            Text(self.contacto.iniciales)
                .padding(50)
                .background(Color.gray)
                .clipShape(Circle())
                .foregroundColor(.white)
                .font(.custom("Arial", size: 100))
            VStack(alignment: .leading){
                Text(self.contacto.nombre)
                    .font(.title)
                    .bold()
                Text(self.contacto.apellido)
                    .font(.headline)
                Text("TEl:  \(self.contacto.telefonon)")
                    .font(.largeTitle)
                HStack{
                    Button(action:{
                        guard let numero = URL(string: "tel://" + self.contacto.telefonon)else{
                            return
                        }
                        UIApplication.shared.open(numero)
                    }){
                        Image(systemName: "phone.fill")
                            .modifier(botonCircular(color: Color.red))
                    }
                    
                    NavigationLink(destination: EditarView(contacto: self.contacto)){
                       Image(systemName: "pencil")
                            .modifier(botonCircular(color: Color.blue))
                    
                    }
                }
                Spacer()
            }
        }
    }
    struct botonCircular: ViewModifier{
        
        var color: Color
        func body(content: Content) -> some View {
            content
                .padding(30)
                .background(color)
                .clipShape(Circle())
                .foregroundColor(.white)
                .font(.title)
        }
    }
    
    
    struct DetalleView_Previews: PreviewProvider {
        static var previews: some View {
            DetalleView(contacto: Contactos())
        }
    }
}
