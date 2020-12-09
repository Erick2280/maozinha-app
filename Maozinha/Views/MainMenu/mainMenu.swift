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
    @State private var title = ["Anúncios na\nInternet",
                                "Notificações e\navisos",
                                "Navegação e\nsegurança na\ninternet",
                                "Configurações\ndo iPhone"]
    @State private var colorTitle = ["ElementGreenText",
                                     "ElementPinkText",
                                     "ElementYellowText",
                                     "ElementCyanText"]
    @State private var threeLines = [false, false, true, false]
    @State private var green = [true, false, false, false, false]
    @State private var yellow = [false, false, true, false]
    @State private var icon = ["IconWindow",
                               "IconBell",
                               "IconGlobe",
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
                    VStack{
                        HStack{
                            NavigationLink(
                                destination: Text("aaaaaaaa"),
                                label: {
                                    card(colorStart: Binding.constant(colorStart[0]), colorEnd: Binding.constant(colorEnd[0]), title: Binding.constant(title[0]), colorTitle: Binding.constant(colorTitle[0]), threeLines: Binding.constant(threeLines[0]), green: Binding.constant(green[0]), yellow: Binding.constant(yellow[0]), icon: Binding.constant(icon[0]))
                                        .frame(width: (geometry.size.width / 2.2),
                                               height: (geometry.size.height / 5))
                                })
                            NavigationLink(
                                destination: Text("bbbbbbbb"),
                                label: {
                                    card(colorStart: Binding.constant(colorStart[1]), colorEnd: Binding.constant(colorEnd[1]), title: Binding.constant(title[1]), colorTitle: Binding.constant(colorTitle[1]), threeLines: Binding.constant(threeLines[1]), green: Binding.constant(green[1]), yellow: Binding.constant(yellow[1]), icon: Binding.constant(icon[1]))
                                        .frame(width: (geometry.size.width / 2.2),
                                               height: (geometry.size.height / 5))
                                })
                        }
                        HStack{
                            NavigationLink(
                                destination: Text("ccccccccc"),
                                label: {
                                    card(colorStart: Binding.constant(colorStart[2]), colorEnd: Binding.constant(colorEnd[2]), title: Binding.constant(title[2]), colorTitle: Binding.constant(colorTitle[2]), threeLines: Binding.constant(threeLines[2]), green: Binding.constant(green[2]), yellow: Binding.constant(yellow[2]), icon: Binding.constant(icon[2]))
                                        .frame(width: (geometry.size.width / 2.2),
                                               height: (geometry.size.height / 5))
                                })
                            NavigationLink(
                                destination: Text("ddddddddd"),
                                label: {
                                    card(colorStart: Binding.constant(colorStart[3]), colorEnd: Binding.constant(colorEnd[3]), title: Binding.constant(title[3]), colorTitle: Binding.constant(colorTitle[3]), threeLines: Binding.constant(threeLines[3]), green: Binding.constant(green[3]), yellow: Binding.constant(yellow[3]), icon: Binding.constant(icon[3]))
                                        .frame(width: (geometry.size.width / 2.2),
                                               height: (geometry.size.height / 5))
                                })
                        }
                        .padding(.top, 40)
                    }
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
