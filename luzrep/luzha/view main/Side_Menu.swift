//
//  Side_Menu.swift
//  luzha
//
//  Created by CEDAM05 on 11/05/23.
//

import SwiftUI

struct Side_Menu: View {
   // @StateObject var scanProvider = ScanProvider()
    @Binding var selectedTable: String
    @Namespace var animation
    @State var isModal: Bool = false
    var body: some View {

        VStack(alignment: .leading, spacing: 15, content: {
            
            //Imagen del menu
            Image("nena2")
                .resizable().aspectRatio( contentMode: .fill)
                .frame(width: 80, height: 140)
                .cornerRadius(30)
                .padding(.top,30)
                .shadow(color: .white, radius:10)
            
            VStack(alignment: .leading, spacing: 6, content: {
                Text("Tlalli")
                    .padding(.top, 10)
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.orange)
                
            })
            //            Button("Creadores") {
            //                self.isModal = true
            //            }.sheet(isPresented: $isModal, content: {
            //                Credenciales()
            //            }).foregroundColor(.black).opacity(0.4)
            //                .fontWeight(.semibold)
            //                .padding(.top, -15)
            lista()
                .cornerRadius(30)
                .frame(width: 250, height: 418,alignment: .leading)
            
            
//            ScrollView{
//
//                NavigationLink{
//                    EmtabView()
//                } label: {
//
//                    Image(systemName: "plus.bubble")
//                        .font(.system(size: 30, weight: .bold))
//                    Text("Embarazo")
//                }.fontWeight(.semibold)
//                    .foregroundColor(.white)
//                    .padding(.vertical,12)
//                    .padding(.horizontal,20)
//                    .background(
//                        LinearGradient(
//                            gradient: Gradient(colors: [Color.orange, Color.red]),
//                            startPoint: .leading,
//                            endPoint: .trailing
//                        )
//                    )
//
//                    .cornerRadius(15)
//                NavigationLink{
//                    PostParto()                  } label: {
//                    Image(systemName: "plus.bubble").font(.system(size: 30, weight: .bold))
//                    Text("Post Parto")
//                }.fontWeight(.semibold)
//                    .foregroundColor(.white)
//                    .padding(.vertical,12)
//                    .padding(.horizontal,20)
//                    .background(
//                        LinearGradient(
//                            gradient: Gradient(colors: [Color.orange, Color.red]),
//                            startPoint: .leading,
//                            endPoint: .trailing
//                        )
//                    )
//                    .cornerRadius(15)
//                NavigationLink{
//                    Configuraciones()
//
//                } label: {
//                    Image(systemName: "magnifyingglass.circle").font(.system(size: 30, weight: .bold))
//                    Text("Configuraciones  ")
//                }.fontWeight(.semibold)
//                    .foregroundColor(.white)
//                    .padding(.vertical,12)
//                    .padding(.horizontal,20)
//                    .background(
//                        LinearGradient(
//                            gradient: Gradient(colors: [Color.orange, Color.red]),
//                            startPoint: .leading,
//                            endPoint: .trailing
//                        )
//                    )
//                    .cornerRadius(15)
//
//                NavigationLink{
//                    ChatIA()
//
//                } label: {
//                    Image(systemName: "camera.fill").font(.system(size: 30, weight: .bold))
//                    Text("Chat")
//                }.fontWeight(.semibold)
//                    .foregroundColor(.white)
//                    .padding(.vertical,12)
//                    .padding(.horizontal,20)
//                    .background(
//                        LinearGradient(
//                            gradient: Gradient(colors: [Color.orange, Color.red]),
//                            startPoint: .leading,
//                            endPoint: .trailing
//                        )
//                    )
//                    .cornerRadius(15)
//            }
            
        })
        .padding()
        .frame(maxWidth: .infinity,maxHeight: .infinity, alignment: .topLeading)
        .background(Color(red: 0.08, green: 0.17, blue: 0.31).ignoresSafeArea())
        
    }
}
struct lista: View{
    var body: some View{
        List {
            Section(
                header: Text("Embarazo")

            ) {
                NavigationLink(
                    destination: cuestionarios(),
                    label: {
                        HStack {
                            
                            Image(systemName: "pencil")
                            Text("Quizz")
                            Spacer()
                        }.fontWeight(.semibold)
                            .foregroundColor(.white)
                            .padding(.vertical,13)
                            .padding(.horizontal,20)
                            .background(
                                LinearGradient(
                                    gradient: Gradient(colors: [Color.orange, Color.red]),
                                    startPoint: .leading,
                                    endPoint: .trailing
                                )
                            )
                    })
//                NavigationLink(
//                    destination: TipsView(),
//                    label: {
//                        HStack {
//                            Text("Tips")
//                            Spacer()
//                            Image(systemName: "chevron.right")
//                        }.fontWeight(.semibold)
//                            .foregroundColor(.white)
//                            .padding(.vertical,13)
//                            .padding(.horizontal,20)
//                            .background(
//                                LinearGradient(
//                                    gradient: Gradient(colors: [Color.orange, Color.red]),
//                                    startPoint: .leading,
//                                    endPoint: .trailing
//                                )
//                            )
//                    })
                NavigationLink(
                    destination: DiaryView(),
                    label: {
                        HStack {
                            Image(systemName: "book.closed")
                            Text("Diario")
                            Spacer()
                           
                        }.fontWeight(.semibold)
                            .foregroundColor(.white)
                            .padding(.vertical,13)
                            .padding(.horizontal,20)
                            .background(
                                LinearGradient(
                                    gradient: Gradient(colors: [Color.orange, Color.red]),
                                    startPoint: .leading,
                                    endPoint: .trailing
                                )
                            )
                    })
//                NavigationLink(
//                    destination: ForoView(),
//                    label: {
//                        HStack {
//                            Text("Foro")
//                            Spacer()
//                            Image(systemName: "chevron.right")
//                        }.fontWeight(.semibold)
//                            .foregroundColor(.white)
//                            .padding(.vertical,13)
//                            .padding(.horizontal,20)
//                            .background(
//                                LinearGradient(
//                                    gradient: Gradient(colors: [Color.orange, Color.red]),
//                                    startPoint: .leading,
//                                    endPoint: .trailing
//                                )
//                            )
//                    })
            }
            .textCase(nil)
            
            
            Section(header: Text("Post Parto")) {
                NavigationLink(
                    destination: cuestionarios(),
                    label: {
                        HStack {
                            Image(systemName: "pencil")
                            Text("Quizz")
                            Spacer()

                        }
                        .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .padding(.vertical,13)
                            .padding(.horizontal,20)
                            .background(
                                LinearGradient(
                                    gradient: Gradient(colors: [Color.orange, Color.red]),
                                    startPoint: .leading,
                                    endPoint: .trailing
                                )
                            )
                    })
//                NavigationLink(
//                    destination: ForoPView(),
//                    label: {
//                        HStack {
//                            Text("Foro")
//                            Spacer()
//                            Image(systemName: "chevron.right")
//                        }.fontWeight(.semibold)
//                            .foregroundColor(.white)
//                            .padding(.vertical,13)
//                            .padding(.horizontal,20)
//                            .background(
//                                LinearGradient(
//                                    gradient: Gradient(colors: [Color.orange, Color.red]),
//                                    startPoint: .leading,
//                                    endPoint: .trailing
//                                )
//                            )
//                    })
                NavigationLink(
                    destination: LactanciaView(),
                    label: {
                        HStack {
                            Image(systemName: "drop.triangle.fill")
                            Text("Lactancia")
                            Spacer()
                        }.fontWeight(.semibold)
                            .foregroundColor(.white)
                            .padding(.vertical,13)
                            .padding(.horizontal,20)
                            .background(
                                LinearGradient(
                                    gradient: Gradient(colors: [Color.orange, Color.red]),
                                    startPoint: .leading,
                                    endPoint: .trailing
                                )
                            )
                    })
                NavigationLink(
                    destination: AsistenciaPsicologicaView(),
                    label: {
                        HStack {
                            Image(systemName: "brain.head.profile")
                            Text("Asistencia")
                            Spacer()
                            
                        }.fontWeight(.semibold)
                            .foregroundColor(.white)
                            .padding(.vertical,13)
                            .padding(.horizontal,20)
                            .background(
                                LinearGradient(
                                    gradient: Gradient(colors: [Color.orange, Color.red]),
                                    startPoint: .leading,
                                    endPoint: .trailing
                                )
                            )
                    })
            }
            .textCase(nil)
            Section(
                header: Text("Foro")

            ) {
                
                
                NavigationLink(
                    destination: ForoView(),
                    label: {
                        HStack {
                            Image(systemName: "square.and.arrow.up")
                            Text("Post")
                            Spacer()
                        }.fontWeight(.semibold)
                            .foregroundColor(.white)
                            .padding(.vertical,13)
                            .padding(.horizontal,20)
                            .background(
                                LinearGradient(
                                    gradient: Gradient(colors: [Color.orange, Color.red]),
                                    startPoint: .leading,
                                    endPoint: .trailing
                                )
                            )
                    })
            }
            .textCase(nil)
            
//            Section(header: Text("Configuración")) {
//                NavigationLink(
//                    destination:  ConfiguracionView(),
//                    label: {
//                        HStack {
//                            Text("Configuración")
//                            Spacer()
//                            Image(systemName: "chevron.right")
//                        }.fontWeight(.semibold)
//                            .foregroundColor(.white)
//                            .padding(.vertical,13)
//                            .padding(.horizontal,20)
//                            .background(
//                                LinearGradient(
//                                    gradient: Gradient(colors: [Color.orange, Color.red]),
//                                    startPoint: .leading,
//                                    endPoint: .trailing
//                                )
//                            )
//                    })
//            }
//            .textCase(nil)
            
            Section(header: Text("Chat")) {
                NavigationLink(
                    destination: ChatIA(),
                    label: {
                        HStack {
                            Image(systemName: "message.circle.fill")
                            Text("Chat")
                            Spacer()
                        }.fontWeight(.semibold)
                            .foregroundColor(.white)
                            .padding(.vertical,13)
                            .padding(.horizontal,20)
                            .background(
                                LinearGradient(
                                    gradient: Gradient(colors: [Color.orange, Color.red]),
                                    startPoint: .leading,
                                    endPoint: .trailing
                                )
                            )
                    })
            }
            .textCase(nil)
            Section(header: Text("Voluntariado")) {
                NavigationLink(
                    destination: AsociacionesView(),
                    label: {
                        HStack {
                            
                            Image(systemName: "person.3.fill")

                            Text("Asosiacion")
                            Spacer()                        }.fontWeight(.semibold)
                            .foregroundColor(.white)
                            .padding(.vertical,13)
                            .padding(.horizontal,20)
                            .background(
                                LinearGradient(
                                    gradient: Gradient(colors: [Color.orange, Color.red]),
                                    startPoint: .leading,
                                    endPoint: .trailing
                                )
                            )
                    })
            }
            .textCase(nil)
        }//fin del list
        .listStyle(SidebarListStyle())
    }
}

struct Side_Menu_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



