//
//  AsistenciaPsicologicaView.swift
//  luzha
//
//  Created by CEDAM05 on 11/05/23.
//


import SwiftUI

struct AsistenciaPsicologicaView: View {
    @State private var showClinics = false
    @State private var showHotline = false
    
    var body: some View {
        VStack {
            Text("Asistencia Psicológica")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom, 20)
            
            Button(action: {
                showClinics.toggle()
            }) {
                Text("Mostrar Clínicas")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 200, height: 50)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .sheet(isPresented: $showClinics) {
                ClinicsListView()
            }
            
            Button(action: {
                showHotline.toggle()
            }) {
                Text("Línea de ayuda")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 200, height: 50)
                    .background(Color.orange)
                    .cornerRadius(10)
            }
            .sheet(isPresented: $showHotline) {
                HotlineListView()
            }
            
            Spacer()
        }
        .padding()
        .background(Color.yellow.opacity(0.2))
    }
}

struct ClinicsListView: View {
    let clinics = ["Clínica de Psicología UNAM", "Clínica de Salud Mental y Atención Psicológica de la UAM", "Instituto Nacional de Psiquiatría Ramón de la Fuente Muñiz", "Centro de Atención Psicológica y Psiquiátrica (CAPPSI)"]
    
    var body: some View {
        NavigationView {
            List(clinics, id: \.self) { clinic in
                Text(clinic)
            }
            .navigationBarTitle("Clínicas")
        }
    }
}

struct HotlineListView: View {
    let hotlines = ["01-800-123-4567", "55-1234-5678", "33-5678-1234", "81-2345-6789"]
    
    var body: some View {
        VStack {
            Text("Línea de ayuda")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom, 20)
            
            ForEach(hotlines, id: \.self) { hotline in
                HStack {
                    Image(systemName: "phone.fill")
                    Text(hotline)
                }
                .padding()
            }
            
            Spacer()
        }
        .padding()
        .background(Color.yellow.opacity(0.2))
    }
}

struct AsistenciaPsicologicaView_Previews: PreviewProvider {
    static var previews: some View {
        AsistenciaPsicologicaView()
    }
}
