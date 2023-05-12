//
//  PostpartumMentalHealthView-.swift
//  luzha
//
//  Created by CEDAM05 on 12/05/23.
//

import SwiftUI

struct PostpartumMentalHealthView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.yellow, Color.orange]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack(alignment: .leading) {
                Text("Salud Mental Postparto")
                    .font(.title)
                    .bold()
                    .foregroundColor(.black)
                    .padding(.top, 40)
                
                ScrollView {
                    VStack(alignment: .leading, spacing: 20) {
                        Group {
                            Text("La maternidad puede ser una experiencia emocionalmente intensa. Es común que las nuevas mamás experimenten emociones intensas y altibajos emocionales después del parto.")
                                .font(.headline)
                                .foregroundColor(.black)
                            
                            Text("El término Baby Blues se utiliza para describir el estado emocional deprimido o ansioso que algunas mujeres experimentan después del parto. Los Baby Blues son comunes y suelen durar unos días o una semana después del nacimiento.")
                                .font(.subheadline)
                                .foregroundColor(.black)
                            
                            Text("Si los síntomas no mejoran después de una semana o dos, puede ser una señal de depresión posparto. La depresión posparto es una afección médica que requiere tratamiento para mejorar. Puede afectar a cualquier mujer después de dar a luz, independientemente de su edad, raza, cultura o antecedentes económicos.")
                                .font(.subheadline)
                                .foregroundColor(.black)
                        }
                        
                        Group {
                            Text("Los síntomas de la depresión posparto pueden incluir tristeza persistente, falta de interés o alegría en la vida, cambios en el apetito o el sueño, fatiga, irritabilidad, ansiedad, sentimientos de inutilidad o culpa, y pensamientos de hacerse daño o de hacerle daño al bebé.")
                                .font(.subheadline)
                                .foregroundColor(.black)
                            
                            Text("Es importante que las mujeres sepan que la depresión posparto es una afección médica tratable. El tratamiento puede incluir terapia, medicamentos o una combinación de ambos.")
                                .font(.subheadline)
                                .foregroundColor(.black)
                            
                            Text("No dudes en buscar ayuda si sientes que no puedes manejar tus emociones. Comunícate con tu médico o un profesional de la salud mental si tienes algún síntoma de depresión posparto.")
                                .font(.subheadline)
                                .foregroundColor(.black)
                        }
                    }
                    .padding(.horizontal, 20)
                    .padding(.bottom, 40)
                }
            }
        }
    }
}

