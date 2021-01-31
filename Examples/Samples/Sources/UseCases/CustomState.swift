//
//  CustomStateSample.swift
//  Samples
//
//  Created by Shin Yamamoto on 2021/01/31.
//  Copyright © 2021 scenee. All rights reserved.
//

import Foundation
import FloatingPanel

class FloatingPanelLayoutWithCustomState: FloatingPanelBottomLayout {
    private struct AdditionalState {
        static let lastQuart: FloatingPanelState = FloatingPanelState(rawValue: "lastQuart", order: 750)
        static let firstQuart: FloatingPanelState = FloatingPanelState(rawValue: "firstQuart", order: 250)
    }
    override var anchors: [FloatingPanelState: FloatingPanelLayoutAnchoring] {
        return [
            .full: FloatingPanelLayoutAnchor(absoluteInset: 0.0, edge: .top, referenceGuide: .safeArea),
            AdditionalState.lastQuart: FloatingPanelLayoutAnchor(fractionalInset: 0.75, edge: .bottom, referenceGuide: .safeArea),
            .half: FloatingPanelLayoutAnchor(fractionalInset: 0.5, edge: .bottom, referenceGuide: .safeArea),
            AdditionalState.firstQuart: FloatingPanelLayoutAnchor(fractionalInset: 0.25, edge: .bottom, referenceGuide: .safeArea),
            .tip: FloatingPanelLayoutAnchor(absoluteInset: 20.0, edge: .bottom, referenceGuide: .safeArea),
        ]
    }
}

