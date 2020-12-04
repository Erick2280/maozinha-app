//
//  testcyan.swift
//  Maozinha
//
//  Created by iris on 04/12/20.
//

import SwiftUI

struct testcyan: View {
    var body: some View {
        GeometryReader { geometry in
        ZStack{
            Rectangle()
                .fill(LinearGradient(gradient: Gradient(colors: [Color("ElementCyanBackgroundStart"), Color("ElementCyanBackgroundEnd")]), startPoint: .top, endPoint: .bottom))
                
                .frame(width: (geometry.size.width / 2),
                       height: (geometry.size.height / 5))
                .cornerRadius(25)
                .shadow(color: Color("ElementCyanBackgroundStart"), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
            
            Text("Configurações\ndo iPhone")
                .font(.system(size: geometry.size.width/16))
                .fontWeight(.bold)
                .foregroundColor(Color("ElementCyanText"))
                .multilineTextAlignment(.leading)
                .padding(EdgeInsets(top: 85, leading:20 , bottom: 10, trailing: 20))
            
            Image("IconCog")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: (geometry.size.width / 4),
                       height: (geometry.size.height / 9))
                .padding(EdgeInsets(top: 0, leading:150 , bottom: 100, trailing: 0))
            
        }
        //.padding(EdgeInsets(top: 63, leading: 0, bottom: 0, trailing: 40))
        }
        //.frame(width: /*@START_MENU_TOKEN@*/300.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/400.0/*@END_MENU_TOKEN@*/)
    }
}

struct testcyan_Previews: PreviewProvider {
    static var previews: some View {
        testcyan()
    }
}
