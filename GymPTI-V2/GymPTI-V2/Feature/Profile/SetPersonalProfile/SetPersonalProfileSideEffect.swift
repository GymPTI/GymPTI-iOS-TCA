//
//  SetPersonalProfileSideEffect.swift
//  GymPTI-V2
//
//  Created by 이민규 on 2023/09/27.
//

import LinkNavigator

public protocol SetPersonalProfileSideEffect {
    
    var onTapBackButton: () -> Void { get }
}

public struct SetPersonalProfileSideEffectLive {
    
    let navigator: LinkNavigatorType
    
    public init(navigator: LinkNavigatorType) {
        self.navigator = navigator
    }
}

extension SetPersonalProfileSideEffectLive: SetPersonalProfileSideEffect {
    
    public var onTapBackButton: () -> Void {
        {
            navigator.back(isAnimated: true)
        }
    }
}
