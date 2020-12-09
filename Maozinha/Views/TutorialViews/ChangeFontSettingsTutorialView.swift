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
    let allSteps = 5
    
    var body: some View {
        VStack() {
            ProgressBarView(progress: $progress).frame(height: 16)
            
            ZStack {
                if (currentStep == 0) {
                    VStack {
                        Image("onboarding1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding()
                            .overlay(
                                Image("PhoneFrame")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                            )
                            .frame(width: 400, height: 600
                            ).overlay(
                                GeometryReader { geometry in
                                    Button(action: moveToNextStep){
                                        Circle()
                                            .fill(Color("ButtonBackground"))
                                            .opacity(0.4)
                                            .frame(width: 45, height: 45)
                                    }
                                    
                                    .position(x: geometry.size.width * 0.575, y: geometry.size.height * 0.588)
                                }
                            ).padding(.top, 8)
                        
                        Spacer()
                        
                        Text("Neste tutorial, vamos aprender como mudar o tamanho do texto (ou fonte) e configurar para que fique mais confortável para você.")
                            .multilineTextAlignment(.center)
                            .padding(.top, 8)
                        
                        Text("Para começar, abra os Ajustes (aplicativo com ícone de engrenagem).")
                            .bold()
                            .multilineTextAlignment(.center)
                            .padding(8)
                    }
                    
                }
                if (currentStep == 1) {
                    VStack {
                        Image("ChangeFontSettings1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding()
                            .overlay(
                                Image("PhoneFrame")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                            )
                            .frame(width: 400, height: 600
                            ).overlay(
                                GeometryReader { geometry in
                                    Button(action: moveToNextStep){
                                        Circle()
                                            .fill(Color("ButtonBackground"))
                                            .opacity(0.4)
                                            .frame(width: 24, height: 24)
                                    }
                                    
                                    .position(x: geometry.size.width * 0.3, y: geometry.size.height * 0.76)
                                }
                            ).padding(.top, 8)
                        
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
                        Image("ChangeFontSettings2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding()
                            .overlay(
                                Image("PhoneFrame")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                            )
                            .frame(width: 400, height: 600
                            ).overlay(
                                GeometryReader { geometry in
                                    Circle()
                                        .fill(Color("ButtonBackground"))
                                        .opacity(0.4)
                                        .frame(width: 45, height: 45)
                                        .gesture(DragGesture()
                                                    .onEnded({ (value) in
                                                        if value.startLocation.y > value.location.y { moveToNextStep() }
                                                    }))
                                    
                                    .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.75)
                                }
                            ).padding(.top, 8)
                        
                    Spacer()
                    Text("Aparecerá uma tela com várias opções relacionadas à tela do seu celular, como brilho e fonte.")
                        .multilineTextAlignment(.center)
                        .padding(8)
                    
                    Text("Role para baixo para ver mais opções.")
                        .bold()
                        .multilineTextAlignment(.center)
                        .padding(8)
                    }

                }

                if (currentStep == 3) {
                    VStack {
                        Image("ChangeFontSettings3")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding()
                            .overlay(
                                Image("PhoneFrame")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                            )
                            .frame(width: 400, height: 600
                            ).overlay(
                                GeometryReader { geometry in
                                    Button(action: moveToNextStep){
                                        Circle()
                                            .fill(Color("ButtonBackground"))
                                            .opacity(0.4)
                                            .frame(width: 24, height: 24)
                                    }
                                    
                                    .position(x: geometry.size.width * 0.3, y: geometry.size.height * 0.875)
                                }
                            ).padding(.top, 8)
                        
                    Spacer()
                    Text("Logo abaixo, existem mais opções para selecionar.")
                        .multilineTextAlignment(.center)
                        .padding(8)
                    
                    Text("Selecione a opção \"Tamanho do Texto\".")
                        .bold()
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 32)
                    }
                    Spacer()
                }
                
                if (currentStep == 4) {
                    VStack {
                        Image("ChangeFontSettings4")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding()
                            .overlay(
                                Image("PhoneFrame")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                            )
                            .frame(width: 400, height: 600
                            ).overlay(
                                GeometryReader { geometry in
                                    Circle()
                                        .fill(Color("ButtonBackground"))
                                        .opacity(0.4)
                                        .frame(width: 45, height: 45)
                                        .gesture(DragGesture()
                                                    .onEnded({ (value) in
                                                        if value.startLocation.x < value.location.x { moveToNextStep() }
                                                    }))
                                    
                                    .position(x: geometry.size.width * 0.32, y: geometry.size.height * 0.877)
                                }
                            ).padding(.top, 8)
                        
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
                
                if (currentStep == 5) {
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
                    Spacer()
                    NavigationLink(
                        destination: mainMenu()
                            .navigationBarHidden(true),
                        label: {
                            ZStack{
                                Rectangle()
                                    .frame(width: 300, height: 53, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(/*@START_MENU_TOKEN@*/Color("ButtonBackground")/*@END_MENU_TOKEN@*/)
                                    .cornerRadius(10)
                                Text("Concluir")
                                    .font(.system(size: 17))
                                    .fontWeight(.semibold)
                                    .foregroundColor(/*@START_MENU_TOKEN@*/Color("ButtonText")/*@END_MENU_TOKEN@*/)
                            }
                        })
                    Button(action: restartTutorial, label: {
                        Text("Fazer novamente")
                            .underline()
                            .font(.system(size: 17))
                            .fontWeight(.semibold)
                            .foregroundColor(/*@START_MENU_TOKEN@*/Color("LinkText")/*@END_MENU_TOKEN@*/)
                    })
                    .padding(.top, 10.0)
                    Spacer()
                    
                    }

                }
            
            }
            .animation(.easeInOut)
        }.padding()

    }
    
    func moveToNextStep() {
        currentStep += 1
        progress = (Double(currentStep) / Double(allSteps))
    }
    
    func restartTutorial() {
        currentStep = 0
        progress = (Double(currentStep) / Double(allSteps))
    }
}

struct ChangeFontSettingsTutorialView_Previews: PreviewProvider {
    static var previews: some View {
        ChangeFontSettingsTutorialView()
    }
}
