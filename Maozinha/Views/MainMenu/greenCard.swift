//
//  greenCard.swift
//  Maozinha
//
//  Created by iris on 04/12/20.
//

import SwiftUI

struct greenCard: View {
    var body: some View {
        ZStack{
            Rectangle()
                .fill(LinearGradient(gradient: Gradient(colors: [Color("ElementGreenBackgroundStart"), Color("ElementGreenBackgroundEnd")]), startPoint: .top, endPoint: .bottom))
                .frame(width: 380.0, height: 285)
                .cornerRadius(/*@START_MENU_TOKEN@*/40.0/*@END_MENU_TOKEN@*/)
                .shadow(color: Color("ElementGreenBackgroundStart"), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
            
            Text("Anúncios na\nInternet")
                .font(.system(size: 45))
                .fontWeight(.bold)
                .foregroundColor(Color("ElementGreenText"))
                .multilineTextAlignment(.leading)
                .offset(x:-33 , y:70)
            
            Image("IconWindow")
                .resizable()
                .background(Color("ElementGreenBackgroundStart"))
                .cornerRadius(/*@START_MENU_TOKEN@*/9.0/*@END_MENU_TOKEN@*/)
                .frame(width: 155, height: 145)
                .offset(x:124 , y:-117)
            
        }
        .padding(EdgeInsets(top: 65, leading: 0, bottom: 0, trailing: 22))
    }
}

struct greenCard_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            greenCard()
                .padding(.trailing)
        }
    }
}
