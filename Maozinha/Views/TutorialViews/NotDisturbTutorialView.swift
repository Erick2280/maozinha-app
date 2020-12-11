//
//  NotDisturbTutorialView.swift
//  Maozinha
//
//  Created by iris on 09/12/20.
//

import SwiftUI

struct NotDisturbTutorialView: View {
    @State var progress = 0.0
    @State var currentStep = 0
    @State var fadeAnimate = false
    
    let allSteps = 2
    
    var body: some View {
        NavigationView{
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
                                )
                                .overlay(
                                    GeometryReader { geometry in
                                        Rectangle()
                                            .overlay(LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0), Color.white]), startPoint: .top, endPoint: .bottom))
                                            .opacity(0.4)
                                            .frame(width: 32, height: 128)
                                            .cornerRadius(100)
                                            .gesture(DragGesture()
                                                        .onEnded({ (value) in
                                                            if value.startLocation.y < value.location.y { moveToNextStep() }
                                                        }))
                                            .position(x: geometry.size.width * 0.75, y: geometry.size.height * 0.140)
                                        
                                        Image(systemName: "arrow.down")
                                            .animation(nil)
                                            .font(.system(size: 20, weight: .bold, design: .default))
                                            .foregroundColor(.white)
                                            .opacity(fadeAnimate ? 1 : 0)
                                            .animation(Animation.easeInOut(duration: 1).repeatForever())
                                            .onAppear {
                                                fadeAnimate = true
                                            }
                                            .position(x: geometry.size.width * 0.75, y: geometry.size.height * 0.095)
                                        
                                    }
                                ).padding(.top, 8)
                            
                            Spacer()
                            
                            Text("Vamos aprender a ativar e desativar o modo \"Não perturbe\". ")
                                .font(.system(size: 18))
                                .fontWeight(.regular)
                                .multilineTextAlignment(.center)
                                .padding(8)
                            
                            Text("Comece deslizando o dedo de cima para baixo no local indicado.")
                                .font(.system(size: 18))
                                .fontWeight(.bold)
                                .multilineTextAlignment(.center)
                                .padding(.horizontal, 12.0)
                        }
                        
                    }
                    if (currentStep == 1) {
                        VStack {
                            Image("onboarding2")
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
                                                .frame(width: 45, height: 45)
                                                .opacity(fadeAnimate ? 0 : 1)
                                                .animation(Animation.easeInOut(duration: 1).repeatForever())
                                                .onAppear {
                                                    fadeAnimate = true
                                                }
                                        }
                                        
                                        .position(x: geometry.size.width * 0.43, y: geometry.size.height * 0.4225)
                                        
                                        Image(systemName: "hand.point.up.left.fill")
                                            .font(.system(size: 48, weight: .bold, design: .default))
                                            .foregroundColor(.white)
                                            .padding(.top, 54)
                                            .padding(.leading, 42)
                                            .position(x: geometry.size.width * 0.43, y: geometry.size.height * 0.4225)
                                    }
                                ).padding(.top, 8)
                            
                            Spacer()
                            
                            Text("Toque no símbolo da lua para ativar o modo \"Não perturbe\".")
                                .font(.system(size: 18))
                                .fontWeight(.bold)
                                .multilineTextAlignment(.center)
                                .padding(8)
                            Spacer()
                        }
                    }
                    
                    
                    if (currentStep == 2) {
                        VStack {
                            Image("ThumbsUp")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .padding(64)
                            Spacer()
                            Text("Tudo certo!")
                                .font(.system(size: 48))
                                .fontWeight(.heavy)
                                .foregroundColor(Color("TitleText"))
                                .multilineTextAlignment(.center)
                                .padding(16)
                            Text("Você ativou o modo \"Não perturbe\" e concluiu o tutorial com sucesso!")
                                .font(.system(size: 18))
                                .fontWeight(.regular)
                                .multilineTextAlignment(.center)
                                .padding(.horizontal, 16.0)
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
                                    .fontWeight(.bold)
                                    .foregroundColor(/*@START_MENU_TOKEN@*/Color("LinkText")/*@END_MENU_TOKEN@*/)
                            })
                            .padding(.top, 10.0)
                            Spacer()
                            
                        }
                        
                        
                    }
                    
                }
                .animation(.easeInOut)
            }.padding()
            .navigationBarHidden(true)
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

struct NotDisturbTutorialView_Previews: PreviewProvider {
    static var previews: some View {
        NotDisturbTutorialView()
    }
}
