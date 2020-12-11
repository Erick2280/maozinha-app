//
//  SmallCard.swift
//  Maozinha
//
//  Created by iris on 10/12/20.
//

import SwiftUI

struct SmallCard: View {
    @Binding var colorStart: String
    @Binding var colorEnd: String
    @Binding var title: String
    @Binding var colorTitle: String
    @Binding var sfSymbol: Bool
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
                
                    Text(title)
                        .font(.system(size: geometry.size.width/10))
                        .fontWeight(.bold)
                        .foregroundColor(Color(colorTitle))
                        .multilineTextAlignment(.leading)
                        .padding(EdgeInsets(top: 65, leading:22 , bottom: 28, trailing: 22))
                if (sfSymbol) {
                    Image(systemName: icon)
                        .resizable()
                        .foregroundColor(Color(colorEnd))
                        .aspectRatio(contentMode: .fit)
                        .frame(width: (geometry.size.width / 2.8),
                               height: (geometry.size.height))
                        .padding(EdgeInsets(top: 0, leading:150 , bottom: 90, trailing: 55))
                }
                else{
                    Image(icon)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: (geometry.size.width / 2.8),
                               height: (geometry.size.height))
                        .padding(EdgeInsets(top: 0, leading:150 , bottom: 90, trailing: 55))
                }
                
            }.offset(x: -geometry.size.width / 8)
        }
    }
}

struct SmallCard_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { geometry in
            VStack{
                HStack{
                    SmallCard(colorStart: Binding.constant("ElementPinkBackgroundStart"), colorEnd: Binding.constant("ElementPinkBackgroundEnd"), title: Binding.constant("Navegação e\nsegurança na"), colorTitle: Binding.constant("ElementPinkText"), sfSymbol: Binding.constant(false), icon: Binding.constant("IconBell"))
                        .frame(width: (geometry.size.width / 2.2),
                               height: (geometry.size.height / 6))
                    SmallCard(colorStart: Binding.constant("ElementPinkBackgroundStart"), colorEnd: Binding.constant("ElementPinkBackgroundEnd"), title: Binding.constant("Notificações e\navisos"), colorTitle: Binding.constant("ElementPinkText"), sfSymbol: Binding.constant(false), icon: Binding.constant("IconBell"))
                        .frame(width: (geometry.size.width / 2.2),
                               height: (geometry.size.height / 6))
                }
                .padding(.leading, -10.0)
            }
        }
    }
}
