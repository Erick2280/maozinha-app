//
//  PhoneCallTutorialView.swift
//  Maozinha
//
//  Created by Vítor Bárrios Luís de Albuquerque on 07/12/20.
//

import SwiftUI

struct PhoneCallTutorialView: View {
    @State var progress = 0.0
    @State var currentStep = 0
    let allSteps = 3
    
    var body: some View {
        VStack() {
            ProgressBarView(progress: $progress).frame(height: 16)
            
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
                            )
                            .frame(width: 400, height: 600
                            )
                            .overlay(
                                GeometryReader { geometry in
                                    Button(action: moveToNextStep){
                                        Circle()
                                            .fill(Color(.white))
                                            .opacity(0.4)
                                            .frame(width: 60, height: 60)
                                    }
                                    
                                    .position(x: geometry.size.width * 0.275, y: geometry.size.height * 0.905)
                                }
                            ).padding(.top, 8)
                        
                        Spacer()
                        
                        Text("Vamos aprender a realizar uma chamada por telefone.")
                            .font(.system(size: 18))
                            .fontWeight(.regular)
                            .multilineTextAlignment(.center)
                            .padding(8)
                        Spacer()
                        Text("Na parte inferior esquerda da tela, toque no quadrado verde com a imagem de um telefone.")
                            .font(.system(size: 18))
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 12.0)
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
                                    
                                    .position(x: geometry.size.width * 0.745, y: geometry.size.height * 0.9125)
                                }
                            ).padding(.top, 8)
                        
                        Spacer()
                        
                        
                        
                        Text("Agora, ainda na parte inferior, à direita, toque no símbolo de \"teclado\".")
                            .font(.system(size: 18))
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .padding(.top, 8)
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
                            )
                            .frame(width: 400, height: 600
                            ).overlay(
                                GeometryReader { geometry in
                                    Button(action: moveToNextStep){
                                        Circle()
                                            .fill(Color(.white))
                                            .opacity(0.4)
                                            .frame(width: 60, height: 60)
                                    }
                                    
                                    .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.7965)
                                }
                            ).padding(.top, 8)
                        
                        Spacer()
                        
                        Text("Com o teclado aberto, você poderá inserir o número desejado.")
                            .font(.system(size: 18))
                            .fontWeight(.regular)
                            .multilineTextAlignment(.center)
                            .padding(8)
                        
                        Text("Toque no botão verde para realizar a ligação e concluir o tutorial!")
                            .font(.system(size: 18))
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .padding(8)
                    }
                }
                
                
                if (currentStep == 3) {
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
                        Text("Você aprendeu a realizar uma ligação e concluiu o tutorial com sucesso!")
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

struct PhoneCallTutorialView_Previews: PreviewProvider {
    static var previews: some View {
        PhoneCallTutorialView()
    }
}
