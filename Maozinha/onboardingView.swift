//
//  onboardingView.swift
//  Maozinha
//
//  Created by Vítor Bárrios Luís de Albuquerque on 24/11/20.
//

import SwiftUI

struct onboardingView: View {
    @State var progress = 0.0
    @State var currentStep = 0
    let allSteps = 2
    
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
                            )
                            .frame(width: 400, height: 600
                            )
                            .overlay(
                                GeometryReader { geometry in
                                    Button(action: moveToNextStep) {
                                        Circle()
                                            .fill(Color("ButtonBackground"))
                                            .opacity(0.4)
                                            .frame(width: 50, height: 50)
                                    }
                                    .position(x: geometry.size.width * 0.75, y: geometry.size.height * 0.1)
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
                        Image("SampleScreenshot")
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
                                    Button(action: moveToNextStep) {
                                        Circle()
                                            .fill(Color("ButtonBackground"))
                                            .opacity(0.4)
                                            .frame(width: 50, height: 50)
                                    }
                                    .position(x: geometry.size.width * 0.45, y: geometry.size.height * 0.45)
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
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
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
                        Spacer()
                        Button(action: restartTutorial, label: {
                            Text("Fazer novamente")
                                .underline()
                                .font(.system(size: 17))
                                .fontWeight(.bold)
                                .foregroundColor(/*@START_MENU_TOKEN@*/Color("LinkText")/*@END_MENU_TOKEN@*/)
                        })
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

struct onboardingView_Previews: PreviewProvider {
    static var previews: some View {
        onboardingView()
    }
}
