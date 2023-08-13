//
//  VideoView.swift
//  Test
//
//  Created by Алексей Колыченков on 12.08.2023.
//

import SwiftUI

struct VideoView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    @Binding var videoTitle: String
    @Binding var videoDescription: String

    @EnvironmentObject var channelData: ChannelModel

    var body: some View {
        NavigationStack {
            VStack() {
                TextField("Video title", text: $videoTitle)
                TextField("Video description", text: $videoDescription)
                Divider()
                Button(action: { 
                    self.presentationMode.wrappedValue.dismiss()
                },
                       label: { Text("Dismiss this VC") })
                Spacer()
            }.padding()
                .navigationTitle("\(channelData.channelName)")

        }

    }
}

