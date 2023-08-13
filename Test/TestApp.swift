//
//  TestApp.swift
//  Test
//
//  Created by Алексей Колыченков on 12.08.2023.
//

import SwiftUI

@main
struct TestApp: App {

    let channelData = ChannelModel()

    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(channelData)
        }
    }
}
