//
//  test.swift
//  Maozinha
//
//  Created by iris on 04/12/20.
//

import SwiftUI

struct test: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack{
                Rectangle()
                    .fill(LinearGradient(gradient: Gradient(colors: [Color("ElementPinkBackgroundStart"), Color("ElementPinkBackgroundEnd")]), startPoint: .top, endPoint: .bottom))
                    .frame(width: (geometry.size.width * 14 / 15),
                           height: (geometry.size.height))
                    .cornerRadius(25)
                    .shadow(color: Color("ElementPinkBackgroundStart"), radius: 10, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                
                Text("Notificações e\navisos")
                    .font(.system(size: geometry.size.width/9))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ElementPinkText"))
                    .multilineTextAlignment(.leading)
                    .padding(EdgeInsets(top: 85, leading:22 , bottom: 28, trailing: 22))
                
                Image("IconBell")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: (geometry.size.width / 2.5),
                           height: (geometry.size.height))
                    .padding(EdgeInsets(top: 0, leading:150 , bottom: 100, trailing: 40))
                
            }.offset(x: -geometry.size.width / 8)
        }
    }
}

struct test_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { geometry in
            VStack{
                HStack{
                    test()
                        .frame(width: (geometry.size.width / 2.2),
                               height: (geometry.size.height / 6))
                    test()
                        .frame(width: (geometry.size.width / 2.2),
                               height: (geometry.size.height / 6))
                }
            }
        }
    }
}
