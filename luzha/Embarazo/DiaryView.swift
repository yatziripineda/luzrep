//
//  DiaryView.swift
//  luzha
//
//  Created by CEDAM05 on 12/05/23.
//

import SwiftUI

struct DiaryEntry: Identifiable {
    let id = UUID()
    let title: String
    let date: Date
    let content: String
}

struct DiaryView: View {
    @State private var diaryEntries: [DiaryEntry] = []
    @State private var showingAddEntry = false
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(diaryEntries) { entry in
                        VStack(alignment: .leading) {
                            Text(entry.title)
                                .font(.headline)
                            Text(entry.date, style: .date)
                                .font(.subheadline)
                                .foregroundColor(.gray)
                            Text(entry.content)
                                .font(.body)
                        }
                        .padding()
                    }
                    .onDelete(perform: deleteEntry)
                }
                .listStyle(InsetGroupedListStyle())
                
                Button(action: {
                    showingAddEntry = true
                }) {
                    Text("Agregar Entrada")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                .padding()
            }
            .navigationBarTitle("Diario de Embarazo")
        }
        .sheet(isPresented: $showingAddEntry) {
            AddEntryView(addEntry: addEntry)
        }
    }
    
    func addEntry(title: String, content: String) {
        let newEntry = DiaryEntry(title: title, date: Date(), content: content)
        diaryEntries.append(newEntry)
    }
    
    func deleteEntry(at offsets: IndexSet) {
        diaryEntries.remove(atOffsets: offsets)
    }
}

struct AddEntryView: View {
    @State private var title = ""
    @State private var content = ""
    @State private var showingErrorAlert = false
    
    let addEntry: (String, String) -> Void
    
    var body: some View {
        NavigationView {
            Form {
                TextField("Título", text: $title)
                TextEditor(text: $content)
                    .frame(height: 200)
            }
            .navigationBarTitle("Agregar Entrada")
            .navigationBarItems(
                leading: Button("Cancelar") {
                    dismiss()
                },
                trailing: Button("Guardar") {
                    saveEntry()
                }
            )
        }
        .alert(isPresented: $showingErrorAlert) {
            Alert(
                title: Text("Error"),
                message: Text("Por favor, complete todos los campos."),
                dismissButton: .default(Text("OK"))
            )
        }
    }
    
    func saveEntry() {
        guard !title.isEmpty && !content.isEmpty else {
            showingErrorAlert = true
            return
        }
        
        addEntry(title, content)
        dismiss()
    }
    
    func dismiss() {
        UIApplication.shared.windows.first?.rootViewController?.dismiss(animated: true, completion: nil)
    }
}

struct DiaryView_Previews: PreviewProvider {
    static var previews: some View {
        DiaryView()
    }
}

