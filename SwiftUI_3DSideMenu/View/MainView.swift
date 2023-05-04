//
//  MainView.swift
//  SwiftUI_3DSideMenu
//
//  Created by パク on 2023/05/03.
//

import SwiftUI

struct MainView: View {

    @State var currentTab: String = "Home"

    @State var showMenu: Bool = false

    init() {
        // TabView使用時、下の navitaionTabBarを隠す
        UITabBar.appearance().isHidden = true
    }


    var body: some View {

        ZStack {
            SideMenu(currentTab: $currentTab)

            CustomTabView(currentTab: $currentTab, showMenu: $showMenu)
                .cornerRadius(showMenu ? 25 : 0)
                .rotation3DEffect(.init(degrees: showMenu ? -15 : 0), axis: (x: 0, y: 1, z: 0))
                .offset(x: showMenu ? getRect().width / 2 : 0)
        }
        // ダークモード固定
        .preferredColorScheme(.dark)
        .ignoresSafeArea()
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
