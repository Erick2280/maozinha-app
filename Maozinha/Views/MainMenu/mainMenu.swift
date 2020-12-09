//
//  mainMenu.swift
//  Maozinha
//
//  Created by iris on 04/12/20.
//

import SwiftUI

struct mainMenu: View {
    
    @State private var colorStart = ["ElementGreenBackgroundStart",
                                     "ElementPinkBackgroundStart",
                                     "ElementYellowBackgroundStart",
                                     "ElementCyanBackgroundStart"]
    @State private var colorEnd = ["ElementGreenBackgroundEnd",
                                   "ElementPinkBackgroundEnd",
                                   "ElementYellowBackgroundEnd",
                                   "ElementCyanBackgroundEnd"]
    @State private var title = ["Telefone e         \nMensagens",
                                "Notificações e\navisos",
                                "Navegação       \nno iPhone",
                                "Configurações\ndo iPhone"]
    @State private var colorTitle = ["ElementGreenText",
                                     "ElementPinkText",
                                     "ElementYellowText",
                                     "ElementCyanText"]
    @State private var sfSymbol = [true, false, true, false]
    @State private var icon = ["phone.fill",
                               "IconBell",
                               "hand.point.up.left.fill",
                               "IconCog"]
    
    var body: some View {
        NavigationView{
            VStack{
                HStack{
                    Text("O que vamos \naprender hoje?")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color("TitleText"))
                        .padding([.top, .leading], 22.0)
                    Spacer()
                }
                GeometryReader { geometry in
                    VStack(){
                        HStack(alignment: .bottom, spacing: 15.0){
                            NavigationLink(
                                destination: PhoneCallTutorialView()
                                    .navigationBarHidden(true),
                                label: {
                                    card(colorStart: Binding.constant(colorStart[0]), colorEnd: Binding.constant(colorEnd[0]), title: Binding.constant(title[0]), colorTitle: Binding.constant(colorTitle[0]), sfSymbol: Binding.constant(sfSymbol[0]) , icon: Binding.constant(icon[0]))
                                        .frame(width: (geometry.size.width / 2.2),
                                               height: (geometry.size.height / 5))
                                        .padding(.bottom, 55.0)
                                        .padding(.top, -40.0)
                                        .padding(.leading, -20)
                                        .padding(.trailing, 15)
                                })
                            
                            NavigationLink(
                                destination: NotDisturbTutorialView()
                                    .navigationBarHidden(true),
                                label: {
                                    card(colorStart: Binding.constant(colorStart[1]), colorEnd: Binding.constant(colorEnd[1]), title: Binding.constant(title[1]), colorTitle: Binding.constant(colorTitle[1]),sfSymbol: Binding.constant(sfSymbol[1]), icon: Binding.constant(icon[1]))
                                        .frame(width: (geometry.size.width / 2.2),
                                               height: (geometry.size.height / 5))
                                        .padding(.bottom, 55.0)
                                        .padding(.top, -40.0)
                                        .padding(.leading, -20)
                                        .padding(.trailing, 15)
                                })
                        }
                        HStack(alignment: .bottom, spacing: 15.0){
                            NavigationLink(
                                destination: Text("ccccccccc"),
                                label: {
                                    card(colorStart: Binding.constant(colorStart[2]), colorEnd: Binding.constant(colorEnd[2]), title: Binding.constant(title[2]), colorTitle: Binding.constant(colorTitle[2]), sfSymbol: Binding.constant(sfSymbol[2]), icon: Binding.constant(icon[2]))
                                        .frame(width: (geometry.size.width / 2.2),
                                               height: (geometry.size.height / 5))
                                        .padding(.bottom, 55.0)
                                        .padding(.top, -40.0)
                                        .padding(.leading, -20)
                                        .padding(.trailing, 15)
                                })
                            
                            NavigationLink(
                                destination: ChangeFontSettingsTutorialView()
                                    .navigationBarHidden(true),
                                label: {
                                    card(colorStart: Binding.constant(colorStart[3]), colorEnd: Binding.constant(colorEnd[3]), title: Binding.constant(title[3]), colorTitle: Binding.constant(colorTitle[3]), sfSymbol: Binding.constant(sfSymbol[3]), icon: Binding.constant(icon[3]))
                                        .frame(width: (geometry.size.width / 2.2),
                                               height: (geometry.size.height / 5))
                                        .padding(.bottom, 55.0)
                                        .padding(.top, -40.0)
                                        .padding(.leading, -20)
                                        .padding(.trailing, 15)
                                })
                        }
                        .padding(.top, 20.0)
                    }
                    .padding(.top, 15.0)
                    .padding([.top, .leading, .trailing], 19.0)
                }
            }.navigationBarHidden(true)
        }
    }
}

struct mainMenu_Previews: PreviewProvider {
    static var previews: some View {
        mainMenu()
    }
}
