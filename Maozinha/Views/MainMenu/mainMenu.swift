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
            VStack{
                HStack{
                    //greenCard()
                    //pinkCard()
                    test()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300, height: 900)
                    testcyan()
                    
                    
                }
                //HStack{
                   // yellowCard()
                   // cyanCard()
                    
                //}
            }
        }
    }
}

struct mainMenu_Previews: PreviewProvider {
    static var previews: some View {
        mainMenu()
    }
}
