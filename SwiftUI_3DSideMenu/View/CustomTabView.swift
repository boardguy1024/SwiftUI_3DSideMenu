//
//  CustomTabView.swift
//  SwiftUI_3DSideMenu
//
//  Created by パク on 2023/05/03.
//

import SwiftUI

struct CustomTabView: View {

    @Binding var currentTab: String
    @Binding var showMenu: Bool

    var body: some View {

        VStack {

            // header menu and profile image
            HStack {
                Button {
                    withAnimation(.spring()) {
                        showMenu.toggle()
                    }
                } label: {
                    withAnimation {
                        Image(systemName: showMenu ? "xmark" : "line.3.horizontal.decrease")
                            .font(.title2.bold())
                            .foregroundColor(.white)
                    }
                }

                Spacer()

                Button {

                } label: {
                    Image("Pic")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 35, height: 35)
                        .cornerRadius(6)
                }
            }
            .padding(.top, getSafeArea().top)
            .padding(.horizontal)
            .padding(.bottom, 8)


            TabView(selection: $currentTab) {

                Home()
                    .tag("Home")

                Discover()
                    .tag("Discover")

                Text("Devices")
                    .tag("Devices")

                Text("Profile")
                    .tag("Profile")
            }
            .disabled(showMenu)

        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
            Color.black
        )
    }
}

struct CustomTabView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
