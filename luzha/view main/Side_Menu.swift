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
            Form(){
                NavigationLink{
                    Embarazo()
                } label: {
                    
                    Image(systemName: "plus.bubble")
                        .font(.system(size: 30, weight: .bold))
                    Text("Embarazo")
                }.fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding(.vertical,12)
                    .padding(.horizontal,20)
                    .background(
                        LinearGradient(
                            gradient: Gradient(colors: [Color.orange, Color.red]),
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )

                    .cornerRadius(15)
                NavigationLink{
                    PostParto()                   } label: {
                    Image(systemName: "plus.bubble").font(.system(size: 30, weight: .bold))
                    Text("Post Parto")
                }.fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding(.vertical,12)
                    .padding(.horizontal,20)
                    .background(
                        LinearGradient(
                            gradient: Gradient(colors: [Color.orange, Color.red]),
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )
                    .cornerRadius(15)
                NavigationLink{
                    Configuraciones()
                    
                } label: {
                    Image(systemName: "magnifyingglass.circle").font(.system(size: 30, weight: .bold))
                    Text("Configuraciones  ")
                }.fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding(.vertical,12)
                    .padding(.horizontal,20)
                    .background(
                        LinearGradient(
                            gradient: Gradient(colors: [Color.orange, Color.red]),
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )
                    .cornerRadius(15)
                
                NavigationLink{
                    ChatIA()
                    
                } label: {
                    Image(systemName: "camera.fill").font(.system(size: 30, weight: .bold))
                    Text("Chat")
                }.fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding(.vertical,12)
                    .padding(.horizontal,20)
                    .background(
                        LinearGradient(
                            gradient: Gradient(colors: [Color.orange, Color.red]),
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )
                    .cornerRadius(15)
            }
            
        })
        .padding()
        .frame(maxWidth: .infinity,maxHeight: .infinity, alignment: .topLeading)
        .background(Color(red: 0.08, green: 0.17, blue: 0.31).ignoresSafeArea())
        
    }
}

struct Side_Menu_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//import SwiftUI
//
//struct Side_Menu: View {
//    @Binding var selectedTable: String
//    @Namespace var animation
//    @State var isModal: Bool = false
//    var body: some View {
//
//        ZStack {
//            Color.yellow
//                .ignoresSafeArea()
//
//            VStack(alignment: .leading, spacing: 15, content: {
//                //
//                //Imagen del menu
//                Image("solecito")
//                    .resizable()
//                    .frame(width: 200, height: 200)
//                    .padding(.top,30)
//                    .shadow(color: .white, radius:10)
//                    .padding()
//
//                Text("Tlalli")
//                    .padding(.top, 30)
//                    .font(.title)
//                    .fontWeight(.heavy)
//                    .foregroundColor(.orange)
//
//                //            Button("Creadores") {
//                //                self.isModal = true
//                //            }.sheet(isPresented: $isModal, content: {
//                //                //Credenciales()
//                //            }).foregroundColor(.black).opacity(0.4)
//                //                .fontWeight(.semibold)
//                //                .padding(.top, -15)
//                ScrollView {
//                    VStack{
//                        NavigationLink{
//                            Embarazo()
//                        } label:{
//                            Image(systemName: "")
//                                .font(.system(size: 30, weight: .bold))
//                            Text("Embarazo")
//                        }
//                        .fontWeight(.semibold)
//                        .foregroundColor(.white)
//                        .padding(.vertical, 12)
//                        .padding(.horizontal, 20)
//                        .background(
//                            LinearGradient(
//                                gradient: Gradient(colors: [Color.orange, Color.red]),
//                                startPoint: .leading,
//                                endPoint: .trailing
//                            )
//                        )
//                        .cornerRadius(15)
//                        .padding(.leading, -33)
//
//                        NavigationLink{
//                            PostParto()
//                        } label: {
//                            Image(systemName: "").font(.system(size: 30, weight: .bold))
//                            Text("Post Parto")
//                        }.fontWeight(.semibold)
//                            .foregroundColor(.white)
//                            .padding(.vertical, 12)
//                            .padding(.horizontal, 20)
//                            .background(
//                                LinearGradient(
//                                    gradient: Gradient(colors: [Color.orange, Color.red]),
//                                    startPoint: .leading,
//                                    endPoint: .trailing
//                                )
//                            )
//                            .cornerRadius(15)
//                            .padding(.leading, -33)
//                        NavigationLink{
//                            Configuraciones()
//
//                        } label: {
//                            Image(systemName: "m").font(.system(size: 30, weight: .bold))
//                            Text("Configuraciones")
//                        }.fontWeight(.semibold)
//                            .foregroundColor(.white)
//                            .padding(.vertical, 12)
//                            .padding(.horizontal, 20)
//                            .background(
//                                LinearGradient(
//                                    gradient: Gradient(colors: [Color.orange, Color.red]),
//                                    startPoint: .leading,
//                                    endPoint: .trailing
//                                )
//                            )
//                            .cornerRadius(15)
//                            .padding(.leading, -33)
//
//                        NavigationLink{
//                            ChatIA()
//
//                        } label: {
//                            Image(systemName: "").font(.system(size: 30, weight: .bold))
//                            Text("Chat ")
//                        }.fontWeight(.semibold)
//                            .foregroundColor(.white)
//                            .padding(.vertical, 12)
//                            .padding(.horizontal, 20)
//                            .background(
//                                LinearGradient(
//                                    gradient: Gradient(colors: [Color.orange, Color.red]),
//                                    startPoint: .leading,
//                                    endPoint: .trailing
//                                )
//                            )
//                            .cornerRadius(15)
//                            .padding(.leading, -33)
//
//                    }
//
//
//                }
//            })
//        }
//    }
//}
//
//struct Side_Menu_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
//
