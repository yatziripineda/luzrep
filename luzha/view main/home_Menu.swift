//
//  home_Menu.swift
//  luzha
//
//  Created by CEDAM05 on 11/05/23.
//

import SwiftUI
struct home_Menu: View {
    @Binding var selectedTable: String
    
    init(selectedTab: Binding<String>){
        self._selectedTable = selectedTab
        
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        
        
        TabView(selection: $selectedTable){
            inicio()
            
        }
    }
}

struct home_Menu_Previews: PreviewProvider {
    static var previews: some View {
        MainMenu()
        
    }
    
}

struct inicio: View{
    var body: some View{
        VStack{
            // Color.gray.opacity(0.5).edgesIgnoringSafeArea(.all)//cambiar de color en fondo
            
            perfilV()
            Spacer()
        }
    }
}
struct perfilV: View{
    var body: some View{
        VStack {
            Image("nena2")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 120)
                .clipShape(Circle())
                .padding(.top, 30)
            
            Text("Nombre de Usuario")
                .font(.title)
                .fontWeight(.bold)
                .padding(.top, 10)
            
            Form {
                Section(header: Text("Información personal")) {
                    TextField("Nombre completo", text: .constant("María González"))
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    TextField("Edad", text: .constant("28"))
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    TextField("Email", text: .constant("maria.gonzalez@gmail.com"))
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    DatePicker("Fecha de nacimiento", selection: .constant(Date()))
                }
                .padding(.vertical, 10)
                .listRowBackground(Color.white)
                
                Section(header: Text("Preferencias")) {
                    Toggle(isOn: .constant(true)) {
                        Text("Recibir notificaciones")
                    }
                    Toggle(isOn: .constant(false)) {
                        Text("Recibir correos electrónicos")
                    }
                    Picker("Idioma", selection: .constant(0)) {
                        Text("Español").tag(0)
                        Text("Inglés").tag(1)
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
                .padding(.vertical, 10)
                .listRowBackground(Color.white)
                
                Section(header: Text("Eliminar cuenta")) {
                    Button(action: {
                        // Agregar aquí la lógica para eliminar la cuenta del usuario
                    }) {
                        Text("Eliminar cuenta")
                            .foregroundColor(.red)
                    }
                }
                .padding(.vertical, 10)
                .listRowBackground(Color.white)
            }
            .navigationBarTitle(Text("Configuración"), displayMode: .inline)
            .navigationBarItems(trailing: Button(action: {
                // Agregar aquí la lógica para guardar los cambios en la configuración del usuario
            }) {
                Text("Guardar")
                    .fontWeight(.bold)
            })
            .listStyle(GroupedListStyle())
            .environment(\.horizontalSizeClass, .regular)
            .background(Color(red: 240/255, green: 240/255, blue: 240/255))
            .edgesIgnoringSafeArea(.bottom)
        }

    }
    
}

