//
//  onboardingView.swift
//  Maozinha
//
//  Created by Vítor Bárrios Luís de Albuquerque on 24/11/20.
//

import SwiftUI

struct OnboardingView: View {
    @State var progress = 0.0
    @State var currentStep = 0
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
                                        
                                        Circle()
                                            .fill(Color(.white))
                                            .opacity(0.4)
                                            .frame(width: 45, height: 45)
                                            .gesture(DragGesture()
                                                        .onEnded({ (value) in
                                                            if value.startLocation.y < value.location.y { moveToNextStep() }
                                                        }))
                                            .position(x: geometry.size.width * 0.75, y: geometry.size.height * 0.070)
                                    }
                                ).padding(.top, 8)
                            
                            Spacer()
                            
                            Text("No Mãozinha, você interage com uma simulação nesta representação do seu iPhone.")
                                .font(.system(size: 18))
                                .fontWeight(.regular)
                                .multilineTextAlignment(.center)
                                .padding(8)
                            Spacer()
                            Text("Vamos aprender a ativar e desativar o modo \"Não perturbe\". Comece deslizando o dedo de cima para baixo no local indicado.")
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
                                        }
                                        
                                        .position(x: geometry.size.width * 0.43, y: geometry.size.height * 0.4225)
                                    }
                                ).padding(.top, 8)
                            
                            Spacer()
                            
                            Text("À medida que você avança no tutorial, a barra de progresso no topo é preenchida.")
                                .font(.system(size: 18))
                                .fontWeight(.regular)
                                .multilineTextAlignment(.center)
                                .padding(8)
                            
                            Text("Toque no símbolo da lua para ativar o modo \"Não perturbe\" e finalizar o tutorial.")
                                .font(.system(size: 18))
                                .fontWeight(.bold)
                                .multilineTextAlignment(.center)
                                .padding(8)
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
        currentStep += 1
        progress = (Double(currentStep) / Double(allSteps))
    }
    
    func restartTutorial() {
        
        currentStep = 0
        progress = (Double(currentStep) / Double(allSteps))
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
