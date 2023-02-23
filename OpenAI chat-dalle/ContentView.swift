//
//  ContentView.swift
//  OpenAI chat-dalle
//
//  Created by kz on 07/02/2023.
//

import SwiftUI
import SlidingTabView

struct ContentView: View {
    
    @State private var selectedTabIndex = 0

    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                SlidingTabView(selection: self.$selectedTabIndex, tabs: ["CHAT BOT", "DALL-E 2"], animation: .easeInOut, activeAccentColor: .white, inactiveAccentColor: .gray, selectionBarColor: .white)

                if selectedTabIndex == 0 {
                    ChatBotView()
                }
                else {
                    DalleView()
                }



                Spacer()
            }
            .background(Color(red: 53/255, green: 54/255, blue: 65/255))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
