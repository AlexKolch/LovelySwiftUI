//
//  VideoModel.swift
//  Test
//
//  Created by Алексей Колыченков on 12.08.2023.
//

import Combine

final class VideoModel: ObservableObject {
    @Published var title: String = "Avocado"
    @Published var decription: String = "Big size"
}
