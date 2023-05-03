//
//  MainView.swift
//  SwiftUI_3DSideMenu
//
//  Created by パク on 2023/05/03.
//

import SwiftUI

struct MainView: View {

    @State var currentTab: String = "Home"

    var body: some View {

        ZStack {
            SideMenu(currentTab: $currentTab)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
