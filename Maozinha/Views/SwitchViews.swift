//
//  SwitchViews.swift
//  Maozinha
//
//  Created by iris on 10/12/20.
//

import SwiftUI

struct SwitchViews: View {
    var body: some View {
        GeometryReader { proxy in
            
            if (proxy.size.height == 734.0 || proxy.size.height == 763.0 || proxy.size.height == 728.0){
                BigIntroScreenView()
            }
            else if (proxy.size.height > 716) { //iPhone 8 plus resolution in points
                introScreenView()
//                Print("------- tamanho do height ---------")
//                Print(proxy.size.height)
//                Print("-----------------------------------")
            }
            else {
                SmallintroScreenView()
//                Print("------- tamanho do height ---------")
//                Print(proxy.size.height)
//                Print("-----------------------------------")
            }
        }
    }
}

struct SwitchViews_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SwitchViews()
            SwitchViews()
                .previewDevice("iPhone 11")
        }
    }
}
extension View {
    func Print(_ vars: Any...) -> some View {
        for v in vars { print(v) }
        return EmptyView()
    }
}
