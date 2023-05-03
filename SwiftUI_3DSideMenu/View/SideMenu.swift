//
//  SideMenu.swift
//  SwiftUI_3DSideMenu
//
//  Created by パク on 2023/05/03.
//

import SwiftUI

struct SideMenu: View {

    @Binding var currentTab: String

    @Namespace var animation

    var body: some View {

        VStack {

            // Top icons
            HStack(spacing: 15) {
                Image("Pic")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 45, height: 45)
                    .clipShape(Circle())

                Text("iJustine")
                    .font(.title2.bold())
                    .foregroundColor(.white)
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)


            ScrollView(showsIndicators: false) {

                // Tab Buttons
                VStack(alignment: .leading, spacing: 25) {

                    CustomTabButton(icon: "theatermasks.fill", title: "Home")

                    CustomTabButton(icon: "safari.fill", title: "Discover")

                    CustomTabButton(icon: "applewatch", title: "Devices")

                    CustomTabButton(icon: "person.fill", title: "Profile")

                    CustomTabButton(icon: "gearshape.fill", title: "Setting")

                    CustomTabButton(icon: "info.circle", title: "About")

                    CustomTabButton(icon: "questionmark.circle.fill", title: "Help")

                    Spacer()

                    CustomTabButton(icon: "rectangle.portrait.and.arrow.right", title: "Logout")
                }
                .padding()
                .padding(.top, 60)
            }
           // .frame(width: getRect().width / 2, alignment: .leading)
            .frame(maxWidth: .infinity, alignment: .leading)

        }
        .padding(.leading, 10)
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .background(
            Color("BG")
        )
    }

    @ViewBuilder
    func CustomTabButton(icon: String, title: String) -> some View {

        Button {

            if title == "Logout" {
                print("do logout")
            } else {
                withAnimation {
                    currentTab = title
                }
            }
        } label: {

            Image(systemName: icon)
                .font(.title3)
                .frame(width: currentTab == title ? 48 : nil, height: 48)
                .foregroundColor(currentTab == title ? Color("Purple") :  title == "Logout" ? Color("Orange") : .white  )
                .background(

                    ZStack {
                        if currentTab == title {
                            Color.white
                                .clipShape(Circle())
                                .matchedGeometryEffect(id: "TAB_CIRCLE", in: animation)
                        }
                    }


                )

            Text(title)
                .font(.callout)
                .fontWeight(.semibold)
                .foregroundColor(title == "Logout" ? Color("Orange") : .white)

        }
        .padding(.trailing)
        .background(
            ZStack {
                if currentTab == title {
                    Color("Purple")
                        .clipShape(Capsule())
                        .matchedGeometryEffect(id: "TAB_SHAPE", in: animation)
                }
            }
        )
        .offset(x: currentTab == title ? 15 : 0)
    }
}

struct SideMenu_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension View {
    func getRect() -> CGRect {
        UIScreen.main.bounds
    }
}
