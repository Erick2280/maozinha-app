//
//  SmallChangeFontSettingsTutorialView.swift
//  Maozinha
//
//  Created by iris on 10/12/20.
//

import SwiftUI

struct SmallChangeFontSettingsTutorialView: View {
    @State var progress = 0.0
    @State var currentStep = 0
    @State var fadeAnimate = false
    
    let allSteps = 6
    
    var body: some View {
        VStack() {
            
            ProgressBarView(progress: $progress).padding(.horizontal).frame(height: 16)
            
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
                                    .padding(.horizontal, 3.0)
                            )
                            .frame(width: 210, height: 405
                            ).overlay(
                                GeometryReader { geometry in
                                    Button(action: moveToNextStep){
                                        Circle()
                                            .fill(Color(.white))
                                            .opacity(0.4)
                                            .frame(width: 30, height: 30)
                                            .opacity(fadeAnimate ? 0 : 1)
                                            .animation(Animation.easeInOut(duration: 1).repeatForever())
                                            .onAppear {
                                                fadeAnimate = true
                                            }
                                    }
                                    .position(x: geometry.size.width * 0.595, y: geometry.size.height * 0.588)
                                    
                                    Image(systemName: "hand.point.up.left.fill")
                                        .font(.system(size: 40, weight: .bold, design: .default))
                                        .foregroundColor(.white)
                                        .padding(.top, 48)
                                        .padding(.leading, 48)
                                        .position(x: geometry.size.width * 0.575, y: geometry.size.height * 0.588)
                                }
                            ).padding(.top, 20)
                        
                        Text("Neste tutorial, vamos aprender como mudar o tamanho do texto (ou fonte) e configurar para que fique mais confortável para você.")
                            .font(.callout)
                            .fontWeight(.regular)
                            .multilineTextAlignment(.center)
                            .padding(.top, 20)
                            .padding(.bottom, 9.0)
                            .padding(.horizontal)
                        
                        Text("Para começar, abra os Ajustes (aplicativo com ícone de engrenagem).")
                            .font(.callout)
                            .bold()
                            .multilineTextAlignment(.center)
                            .padding(.horizontal)
                        Spacer()
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
                                    .padding(.horizontal, 3.0)
                            )
                            .frame(width: 210, height: 405
                            ).overlay(
                                GeometryReader { geometry in
                                    Button(action: moveToNextStep){
                                        Circle()
                                            .fill(Color(.white))
                                            .opacity(0.4)
                                            .frame(width: 24, height: 24)
                                            .opacity(fadeAnimate ? 0 : 1)
                                            .animation(Animation.easeInOut(duration: 1).repeatForever())
                                            .onAppear {
                                                fadeAnimate = true
                                            }
                                    }
                                    
                                    .position(x: geometry.size.width * 0.3, y: geometry.size.height * 0.695)
                                    
                                    Image(systemName: "hand.point.up.left.fill")
                                        .font(.system(size: 40, weight: .bold, design: .default))
                                        .foregroundColor(.white)
                                        .padding(.top, 48)
                                        .padding(.leading, 42)
                                        .position(x: geometry.size.width * 0.3, y: geometry.size.height * 0.687)
                                }
                            ).padding(.top, 20)
                        
                        Text("O aplicativo de Configurações abrirá, mostrando uma lista de opções.")
                            .font(.callout)
                            .fontWeight(.regular)
                            .multilineTextAlignment(.center)
                            .padding(.top, 20)
                            .padding(.bottom, 9.0)
                            .padding(.horizontal)
                        
                        Text("Procure a opção \"Tela e Brilho\" e depois toque nela para selecionar.")
                            .font(.callout)
                            .bold()
                            .multilineTextAlignment(.center)
                            .padding(.horizontal)
                        Spacer()
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
                                    .padding(.horizontal, 3.0)
                            )
                            .gesture(DragGesture()
                                        .onEnded({ (value) in
                                            if value.startLocation.y > value.location.y { moveToNextStep() }
                                        }))
                            .frame(width: 210, height: 405
                            ).overlay(
                                GeometryReader { geometry in
                                    Rectangle()
                                        .overlay(LinearGradient(gradient: Gradient(colors: [Color.white, Color.white.opacity(0)]), startPoint: .top, endPoint: .bottom))
                                        .opacity(0.4)
                                        .frame(width: 29, height: 100)
                                        .cornerRadius(100)
                                        .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.75)
                                    
                                    Image(systemName: "arrow.up")
                                        .font(.system(size: 20, weight: .bold, design: .default))
                                        .foregroundColor(.white)
                                        .opacity(fadeAnimate ? 0 : 1)
                                        .animation(Animation.easeInOut(duration: 1).repeatForever())
                                        .onAppear {
                                            fadeAnimate = true
                                        }
                                        .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.75)
                                }
                            ).padding(.top, 20)
                        
                        Text("Aparecerá uma tela com várias opções relacionadas à tela do seu celular, como brilho e fonte.")
                            .font(.callout)
                            .fontWeight(.regular)
                            .multilineTextAlignment(.center)
                            .padding(.top, 20)
                            .padding(.bottom, 9.0)
                            .padding(.horizontal)
                        
                        Text("Role para baixo para ver mais opções.")
                            .font(.callout)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                        Spacer()
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
                                    .padding(.horizontal, 3.0)
                            )
                            .frame(width: 210, height: 405
                            ).overlay(
                                GeometryReader { geometry in
                                    Button(action: moveToNextStep){
                                        Circle()
                                            .fill(Color(.white))
                                            .opacity(0.4)
                                            .frame(width: 24, height: 24)
                                            .opacity(fadeAnimate ? 0 : 1)
                                            .animation(Animation.easeInOut(duration: 1).repeatForever())
                                            .onAppear {
                                                fadeAnimate = true
                                            }
                                    }
                                    
                                    .position(x: geometry.size.width * 0.3, y: geometry.size.height * 0.7)
                                    Image(systemName: "hand.point.up.left.fill")
                                        .font(.system(size: 40, weight: .bold, design: .default))
                                        .foregroundColor(.white)
                                        .padding(.top, 48)
                                        .padding(.leading, 42)
                                        .position(x: geometry.size.width * 0.3, y: geometry.size.height * 0.69)
                                }
                            ).padding(.top, 20)
                        
                        Text("Logo abaixo, existem mais opções para selecionar.")
                            .font(.callout)
                            .fontWeight(.regular)
                            .multilineTextAlignment(.center)
                            .padding(.top, 20)
                            .padding(.bottom, 9.0)
                            .padding(.horizontal)
                        
                        Text("Selecione a opção \"Tamanho do Texto\".")
                            .font(.callout)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                        Spacer()
                    }
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
                                    .padding(.horizontal, 3.0)
                            )
                            .frame(width: 210, height: 405
                            ).overlay(
                                GeometryReader { geometry in
                                    Rectangle()
                                        .overlay(LinearGradient(gradient: Gradient(colors: [Color.white, Color.white.opacity(0)]), startPoint: .trailing, endPoint: .leading))
                                        .opacity(0.4)
                                        .frame(width: 100, height: 25)
                                        .cornerRadius(100)
                                        .gesture(DragGesture()
                                                    .onEnded({ (value) in
                                                        if value.startLocation.x < value.location.x { moveToNextStep() }
                                                    }))
                                        .position(x: geometry.size.width * 0.45, y: geometry.size.height * 0.869)
                                    
                                    Image(systemName: "arrow.right")
                                        .font(.system(size: 20, weight: .bold, design: .default))
                                        .foregroundColor(.white)
                                        .opacity(fadeAnimate ? 0 : 1)
                                        .animation(Animation.easeInOut(duration: 1).repeatForever())
                                        .onAppear {
                                            fadeAnimate = true
                                        }
                                        .position(x: geometry.size.width * 0.38, y: geometry.size.height * 0.869)
                                }
                            ).padding(.top, 20)
                        
                        Text("Um controle deslizante aparecerá na tela, que pode ser usado para alterar o tamanho das letras.")
                            .font(.callout)
                            .fontWeight(.regular)
                            .multilineTextAlignment(.center)
                            .padding(.top, 20)
                            .padding(.bottom, 9.0)
                            .padding(.horizontal)
                        
                        Text("Arraste o controle deslizante para a direita para aumentar os textos.")
                            .font(.callout)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                        Spacer()
                    }
                    
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
                                    .padding(.horizontal, 3.0)
                            )
                            .frame(width: 210, height: 405
                            ).padding(.top, 20)
                        
                        Text("Pronto! Agora, os textos no seu celular ficarão maiores.")
                            .font(.callout)
                            .fontWeight(.regular)
                            .multilineTextAlignment(.center)
                            .padding(.top, 20)
                            .padding(.bottom, 9.0)
                            .padding(.horizontal)
                        
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
                        Spacer()
                    }
                }
                
                if (currentStep == 6) {
                    VStack {
                        Image("ThumbsUp")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(.horizontal, 80.0)
                            .padding(.top, 30)
                        Spacer()
                        Text("Tudo certo!")
                            .font(.system(size: 48))
                            .fontWeight(.heavy)
                            .foregroundColor(Color("TitleText"))
                            .multilineTextAlignment(.center)
                            .padding(.top, 20)
                        Text("Você alterou o tamanho da letra do seu celular e concluiu o tutorial com sucesso!")
                            .font(.system(size: 18))
                            .fontWeight(.regular)
                            .multilineTextAlignment(.center)
                            .padding(.top, 8)
                            .padding(.horizontal, 16.0)
                        
                        NavigationLink(
                            destination: SmallMainMenu()
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
                        .padding(.bottom, 28.0)
                        
                    }
                }
            }
        }
        .animation(.easeInOut)
    }
    
    func moveToNextStep() {
        fadeAnimate = false
        currentStep += 1
        progress = (Double(currentStep) / Double(allSteps))
    }
    
    func restartTutorial() {
        fadeAnimate = false
        currentStep = 0
        progress = (Double(currentStep) / Double(allSteps))
    }
}

struct SmallChangeFontSettingsTutorialView_Previews: PreviewProvider {
    static var previews: some View {
        SmallChangeFontSettingsTutorialView()
    }
}
