//
//  TCA_Perceptible_Qualification_BugApp.swift
//  TCA-Perceptible-Qualification-Bug
//
//  Created by Joseph Goodrick on 6/4/24.
//

import ComposableArchitecture
import SwiftUI

@main
struct TCA_Perceptible_Qualification_BugApp: App {
    
    static let store: StoreOf<AppRoot> = .init(
        initialState: .init(),
        reducer: {
            AppRoot()
        }
    )
    
    var body: some Scene {
        WindowGroup {
            AppRootView(store: Self.store)
        }
    }
}
