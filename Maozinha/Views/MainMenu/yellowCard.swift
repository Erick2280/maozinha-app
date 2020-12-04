//
//  yellowCard.swift
//  Maozinha
//
//  Created by iris on 04/12/20.
//

import SwiftUI

struct yellowCard: View {
    var body: some View {
        ZStack{
            Rectangle()
                .fill(LinearGradient(gradient: Gradient(colors: [Color("ElementYellowBackgroundEnd"), Color("ElementYellowBackgroundStart")]), startPoint: .top, endPoint: .bottom))
                .frame(width: 380.0, height: 285)
                .cornerRadius(/*@START_MENU_TOKEN@*/40.0/*@END_MENU_TOKEN@*/)
                .shadow(color: Color("ElementYellowBackgroundEnd"), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
            
            Text("Navegação e\nsegurança na\ninternet")
                .font(.system(size: 45))
                .fontWeight(.bold)
                .foregroundColor(Color("ElementYellowText"))
                .multilineTextAlignment(.leading)
                .offset(x:-21 , y:43)
            
            Image("IconGlobe")
                .resizable()
                .background(Color("ElementYellowBackgroundEnd"))
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .frame(width: 164, height: 164)
                .offset(x:124 , y:-117)
            
        }
        .padding(EdgeInsets(top: 65, leading: 0, bottom: 0, trailing: 22))
    }
}

struct yellowCard_Previews: PreviewProvider {
    static var previews: some View {
        yellowCard()
            .padding(.trailing)
    }
}
