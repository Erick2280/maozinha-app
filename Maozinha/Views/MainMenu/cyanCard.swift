//
//  blue.swift
//  Maozinha
//
//  Created by iris on 04/12/20.
//

import SwiftUI

struct cyanCard: View {
    var body: some View {
        ZStack{
            Rectangle()
                .fill(LinearGradient(gradient: Gradient(colors: [Color("ElementCyanBackgroundStart"), Color("ElementCyanBackgroundEnd")]), startPoint: .top, endPoint: .bottom))
                .frame(width: 380.0, height: 285)
                .cornerRadius(/*@START_MENU_TOKEN@*/40.0/*@END_MENU_TOKEN@*/)
                .shadow(color: Color("ElementCyanBackgroundStart"), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
            
            Text("Configurações\ndo iPhone")
                .font(.system(size: 45))
                .fontWeight(.bold)
                .foregroundColor(Color("ElementCyanText"))
                .multilineTextAlignment(.leading)
                .offset(x:-7 , y:70)
            
            Image("IconCog")
                .resizable()
                .frame(width: 164, height: 164)
                .offset(x:130 , y:-117)
            
        }
        .padding(EdgeInsets(top: 65, leading: 0, bottom: 0, trailing: 22))
    }
}

struct cyanCard_Previews: PreviewProvider {
    static var previews: some View {
        cyanCard()
            .padding(.trailing)
    }
}
