//
//  ChangeFontSettingsTutorialView.swift
//  Maozinha
//
//  Created by Erick Almeida on 23/11/20.
//

import SwiftUI

struct ChangeFontSettingsTutorialView: View {
    @State var progress = 0.0
    @State var currentStep = 0
    let allSteps = 4
    
    var body: some View {
        VStack() {
            ProgressBarView(progress: $progress).frame(height: 16)
            
            ZStack {
                if (currentStep == 0) {
                    VStack {
                        Image("SampleScreenshot")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding()
                            .overlay(
                            Image("PhoneFrame")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        ).overlay(
                            GeometryReader { geometry in
                                Button(action: moveToNextStep) {
                                    Circle()
                                        .fill(Color("ButtonBackground"))
                                        .opacity(0.4)
                                        .frame(width: 50, height: 50)
                                }
                                    .position(x: geometry.size.width * 0.2, y: geometry.size.height * 0.9)
                            }
                        ).padding(.top, 8)
                        
                        Spacer()
                        
                        Text("Neste tutorial, vamos aprender como mudar o tamanho do texto (ou fonte) e configurar para que fique mais confortável para você.")
                            .multilineTextAlignment(.center)
                            .padding(8)
                        
                        Text("Para começar, abra as Configurações (aplicativo com ícone de engrenagem).")
                            .bold()
                            .multilineTextAlignment(.center)
                            .padding(8)
                    }
                    
                }
                if (currentStep == 1) {
                    VStack {
                        Button(action: moveToNextStep) {
                            Circle()
                                .fill(Color("ButtonBackground"))
                                .opacity(0.4)
                                .frame(width: 50, height: 50)
                        }
                        Spacer()
                        
                        Text("O aplicativo de Configurações abrirá, mostrando uma lista de opções.")
                            .multilineTextAlignment(.center)
                            .padding(8)
                        
                        Text("Procure a opção \"Tela e Brilho\" e depois toque nela para selecionar.")
                            .bold()
                            .multilineTextAlignment(.center)
                            .padding(8)
                    }
                }
                if (currentStep == 2) {
                    VStack {
                    Button(action: moveToNextStep) {
                        Circle()
                            .fill(Color("ButtonBackground"))
                            .opacity(0.4)
                            .frame(width: 50, height: 50)
                    }
                    Spacer()
                    Text("Aparecerá uma tela com várias opções relacionadas à tela do seu celular, como brilho e fonte.")
                        .multilineTextAlignment(.center)
                        .padding(8)
                    
                    Text("Selecione a opção \"Tamanho do Texto\".")
                        .bold()
                        .multilineTextAlignment(.center)
                        .padding(8)
                    }

                }
                
                if (currentStep == 3) {
                    VStack {
                    Button(action: moveToNextStep) {
                        Circle()
                            .fill(Color("ButtonBackground"))
                            .opacity(0.4)
                            .frame(width: 50, height: 50)
                    }
                    Spacer()
                    Text("Um controle deslizante aparecerá na tela, que pode ser usado para alterar o tamanho das letras.")
                        .multilineTextAlignment(.center)
                        .padding(8)
                    
                    Text("Arraste o controle deslizante para a direita para aumentar os textos.")
                        .bold()
                        .multilineTextAlignment(.center)
                        .padding(8)
                    }
                    Spacer()
                }
                
                if (currentStep == 4) {
                    VStack {
                    Image("ThumbsUp")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(64)
                    Spacer()
                    Text("Tudo certo!")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(Color("TitleText"))
                        .multilineTextAlignment(.center)
                        .padding(16)
                    Text("Você alterou o tamanho da letra do seu celular e concluiu o tutorial com sucesso!")
                        .multilineTextAlignment(.center)
                        .padding(8)
                    }
                    Spacer()

                }
            
            }
            .animation(.easeInOut)
        }.padding()

    }
    
    func moveToNextStep() {
        currentStep += 1
        progress = (Double(currentStep) / Double(allSteps))
    }
}

struct ChangeFontSettingsTutorialView_Previews: PreviewProvider {
    static var previews: some View {
        ChangeFontSettingsTutorialView()
    }
}
