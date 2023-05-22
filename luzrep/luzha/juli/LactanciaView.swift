//
//  LactanciaView.swift
//  LUZ1
//
//  Created by CEDAM04 on 11/05/23.
//
import SwiftUI
import UserNotifications

struct LactanciaView: View {
    @State private var showTips = false
    @State private var showAlertas = false
    @State private var showEspecialistas = false
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Lactancia")
                .font(.largeTitle)
                .bold()
            
            Image("lactancia")
                .resizable()
                .scaledToFit()
                .padding(.horizontal, 20)
            
            HStack(spacing: 40) {
                Button(action: {
                    self.showTips.toggle()
                }) {
                    VStack {
                        Image(systemName: "lightbulb")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.blue)
                            .clipShape(Circle())
                        Text("Tips")
                            .foregroundColor(.blue)
                            .bold()
                    }
                }
                .sheet(isPresented: $showTips) {
                    TipsView()
                }
                
                Button(action: {
                    self.showAlertas.toggle()
                }) {
                    VStack {
                        Image(systemName: "bell")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.orange)
                            .clipShape(Circle())
                        Text("Alertas")
                            .foregroundColor(.orange)
                            .bold()
                    }
                }
                .sheet(isPresented: $showAlertas) {
                    AlertasView()
                }
                
                Button(action: {
                    self.showEspecialistas.toggle()
                }) {
                    VStack {
                        Image(systemName: "person.2.fill")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.green)
                            .clipShape(Circle())
                        Text("Especialistas")
                            .foregroundColor(.green)
                            .bold()
                    }
                }
                .sheet(isPresented: $showEspecialistas) {
                    EspecialistasView()
                }
            }
        }
        .padding()
    }
}

struct TipsView: View {
    var tips = [
        "Amamanta a demanda y no a horarios fijos.",
        "Mantén una postura cómoda y relajada durante la lactancia.",
        "Asegúrate de que tu bebé esté bien sujeto al pecho para evitar dolor en los pezones.",
        "Ofrece ambos pechos en cada toma para estimular la producción de leche.",
        "Evita el uso de chupones o biberones en las primeras semanas de lactancia.",
        "Bebe mucha agua y come una dieta saludable y equilibrada para mantener una buena producción de leche.",
        "Descansa tanto como sea posible y no te preocupes por las tareas del hogar en los primeros días de lactancia.",
        "Busca ayuda de un especialista en lactancia si tienes problemas o preguntas.",
        "Mantén una actitud positiva y no te rindas si las cosas no salen bien al principio.",
        "Disfruta de este tiempo especial con tu bebé y no te sientas presionada por cumplir con las expectativas de los demás."
    ]
    
    var body: some View {
        VStack {
            Text("Tips para la lactancia")
                .font(.title)
                .bold()
                .padding(.bottom, 20)
            
            ScrollView {
                ForEach(tips.indices, id: \.self) { index in
                    TipView(number: index + 1, text: tips[index])
                        .padding(.bottom, 10)
                }
            }
        }
        .padding()
    }
}

struct TipView: View {
    var number: Int
    var text: String
    
    var body: some View {
        HStack(alignment: .top) {
            Text("\(number).")
                .bold()
                .padding(.trailing, 5)
            Text(text)
                .foregroundColor(.secondary)
                .font(.body)
        }
    }
}



struct AlertasView: View {
    @State private var alerts = ["Alerta 1", "Alerta 2", "Alerta 3"]
    @State private var showingAddAlert = false
    @State private var showingDeleteAlert = false
    @State private var alertToDelete: String?
    
    var body: some View {
        VStack {
            Text("Alertas para la lactancia")
                .font(.title)
                .bold()
                .padding(.bottom, 20)
            
            List {
                ForEach(alerts, id: \.self) { alert in
                    Text(alert)
                        .padding()
                }
                .onDelete(perform: deleteAlerts)
            }
            
            Button("Agregar Alerta") {
                showingAddAlert = true
            }
            .padding(.top, 20)
            
        }
        .padding()
        .alert(isPresented: $showingAddAlert) {
            Alert(
                title: Text("Agregar Alerta"),
                message: Text("Ingrese una alerta"),
                primaryButton: .default(Text("Agregar"), action: addAlert),
                secondaryButton: .cancel()
            )
        }
        .alert(isPresented: $showingDeleteAlert) {
            Alert(
                title: Text("Eliminar Alerta"),
                message: Text("¿Está seguro que desea eliminar esta alerta?"),
                primaryButton: .destructive(Text("Eliminar"), action: deleteSelectedAlert),
                secondaryButton: .cancel()
            )
        }
    }
    
    func addAlert() {
        let newAlert = "Alerta \(alerts.count + 1)"
        alerts.append(newAlert)
    }
    
    func deleteAlerts(at offsets: IndexSet) {
        alertToDelete = alerts[offsets.first!]
        showingDeleteAlert = true
    }
    
    func deleteSelectedAlert() {
        if let alertToDelete = alertToDelete, let index = alerts.firstIndex(of: alertToDelete) {
            alerts.remove(at: index)
        }
        showingDeleteAlert = false
    }
}


struct EspecialistasView: View {
    let especialistas = [        Especialista(nombre: "María Pérez", especialidad: "Asesoramiento en lactancia", telefono: "555-1234", email: "maria.perez@example.com"),        Especialista(nombre: "Juan Gómez", especialidad: "Pediatría", telefono: "555-5678", email: "juan.gomez@example.com"),        Especialista(nombre: "Ana Ruiz", especialidad: "Psicología perinatal", telefono: "555-9012", email: "ana.ruiz@example.com")    ]
    
    var body: some View {
        VStack {
            Text("Especialistas en lactancia")
                .font(.title)
                .bold()
                .padding(.bottom, 20)
            
            ScrollView {
                ForEach(especialistas, id: \.self) { especialista in
                    VStack(alignment: .leading, spacing: 8) {
                        Text(especialista.nombre)
                            .font(.headline)
                        
                        Text(especialista.especialidad)
                            .foregroundColor(.gray)
                        
                        Divider()
                        
                        Text("Teléfono: \(especialista.telefono)")
                            .foregroundColor(.green)
                            .padding(.bottom, 4)
                        Text("Email: \(especialista.email)")
                            .foregroundColor(.blue)
                    }
                    .padding(.vertical, 8)
                    .padding(.horizontal, 16)
                    .background(Color.yellow.opacity(0.1))
                    .cornerRadius(10)
                    .padding(.vertical, 4)
                }
            }
        }
        .padding()
    }
}

struct Especialista: Identifiable, Hashable {
    let id = UUID()
    let nombre: String
    let especialidad: String
    let telefono: String
    let email: String
}

struct LactanciaView_Previews: PreviewProvider {
    static var previews: some View {
        LactanciaView()
    }
}
