//
//  nfo_genApp.swift
//  nfo-gen
//
//  Created by johyukjun on 2023/09/01.
//

import SwiftUI

@main
struct nfo_genApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .frame(minWidth: 720, idealWidth: 1920, maxWidth: 3840,
                       minHeight: 480, idealHeight: 1080, maxHeight: 2160,
                       alignment: .center)
        }
    }
}
