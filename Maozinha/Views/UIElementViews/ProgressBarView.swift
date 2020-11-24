//
//  ProgressBarView.swift
//  Maozinha
//
//  Created by Erick Almeida on 23/11/20.
//

import SwiftUI

struct ProgressBarView: View {
    @Binding var progress: Double
    
    var body: some View {
        GeometryReader {geometry in
            ZStack(alignment: .leading) {
                Rectangle().frame(width: geometry.size.width, height: geometry.size.height)
                    .foregroundColor(Color("Disabled"))

                Rectangle().frame(width: min(CGFloat(self.progress) * geometry.size.width, geometry.size.width), height: geometry.size.height)
                    .overlay(LinearGradient(gradient: Gradient(colors: [Color("MainGradientStart"), Color("MainGradientEnd")]), startPoint: .leading, endPoint: .trailing))
                    .animation(.easeInOut)
                    .cornerRadius(100.0)

            }.cornerRadius(100.0)
        }
    }
}

struct ProgressBarView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            ProgressBarView(progress: .constant(0.2)).frame(height: 16)
        }.padding()
    }
}
