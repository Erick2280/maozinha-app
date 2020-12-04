//
//  mainMenu.swift
//  Maozinha
//
//  Created by iris on 04/12/20.
//

import SwiftUI

struct mainMenu: View {
    var body: some View {
        VStack{
            HStack{
                Text("O que vamos \naprender hoje?")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color("TitleText"))
                    .padding(.leading, 22.0)
                Spacer()
            }
            GeometryReader { geometry in
                VStack{
                    HStack{
                        testcyan()
                            .frame(width: (geometry.size.width / 2.2),
                                   height: (geometry.size.height / 5))
                        test()
                            .frame(width: (geometry.size.width / 2.2),
                                   height: (geometry.size.height / 5))
                    }
                }
            }
        }
    }
}

struct mainMenu_Previews: PreviewProvider {
    static var previews: some View {
        mainMenu()
    }
}
