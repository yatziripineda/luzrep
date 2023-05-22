//
//  ViewModel.swift
//  luzha
//
//  Created by CEDAM05 on 11/05/23.
//

import Foundation
import SwiftOpenAI

final class ViewModel: ObservableObject {
    @Published var messages: [MessageChatGPT] = [.init(text: "¡Hola! Soy el asistente de SwiftBeta, estoy aquí para contestarte todas las preguntas relacionadas de Swift, SwiftUI, Xcode ¡y mucho más!", role: .system)]
    @Published var currentMessage: MessageChatGPT = .init(text: "", role: .assistant)
    
    var openAI = SwiftOpenAI(apiKey: "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")
    
    func send(message: String) async{
        let optionalParameters = ChatCompletionsOptionalParameters(temperature: 0.7,
                                                                   stream: true,
                                                                   maxTokens: 50) // 2
        await MainActor.run {
            let myMessage = MessageChatGPT(text: message, role: .user)
            self.messages.append(myMessage)
            
            self.currentMessage = MessageChatGPT(text: "", role: .assistant)
            self.messages.append(self.currentMessage)
        }
        
        do {
            let stream = try await openAI.createChatCompletionsStream(model: .gpt3_5(.turbo) , messages: messages, optionalParameters: optionalParameters)

            
            for try await response in stream { // 4
                print(response)
                await onReceive(newMessage: response)
                
            }
        } catch {
            print("Error: \(error)") // 5
        }
    }
    
    @MainActor
    private func onReceive(newMessage: ChatCompletionsStreamDataModel) {
        let lastMessage = newMessage.choices[0]
        guard lastMessage.finishReason == nil else {
            print("Finished streaming messages")
            return
        }
        
        guard let content = lastMessage.delta?.content else {
            print("Message with no content")
            return
        }
        
        currentMessage.text = currentMessage.text + content
        messages[messages.count-1].text = currentMessage.text
    }
    
}
