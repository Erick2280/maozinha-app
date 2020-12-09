//
//  menuCard.swift
//  Maozinha
//
//  Created by iris on 04/12/20.
//

import SwiftUI

struct pinkCard: View {
    var body: some View {
        ZStack{
            Rectangle()
                .fill(LinearGradient(gradient: Gradient(colors: [Color("ElementPinkBackgroundStart"), Color("ElementPinkBackgroundEnd")]), startPoint: .top, endPoint: .bottom))
                .frame(width: 380.0, height: 285)
                .cornerRadius(/*@START_MENU_TOKEN@*/40.0/*@END_MENU_TOKEN@*/)
                .shadow(color: Color("ElementPinkBackgroundStart"), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
            
            Text("Notificações e\navisos")
                .font(.system(size: 45))
                .fontWeight(.bold)
                .foregroundColor(Color("ElementPinkText"))
                .multilineTextAlignment(.leading)
                .offset(x:-11 , y:70)
            
            Image("IconBell")
                .resizable()
                .frame(width: 164, height: 175)
                .offset(x:130 , y:-120)
            
        }
        .padding(EdgeInsets(top: 65, leading: 0, bottom: 0, trailing: 22))
    }
}

struct pinkCard_Previews: PreviewProvider {
    static var previews: some View {
        pinkCard()
            .padding(.trailing)
    }
}
