//
//  introScreenView.swift
//  Maozinha
//
//  Created by iris on 07/12/20.
//

import SwiftUI

struct introScreenView: View {
    var body: some View {
        NavigationView{
        VStack {
            
            Image("LogoIcon")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 252.0, height: 252.0)
                .padding(.top, 55.0)
                .padding(.leading, 40)
            Spacer()
            Text("Olá! Este é o Mãozinha.")
                .font(.system(size: 48))
                .fontWeight(.heavy)
                .foregroundColor(Color("MainGradientEnd"))
                .multilineTextAlignment(.center)
                .padding(.top, 50.0)
            
            Text("Aqui você vai aprender a utilizar seu iPhone de forma fácil e tranquila!")
                .font(.system(size: 18))
                .multilineTextAlignment(.center)
                .padding(.top)
                .frame(width: /*@START_MENU_TOKEN@*/311/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Spacer()
            NavigationLink(
                destination:
                    OnboardingView()
                    .navigationBarHidden(true),
                label: {
                    ZStack{
                        Rectangle()
                            .frame(width: 300, height: 53, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .cornerRadius(10)
                            .foregroundColor(/*@START_MENU_TOKEN@*/Color("ButtonBackground")/*@END_MENU_TOKEN@*/)
                        Text("Iniciar Tutorial")
                            .fontWeight(.semibold)
                            .font(.system(size: 17))
                            .foregroundColor(Color("ButtonText"))                }
                })
            Spacer()
            NavigationLink(
                destination: mainMenu()
                    .navigationBarHidden(true),
                label: {
                    Text("Pular")
                        .underline()
                        .fontWeight(.bold)
                        .foregroundColor(Color("ButtonBackground"))
                        .multilineTextAlignment(.center)
                })
            Spacer()
        }
        }.navigationBarHidden(true)
    }
}

struct introScreenView_Previews: PreviewProvider {
    static var previews: some View {
        introScreenView()
    }
}
