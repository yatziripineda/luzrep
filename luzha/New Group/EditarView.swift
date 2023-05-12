//
//  EditarView.swift
//  Contactos1
//
//  Created by CEDAM05 on 02/05/23.
//

import SwiftUI

struct EditarView: View {
    
    @Environment(\.managedObjectContext) var contexto
    @Environment(\.presentationMode) var atras
    var contacto :Contactos
    
    @State private var nombre = ""
    @State private var apellido = ""
    @State private var telefono = ""
    var body: some View {
        VStack {
            TextField("Nombre", text: self.$nombre)
                .padding(10)
                .onAppear{
                    self.nombre = self.contacto.nombre
                }
            TextField("Apellido", text: self.$apellido)
                .padding(10)
                .onAppear{
                    self.apellido = self.contacto.apellido
                }
            TextField("Teléfono", text: self.$telefono)
                .padding(10)
                .keyboardType(.phonePad)
                .onAppear{
                    self.telefono = self.contacto.telefonon
                }
            Button(action: {
                
                self.contacto.nombre = self.nombre
                self.contacto.apellido = self.apellido
                self.contacto.telefonon = self.telefono
                let inicialN = String(self.nombre.first ?? "A")
                let inicialA = String(self.apellido.first ?? "A")
                self.contacto.iniciales = inicialN + inicialA
                
                do{
                    try self.contexto.save()
                    print("Edito correctamente")
                    self.atras.wrappedValue.dismiss()
                }catch let error as NSError {
                    print("Error al editar", error.localizedDescription)
                }
                
            }){
                HStack{
                    Image(systemName: "pencil")
                        .foregroundColor(.white)
                        .font(.title)
                    Text("Editar contacto")
                        .foregroundColor(.white)
                        .font(.title)
                }
            }.padding(10)
                .background(Color.blue)
            Spacer()
            .navigationBarTitle("Editar contacto")
        }
    }
}

struct EditarView_Previews: PreviewProvider {
    static var previews: some View {
        EditarView(contacto: Contactos())
    }
}
