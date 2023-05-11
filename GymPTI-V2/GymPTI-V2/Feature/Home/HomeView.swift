//
//  HomeView.swift
//  GymPTI-V2
//
//  Created by 이민규 on 2023/05/10.
//

import SwiftUI
import ComposableArchitecture

public struct HomeView {
    
    private let store: StoreOf<Home>
    @ObservedObject var viewStore: ViewStoreOf<Home>
    
    public init(store: StoreOf<Home>) {
        self.store = store
        viewStore = ViewStore(store)
    }
}

extension HomeView: View {
    
    public var body: some View {
        
        VStack {
            Button("홈") {
                viewStore.send(.tabButton)
            }
        }
        .padding()
    }
}
