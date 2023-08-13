//
//  ChannelView.swift
//  Test
//
//  Created by Алексей Колыченков on 12.08.2023.
//

import SwiftUI

struct ChannelView: View {

    @EnvironmentObject var channelData: ChannelModel

    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    var body: some View {
        NavigationStack {
            VStack() {
                TextField("Channel name", text: $channelData.channelName) ///при вводе будут обновляться все view в которых есть св-во channelData
                Divider()
                Button(action: { self.presentationMode.wrappedValue.dismiss() },
                       label: { Text("Dismiss this VC") })
                Spacer()
            }.padding()
                .navigationTitle("\(channelData.channelName)")
        }
    }
}

struct ChannelView_Previews: PreviewProvider {
    static var previews: some View {
        ChannelView()
    }
}
