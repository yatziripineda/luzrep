//
//  Side_Menu.swift
//  luzha
//
//  Created by CEDAM05 on 11/05/23.
//


import SwiftUI

struct Side_Menu: View {
    @Binding var selectedTable: String
    @Namespace var animation
    @State var isModal: Bool = false
    var body: some View {
        
        VStack(alignment: .leading, spacing: 15, content: {
            
            //Imagen del menu
            Image("metrocara")
                .resizable().aspectRatio( contentMode: .fill)
                .frame(width: 50, height: 30)
                .cornerRadius(30)
                .padding(.top,30)
                .shadow(color: .white, radius:10)
            
            VStack(alignment: .leading, spacing: 6, content: {
                Text("Tlalli")
                    .padding(.top, 10)
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.yellow)
                
            })
//            Button("Creadores") {
//                self.isModal = true
//            }.sheet(isPresented: $isModal, content: {
//                //Credenciales()
//            }).foregroundColor(.black).opacity(0.4)
//                .fontWeight(.semibold)
//                .padding(.top, -15)
            List() {
                NavigationLink(destination:
                                MitosView()) {
                    Image(systemName: "tram.fill")
                        .font(.system(size: 30, weight: .bold))
                    Text("Mitos")
                }
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .padding(.vertical, 12)
                .padding(.horizontal, 20)
                .background(
                    LinearGradient(
                        gradient: Gradient(colors: [Color.black, Color.blue]),
                        startPoint: .leading,
                        endPoint: .trailing
                    )
                )
                .cornerRadius(15)
                NavigationLink{
                    //ReportesView()
                } label: {
                    Image(systemName: "plus.bubble").font(.system(size: 30, weight: .bold))
                    Text("Embarazo")
                }.fontWeight(.semibold)
                    .foregroundColor(Color.black)
                    .padding(.vertical,12)
                    .padding(.horizontal,20)
                    .background(.orange)
                    .cornerRadius(15)
                NavigationLink{
                    ChatIA()
                    
                } label: {
                    Image(systemName: "magnifyingglass.circle").font(.system(size: 30, weight: .bold))
                    Text("Postparto")
                }.fontWeight(.semibold)
                    .foregroundColor(Color.black)
                    .padding(.vertical,12)
                    .padding(.horizontal,20)
                    .background(.orange)
                    .cornerRadius(15)
                
                NavigationLink{
                    //CameraView()
                    
                } label: {
                    Image(systemName: "camera.fill").font(.system(size: 30, weight: .bold))
                    Text("fundaciones ")
                }.fontWeight(.semibold)
                    .foregroundColor(Color.black)
                    .padding(.vertical,12)
                    .padding(.horizontal,20)
                    .background(.orange)
                    .cornerRadius(15)
                NavigationLink{
                    //CameraView()
                    
                } label: {
                    Image(systemName: "camera.fill").font(.system(size: 30, weight: .bold))
                    Text("Configuraciones")
                }.fontWeight(.semibold)
                    .foregroundColor(Color.black)
                    .padding(.vertical,12)
                    .padding(.horizontal,20)
                    .background(.orange)
                    .cornerRadius(15)
                NavigationLink{
                    //CameraView()
                    
                } label: {
                    Image(systemName: "camera.fill").font(.system(size: 30, weight: .bold))
                    Text("Foro")
                }.fontWeight(.semibold)
                    .foregroundColor(Color.black)
                    .padding(.vertical,12)
                    .padding(.horizontal,20)
                    .background(.orange)
                    .cornerRadius(15)
                //                }
                //                .padding(.leading,-15)
                //                .padding(.top,50)
            }
            .listStyle(SidebarListStyle())
            
        })

        .padding()
        .frame(maxWidth: .infinity,maxHeight: .infinity, alignment: .topLeading)
        
    }
}

struct Side_Menu_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

