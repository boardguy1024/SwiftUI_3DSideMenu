//
//  Discover.swift
//  SwiftUI_3DSideMenu
//
//  Created by パク on 2023/05/04.
//

import SwiftUI

struct Discover: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {

            ZStack(alignment: .center) {
                Image("BG1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)

                Text("Find what you want")
                    .font(.title2)
                    .foregroundColor(.white)
                    .shadow(radius: 10)
            }
        }
    }
}

struct Discover_Previews: PreviewProvider {
    static var previews: some View {
        Discover()
    }
}
