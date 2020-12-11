//
//  SmallintroScreenView.swift
//  Maozinha
//
//  Created by iris on 10/12/20.
//

import SwiftUI

struct SmallintroScreenView: View {
    var body: some View {
        NavigationView{
        VStack {
            
            Image("LogoIcon")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 252.0, height: 252.0)
                .padding(.top, -30)
                .padding(.leading, 40)
            Spacer()
            Text("Olá! Este é o\nMãozinha.")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color("MainGradientEnd"))
                .multilineTextAlignment(.center)
                .padding(.top, 15.0)
            
            Text("Aqui você vai aprender a utilizar seu iPhone de forma fácil e tranquila!")
                .font(.system(size: 18))
                .multilineTextAlignment(.center)
                .frame(width: /*@START_MENU_TOKEN@*/311/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            NavigationLink(
                destination:
                    SmallOnboardingView()
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
                            .foregroundColor(Color("ButtonText"))
                    }
                })
            //Spacer()
            NavigationLink(
                destination: SmallMainMenu()
                    .navigationBarHidden(true),
                label: {
                    Text("Pular")
                        .underline()
                        .fontWeight(.bold)
                        .foregroundColor(Color("ButtonBackground"))
                        .multilineTextAlignment(.center)
                })
            Spacer()
            Spacer()
        }
        }.navigationBarHidden(true)
    }
}

struct SmallintroScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SmallintroScreenView()
    }
}
