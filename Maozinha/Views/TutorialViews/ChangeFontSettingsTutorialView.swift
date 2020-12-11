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
    let allSteps = 6
    
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
                                            .fill(Color(.white))
                                            .opacity(0.4)
                                            .frame(width: 56, height: 56)
                                    }
                                    
                                    .position(x: geometry.size.width * 0.575, y: geometry.size.height * 0.588)
                                    
                                    Image(systemName: "hand.point.up.left.fill")
                                        .font(.system(size: 48, weight: .bold, design: .default))
                                        .foregroundColor(.white)
                                        .padding(.top, 48)
                                        .padding(.leading, 48)
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
                                            .fill(Color(.white))
                                            .opacity(0.4)
                                            .frame(width: 24, height: 24)
                                    }
                                    
                                    .position(x: geometry.size.width * 0.3, y: geometry.size.height * 0.695)
                                    
                                    Image(systemName: "hand.point.up.left.fill")
                                        .font(.system(size: 48, weight: .bold, design: .default))
                                        .foregroundColor(.white)
                                        .padding(.top, 48)
                                        .padding(.leading, 42)
                                        .position(x: geometry.size.width * 0.3, y: geometry.size.height * 0.695)
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
                            .gesture(DragGesture()
                                        .onEnded({ (value) in
                                            if value.startLocation.y > value.location.y { moveToNextStep() }
                                        }))
                            .frame(width: 400, height: 600
                            ).overlay(
                                GeometryReader { geometry in
                                    Rectangle()
                                        .overlay(LinearGradient(gradient: Gradient(colors: [Color.white, Color.white.opacity(0)]), startPoint: .top, endPoint: .bottom))
                                        .opacity(0.4)
                                        .frame(width: 32, height: 128)
                                        .cornerRadius(100)
                                        .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.75)
                                    
                                    Image(systemName: "arrow.up")
                                        .font(.system(size: 20, weight: .bold, design: .default))
                                        .foregroundColor(.white)
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
                                            .fill(Color(.white))
                                            .opacity(0.4)
                                            .frame(width: 24, height: 24)
                                    }
                                    
                                    .position(x: geometry.size.width * 0.3, y: geometry.size.height * 0.7)
                                    Image(systemName: "hand.point.up.left.fill")
                                        .font(.system(size: 48, weight: .bold, design: .default))
                                        .foregroundColor(.white)
                                        .padding(.top, 48)
                                        .padding(.leading, 42)
                                        .position(x: geometry.size.width * 0.3, y: geometry.size.height * 0.7)
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
                                    Rectangle()
                                        .overlay(LinearGradient(gradient: Gradient(colors: [Color.white, Color.white.opacity(0)]), startPoint: .trailing, endPoint: .leading))
                                        .opacity(0.4)
                                        .frame(width: 128, height: 32)
                                        .cornerRadius(100)
                                        .gesture(DragGesture()
                                                    .onEnded({ (value) in
                                                        if value.startLocation.x < value.location.x { moveToNextStep() }
                                                    }))
                                        .position(x: geometry.size.width * 0.45, y: geometry.size.height * 0.877)
                                    
                                    Image(systemName: "arrow.right")
                                        .font(.system(size: 20, weight: .bold, design: .default))
                                        .foregroundColor(.white)
                                        .position(x: geometry.size.width * 0.38, y: geometry.size.height * 0.877)

                                
                                    

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
                        Image("ChangeFontSettings5")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding()
                            .overlay(
                                Image("PhoneFrame")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                            )
                            .frame(width: 400, height: 600
                            ).padding(.top, 8)
                        
                    Spacer()
                    Text("Pronto! Agora, os textos no seu celular ficarão maiores.")
                        .bold()
                        .multilineTextAlignment(.center)
                        .padding(8)
                    Button(action: moveToNextStep, label: {
                        ZStack{
                            Rectangle()
                                .frame(width: 300, height: 53, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .foregroundColor(/*@START_MENU_TOKEN@*/Color("ButtonBackground")/*@END_MENU_TOKEN@*/)
                                .cornerRadius(10)
                            Text("Avançar")
                                .font(.system(size: 17))
                                .fontWeight(.semibold)
                                .foregroundColor(/*@START_MENU_TOKEN@*/Color("ButtonText")/*@END_MENU_TOKEN@*/)
                        }
                    })
                    }
                    Spacer()
                }
                
                if (currentStep == 6) {
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
