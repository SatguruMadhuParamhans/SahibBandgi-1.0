//
//  AboutView.swift
//  SahibBandgi 1.0
//
//  Created by Sahibji on 17/01/23.
//

import SwiftUI

struct AshramContactsView: View {
    @State private var showingMenu = false
    var body: some View {
        ZStack {
            
            Color.red.edgesIgnoringSafeArea(
                .all)
            VStack(alignment: .leading) {
                Button(action: {self.showingMenu.toggle()}) {
                    Image(systemName: "line.horizontal.3")
                        .foregroundColor(.white)
                }
                .frame(width: 50.0, height: 50.0)
                Spacer()
                Text("This Is Profile")
                    .font(
                        .largeTitle)
                    .foregroundColor(
                        .white)
                    .frame(maxWidth: .infinity)
                Spacer()
            }.padding(.horizontal) .frame(maxWidth: .infinity)
        }
        .offset(x: showingMenu ? 200.0 : 0.0, y: 0)
        .animation(.easeOut)
    }
}

struct AshramContactsView_Previews: PreviewProvider {
    static var previews: some View {
        AshramContactsView()
    }
}
