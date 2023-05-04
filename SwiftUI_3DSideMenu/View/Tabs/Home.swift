//
//  Home.swift
//  SwiftUI_3DSideMenu
//
//  Created by パク on 2023/05/04.
//

import SwiftUI

struct Home: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack( alignment: .leading, spacing: 15) {

                Image("Pic")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: getRect().width - 30, height: 250)
                    .cornerRadius(20)

                Text("Tech, YouTuber, Apple Fan, etc..")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            .padding()
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
