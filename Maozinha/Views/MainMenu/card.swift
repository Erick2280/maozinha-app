//
//  card.swift
//  Maozinha
//
//  Created by iris on 04/12/20.
//

import SwiftUI

struct card: View {
    
    @Binding var colorStart: String
    @Binding var colorEnd: String
    @Binding var title: String
    @Binding var colorTitle: String
    @Binding var threeLines: Bool
    @Binding var green: Bool
    @Binding var yellow: Bool
    @Binding var icon: String
    
    var body: some View {
        GeometryReader { geometry in
            ZStack{
                Rectangle()
                    .fill(LinearGradient(gradient: Gradient(colors: [Color(colorStart), Color(colorEnd)]), startPoint: .top, endPoint: .bottom))
                    .frame(width: (geometry.size.width * 14 / 15),
                           height: (geometry.size.height))
                    .cornerRadius(25)
                    .shadow(color: Color(colorStart), radius: 10, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                
                if(threeLines) {
                    Text(title)
                        .font(.system(size: geometry.size.width/9))
                        .fontWeight(.bold)
                        .foregroundColor(Color(colorTitle))
                        .multilineTextAlignment(.leading)
                        .padding(EdgeInsets(top: 60, leading:22 , bottom: 28, trailing: 22))
                    
                }
                else {
                    Text(title)
                        .font(.system(size: geometry.size.width/9))
                        .fontWeight(.bold)
                        .foregroundColor(Color(colorTitle))
                        .multilineTextAlignment(.leading)
                        .padding(EdgeInsets(top: 85, leading:22 , bottom: 28, trailing: 22))
                }
                if (green) {
                    Image(icon)
                        .resizable()
                        .background(Color(colorStart))
                        .cornerRadius(/*@START_MENU_TOKEN@*/9.0/*@END_MENU_TOKEN@*/)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: (geometry.size.width / 2.5),
                               height: (geometry.size.height))
                        .padding(EdgeInsets(top: 0, leading:150 , bottom: 110, trailing: 40))
                }
                else if (yellow) {
                    Image(icon)
                        .resizable()
                        .background(Color(colorStart))
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: (geometry.size.width / 2.5),
                               height: (geometry.size.height))
                        .padding(EdgeInsets(top: 0, leading:150 , bottom: 110, trailing: 40))
                }
                else{
                    Image(icon)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: (geometry.size.width / 2.5),
                               height: (geometry.size.height))
                        .padding(EdgeInsets(top: 0, leading:150 , bottom: 110, trailing: 40))
                }
                
            }.offset(x: -geometry.size.width / 8)
        }
    }
}


struct card_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { geometry in
            VStack{
                HStack{
                    card(colorStart: Binding.constant("ElementPinkBackgroundStart"), colorEnd: Binding.constant("ElementPinkBackgroundEnd"), title: Binding.constant("Navegação e\nsegurança na\ninternet"), colorTitle: Binding.constant("ElementPinkText"), threeLines: Binding.constant(true), green: Binding.constant(false), yellow: Binding.constant(false), icon: Binding.constant("IconBell"))
                        .frame(width: (geometry.size.width / 2.2),
                               height: (geometry.size.height / 6))
                    card(colorStart: Binding.constant("ElementPinkBackgroundStart"), colorEnd: Binding.constant("ElementPinkBackgroundEnd"), title: Binding.constant("Notificações e\navisos"), colorTitle: Binding.constant("ElementPinkText"), threeLines: Binding.constant(false), green: Binding.constant(false), yellow: Binding.constant(false), icon: Binding.constant("IconBell"))
                        .frame(width: (geometry.size.width / 2.2),
                               height: (geometry.size.height / 6))
                }
            }
        }
    }
}
