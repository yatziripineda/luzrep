//
//  ConversationView.swift
//  luzha
//
//  Created by CEDAM05 on 11/05/23.
//


import SwiftUI
import SwiftOpenAI

struct ConversationView: View {
    @EnvironmentObject var viewModel: ViewModel
    
    var body: some View {
        ScrollView {
            ForEach(viewModel.messages) { message in
                TextMessageView(message: message)
            }
        }
    }
}

struct ConversationView_Previews: PreviewProvider {
    static var previews: some View {
        ConversationView().environmentObject(ViewModel())
    }
}

