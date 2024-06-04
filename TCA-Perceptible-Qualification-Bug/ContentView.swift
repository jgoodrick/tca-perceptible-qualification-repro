//
//  ContentView.swift
//  TCA-Perceptible-Qualification-Bug
//
//  Created by Joseph Goodrick on 6/4/24.
//

import ComposableArchitecture
import SwiftUI

@Reducer
struct AppRoot {
    @ObservableState
    struct State: Equatable {
        var text: String = ""
    }
    enum Action: BindableAction {
        case binding(BindingAction<State>)
    }
    var body: some Reducer<State, Action> {
        Reduce<State, Action> { state, action in
            switch action {
            case .binding: return .none
            }
        }
    }
}

struct AppRootView: View {
    
    @Bindable var store: StoreOf<AppRoot>
    
    var body: some View {
        VStack {
            TextField("Field", text: $store.text)
        }
        .padding()
    }
}

#Preview { Preview }
private var Preview: some View {
    AppRootView()
}
