//
//  ContentView.swift
//  Test
//
//  Created by Алексей Колыченков on 12.08.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var showVideoView = false
    @ObservedObject var videoData = VideoModel()
    @EnvironmentObject var channelData: ChannelModel

    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                GeometryReader { geometry in ///чтобы разместить объект в половину экрана
                    HStack(spacing: 20.0) {
                        NavigationLink(destination: ChannelView(), label: { Text("Edit Channel") } ).frame(width: geometry.size.width / 2 - 20, height: 50)
                            .accentColor(Color(.cyan))
                            .background(Color(.gray))
                            .cornerRadius(10)

                        Button(action: { 
                            self.showVideoView.toggle() },
                               label: { Text("Edit content") })
                        .frame(width: geometry.size.width / 2 - 20, height: 50)
                        .sheet(isPresented: $showVideoView, content: { VideoView(videoTitle: self.$videoData.title, videoDescription: self.$videoData.decription).environmentObject(self.channelData)
                            //environmentObject передаем обязательно для navigationTitle
                        }) //переход модально
                               .accentColor(Color(.cyan))
                               .background(Color(.gray))
                               .cornerRadius(10)

                    } .padding(.leading, 10)
                }.frame(height: 50).padding()
                Divider() 
                HStack() {
                    Image("avocado").resizable().frame(width: 120, height: 120).padding()
                    VStack(alignment: .leading) {
                        Text("\(videoData.title)").font(.title)
                        Text("\(videoData.decription)").font(.subheadline).foregroundColor(.gray)
                    }
                }
                Spacer()
            }
            .navigationTitle("\(channelData.channelName)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
