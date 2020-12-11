//
//  SmallNotDisturbTutorialView.swift
//  Maozinha
//
//  Created by iris on 11/12/20.
//

import SwiftUI

struct SmallNotDisturbTutorialView: View {
    @State var progress = 0.0
    @State var currentStep = 0
    @State var fadeAnimate = false
    
    let allSteps = 2
    
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
                                )
                                .overlay(
                                    GeometryReader { geometry in
                                        Rectangle()
                                            .overlay(LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0), Color.white]), startPoint: .top, endPoint: .bottom))
                                            .opacity(0.4)
                                            .frame(width: 29, height: 100)
                                            .cornerRadius(100)
                                            .gesture(DragGesture()
                                                        .onEnded({ (value) in
                                                            if value.startLocation.y < value.location.y { moveToNextStep() }
                                                        }))
                                            .position(x: geometry.size.width * 0.82, y: geometry.size.height * 0.153)
                                        
                                        Image(systemName: "arrow.down")
                                            .animation(nil)
                                            .font(.system(size: 20, weight: .bold, design: .default))
                                            .foregroundColor(.white)
                                            .opacity(fadeAnimate ? 1 : 0)
                                            .animation(Animation.easeInOut(duration: 1).repeatForever())
                                            .onAppear {
                                                fadeAnimate = true
                                            }
                                            .position(x: geometry.size.width * 0.82, y: geometry.size.height * 0.095)
                                    }
                                ).padding(.top, 20)
                            
                            Text("Vamos aprender a ativar e desativar o modo \"Não perturbe\". ")
                                .font(.callout)
                                .fontWeight(.regular)
                                .multilineTextAlignment(.center)
                                .padding(.top, 20)
                                .padding(.bottom, 9.0)
                                .padding(.horizontal)
                            
                            Text("Comece deslizando o dedo de cima para baixo no local indicado.")
                                .bold()
                                .multilineTextAlignment(.center)
                                .padding(8)
                            Spacer()
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
                                        
                                        .position(x: geometry.size.width * 0.41, y: geometry.size.height * 0.4225)
                                        
                                        Image(systemName: "hand.point.up.left.fill")
                                            .font(.system(size: 40, weight: .bold, design: .default))
                                            .foregroundColor(.white)
                                            .padding(.top, 54)
                                            .padding(.leading, 42)
                                            .position(x: geometry.size.width * 0.40, y: geometry.size.height * 0.4215)
                                    }
                                ).padding(.top, 20)
                            
                            Text("Toque no símbolo da lua para ativar o modo \"Não perturbe\".")
                                .font(.callout)
                                .fontWeight(.bold)
                                .multilineTextAlignment(.center)
                                .padding(.top, 20)
                                .padding(.bottom, 9.0)
                                .padding(.horizontal)
                            
                            Spacer()
                        }
                    }
                    
                    
                    if (currentStep == 2) {
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
                            Text("Você ativou o modo \"Não perturbe\" e concluiu o tutorial com sucesso!")
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
                                    .fontWeight(.bold)
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
struct SmallNotDisturbTutorialView_Previews: PreviewProvider {
    static var previews: some View {
        SmallNotDisturbTutorialView()
    }
}
