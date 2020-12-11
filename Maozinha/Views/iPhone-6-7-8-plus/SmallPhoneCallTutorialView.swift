//
//  SmallPhoneCallTutorialView.swift
//  Maozinha
//
//  Created by iris on 11/12/20.
//

import SwiftUI

struct SmallPhoneCallTutorialView: View {
    @State var progress = 0.0
    @State var currentStep = 0
    @State var fadeAnimate = false
    
    let allSteps = 3
    
    
    var body: some View {
        VStack() {
                ProgressBarView(progress: $progress).padding(.horizontal).frame(height: 16)
                
                ZStack {
                    if (currentStep == 0) {
                        VStack {
                            Image("telefone1")
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
                                )
                                .overlay(
                                    GeometryReader { geometry in
                                        Button(action: moveToNextStep){
                                            Circle()
                                                .fill(Color(.white))
                                                .opacity(0.4)
                                                .animation(nil)
                                                .frame(width: 30, height: 30)
                                                .opacity(fadeAnimate ? 1 : 0)
                                                .animation(Animation.easeInOut(duration: 1).repeatForever())
                                                .onAppear {
                                                    fadeAnimate = true
                                                }
                                        }
                                        
                                        .position(x: geometry.size.width * 0.22, y: geometry.size.height * 0.89)
                                        
                                        Image(systemName: "hand.point.up.left.fill")
                                            .animation(nil)
                                            .font(.system(size: 40, weight: .bold, design: .default))
                                            .foregroundColor(.white)
                                            .padding(.top, 54)
                                            .padding(.leading, 42)
                                            .position(x: geometry.size.width * 0.22, y: geometry.size.height * 0.88)
                                    }
                                ).padding(.top, 20)
                            
                            Text("Vamos aprender a realizar uma chamada por telefone.")
                                .font(.callout)
                                .fontWeight(.regular)
                                .multilineTextAlignment(.center)
                                .padding(.top, 20)
                                .padding(.bottom, 9.0)
                                .padding(.horizontal)
                            Text("Na parte inferior esquerda da tela, toque no quadrado verde com a imagem de um telefone.")
                                .font(.callout)
                                .fontWeight(.bold)
                                .padding(.horizontal)
                                .multilineTextAlignment(.center)
                            Spacer()
                        }
                        
                    }
                    if (currentStep == 1) {
                        VStack {
                            Image("telefone2")
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
                                        
                                        .position(x: geometry.size.width * 0.8, y: geometry.size.height * 0.9)
                                        
                                        Image(systemName: "hand.point.up.left.fill")
                                            .font(.system(size: 40, weight: .bold, design: .default))
                                            .foregroundColor(.white)
                                            .padding(.top, 54)
                                            .padding(.leading, 42)
                                            .position(x: geometry.size.width * 0.8, y: geometry.size.height * 0.9)
                                    }
                                ).padding(.top, 20)
        
                            Text("Agora, ainda na parte inferior, à direita, toque no símbolo de \"teclado\".")
                                .font(.callout)
                                .fontWeight(.regular)
                                .multilineTextAlignment(.center)
                                .padding(.top, 20)
                                .padding(.bottom, 9.0)
                                .padding(.horizontal)
                            Spacer()
                        }
                    }
                    
                    if (currentStep == 2) {
                        VStack {
                            Image("telefone3")
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
                                                .frame(width: 37, height: 37)
                                                .opacity(fadeAnimate ? 0 : 1)
                                                .animation(Animation.easeInOut(duration: 1).repeatForever())
                                                .onAppear {
                                                    fadeAnimate = true
                                                }
                                        }
                                        
                                        .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.7965)
                                        
                                        Image(systemName: "hand.point.up.left.fill")
                                            .font(.system(size: 40, weight: .bold, design: .default))
                                            .foregroundColor(.white)
                                            .padding(.top, 54)
                                            .padding(.leading, 42)
                                            .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.7965)
                                    }
                                ).padding(.top, 20)
                          
                            Text("Com o teclado aberto, você poderá inserir o número desejado.")
                                .font(.callout)
                                .fontWeight(.regular)
                                .multilineTextAlignment(.center)
                                .padding(.top, 20)
                                .padding(.bottom, 9.0)
                                .padding(.horizontal)
                            
                            Text("Toque no botão verde para realizar a ligação e concluir o tutorial!")
                                .font(.callout)
                                .fontWeight(.bold)
                                .multilineTextAlignment(.center)
                            Spacer()
                        }
                    }
                    
                    
                    if (currentStep == 3) {
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
                            Text("Você aprendeu a realizar uma ligação e concluiu o tutorial com sucesso!")
                                .font(.system(size: 18))
                                .fontWeight(.regular)
                                .multilineTextAlignment(.center)
                                .padding(.top, 8)
                                .padding(.horizontal, 16.0)
                            
                            Spacer()
                            NavigationLink(
                                destination: SmallMainMenu()
                                    .navigationBarHidden(true) ,
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
                                    .fontWeight(.bold)
                                    .foregroundColor(/*@START_MENU_TOKEN@*/Color("LinkText")/*@END_MENU_TOKEN@*/)
                            })
                            .padding(.bottom, 28.0)
                        }
                    }
                }
                .animation(.easeInOut)
        }
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

struct SmallPhoneCallTutorialView_Previews: PreviewProvider {
    static var previews: some View {
        SmallPhoneCallTutorialView()
    }
}
