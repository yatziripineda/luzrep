//
//  AgregarContactoView.swift
//  Contactos1
//
//  Created by CEDAM05 on 28/04/23.
//

import SwiftUI

struct AgregarContactoView: View {
    
    @Environment(\.managedObjectContext) var contexto
    @Environment(\.presentationMode) var atras
    
    @State private var nombre = ""
    @State private var apellido = ""
    @State private var telefono = ""
    var body: some View {
        VStack {
            TextField("Nombre", text: self.$nombre)
                .padding(10)
            TextField("Apellido", text: self.$apellido)
                .padding(10)
            TextField("Teléfono", text: self.$telefono)
                .padding(10)
                .keyboardType(.phonePad)
            Button(action: {
                let nuevoContacto = Contactos(context: self.contexto)
                nuevoContacto.nombre = self.nombre
                nuevoContacto.apellido = self.apellido
                nuevoContacto.telefonon = self.telefono
                let inicialN = String(self.nombre.first ?? "A")
                let inicialA = String(self.apellido.first ?? "A")
                nuevoContacto.iniciales = inicialN + inicialA
                
                do{
                    try self.contexto.save()
                    print("Guardo correctamente")
                    self.atras.wrappedValue.dismiss()
                }catch let error as NSError {
                    print("Error al guardar", error.localizedDescription)
                }
                
            }){
                HStack{
                    Image(systemName: "person.xrop.sircle")
                        .foregroundColor(.white)
                        .font(.title)
                    Text("Guardar contacto")
                        .foregroundColor(.white)
                        .font(.title)
                }
            }.padding(10)
                .background(Color.blue)
            Spacer()
            .navigationBarTitle("Agregar contacto")
        }
    }
}

struct AgregarContactoView_Previews: PreviewProvider {
    static var previews: some View {
        AgregarContactoView()
    }
}
